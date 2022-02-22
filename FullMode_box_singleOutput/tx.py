#Create by: Carlos B. Montiel
#			
#Institution: FIUNA Paraguay
#File Name: Full Mode box single output.
#Version: 3.0a

from migen import *
from fsm import Fsm
from control import CONTROL
from crc import TxParallelCrcGenerator
from litex.soc.cores.code_8b10b import Encoder
from migen.genlib.cdc import MultiReg
from migen.fhdl import verilog
class TX(Module):
	def __init__(self):
		self.link_ready=Signal()
		self.data_in=Signal(32)
		self.data_type_in=Signal(2)
		self.data_out=Signal(32)
		self.fifo_empty=Signal()
		self.fifo_re=Signal()
		#self.tx_init_done=Signal()
		self.k=Signal()
		self.fromCRC = Signal(20)
		self.toCRC = Signal(32)
		self.crcstrobe = Signal()
		self.crcreset = Signal()

		#  #  #
		da = Signal(32)
		db = Signal(32)
		dta = Signal(2)
		dtb = Signal(2)
		crc_delay = Signal(20)
		stream_controller=Fsm()
		crc_control=CONTROL()
		self.submodules+=[stream_controller,crc_control]
		self.comb+=[
			stream_controller.link_ready.eq(self.link_ready),
			stream_controller.fifo_empty.eq(self.fifo_empty),
			crc_control.fifo_empty.eq(self.fifo_empty),
			stream_controller.data_type.eq(self.data_type_in),
			crc_control.data_type.eq(self.data_type_in),
			stream_controller.data_typeb.eq(dtb),
			stream_controller.tx_init_done.eq(self.link_ready),
			self.fifo_re.eq(crc_control.fifo_re),
			crc_control.fsm_done.eq(stream_controller.fsm_done),
			self.crcstrobe.eq(crc_control.strobe_crc),
			self.crcreset.eq(crc_control.reset_crc),
			If(stream_controller.encoder_ready,
				self.toCRC.eq(self.data_in),
			),
			
		]
		
		self.comb+=[ 
			If(stream_controller.idle,
				self.data_out.eq(0xBC),
				self.k.eq(1)
			),
			If(stream_controller.sop, 
				self.data_out.eq(0x3C),
				self.k.eq(1)
			),

			If((stream_controller.intermediate),
				self.data_out.eq(db)
			),
			If(stream_controller.ign,
				self.data_out.eq(0x5C),
				self.k.eq(1)
			),
			If(stream_controller.eop,                  
				self.data_out.eq(Cat(0xDC,crc_delay)),
				self.k.eq(1)
			),
			If((~stream_controller.idle)&(~stream_controller.eop)&(~stream_controller.sop)&(~stream_controller.ign),
				self.k.eq(0)	
			),
			
		]

		self.sync+= [
			da.eq(self.data_in),
			dta.eq(self.data_type_in),
			db.eq(da),
			dtb.eq(dta),
			crc_delay.eq(self.fromCRC)
		]

"""
dut = TX()   
verilog.convert(dut, {dut.link_ready,dut.data_in, dut.data_type_in,
    dut.data_out, dut.fifo_empty, dut.k, dut.toCRC,
    dut.fromCRC, dut.fifo_re, dut.crcreset, dut.crcstrobe}).write("FMSC.v")
"""
