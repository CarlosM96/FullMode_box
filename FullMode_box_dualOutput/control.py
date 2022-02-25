#Create by: Carlos B. Montiel
#
#Institution: FIUNA Paraguay
#File Name: control.py
#Version: 2.0a

from migen import *
class CONTROL(Module):
	def __init__(self):
		#inputs
		self.data_type=Signal(2)
		self.fsm_done=Signal()
		self.fifo_empty=Signal()
		#outputs
		self.strobe_crc=Signal()
		self.reset_crc=Signal()
		self.fifo_re=Signal()

		self.submodules.control=FSM(reset_state="INIT")
		self.control.act("INIT",
			If(~self.fifo_empty,
				self.fifo_re.eq(1),
				If(self.data_type == 1,
					self.strobe_crc.eq(1),
					self.reset_crc.eq(0),
					NextState("TRANSMITION")
				).Else(
				NextState("INIT"),
				self.reset_crc.eq(1)
				)
			)) 
		self.control.act("TRANSMITION",
			self.fifo_re.eq(1),
			Case(self.data_type,{
				#Intermediate word
				0:[ 
					self.strobe_crc.eq(1),
					self.reset_crc.eq(0),
					NextState("TRANSMITION")
				],
				#Last word (EOP)
				2:[	
					self.strobe_crc.eq(1),
					self.reset_crc.eq(0),
					NextState("END")
				],
				#Ignored
				3:[
					self.strobe_crc.eq(0),
					NextState("TRANSMITION")
				]
			}),
			)
		self.control.act("END",
			self.fifo_re.eq(0),
			self.strobe_crc.eq(0),
			self.reset_crc.eq(1),
			If(self.fsm_done,
				NextState("INIT")
			).Else(
				NextState("END")
			)
			)