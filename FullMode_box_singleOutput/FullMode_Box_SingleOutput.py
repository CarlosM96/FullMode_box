#Create by: Carlos B. Montiel
#			Oscar Baez
#			Ivan Gonzales
#Institution: FIUNA Paraguay
#File Name: Full Mode box single output.
#Version: 1.0a

from migen import *
from crc import TxParallelCrcGenerator
from migen.fhdl import verilog
from tx import TX
from MUX_40_CH import MUX_40_CH
from reading_control40 import reading_control40


class FullMode_Box_SingleOutput(Module):
	def __init__(self):
		#inputs
		self.data_FIFO_0 = Signal(34)
		self.data_FIFO_1 = Signal(34)
		self.data_FIFO_2 = Signal(34)
		self.data_FIFO_3 = Signal(34)
		self.data_FIFO_4 = Signal(34)
		self.data_FIFO_5 = Signal(34)
		self.data_FIFO_6 = Signal(34)
		self.data_FIFO_7 = Signal(34)
		self.data_FIFO_8 = Signal(34)
		self.data_FIFO_9 = Signal(34)
		self.data_FIFO_10 = Signal(34)
		self.data_FIFO_11 = Signal(34)
		self.data_FIFO_12 = Signal(34)
		self.data_FIFO_13 = Signal(34)
		self.data_FIFO_14 = Signal(34)
		self.data_FIFO_15 = Signal(34)
		self.data_FIFO_16 = Signal(34)
		self.data_FIFO_17 = Signal(34)
		self.data_FIFO_18 = Signal(34)
		self.data_FIFO_19 = Signal(34)
		self.data_FIFO_20 = Signal(34)
		self.data_FIFO_21 = Signal(34)
		self.data_FIFO_22 = Signal(34)
		self.data_FIFO_23 = Signal(34)
		self.data_FIFO_24 = Signal(34)
		self.data_FIFO_25 = Signal(34)
		self.data_FIFO_26 = Signal(34)
		self.data_FIFO_27 = Signal(34)
		self.data_FIFO_28 = Signal(34)
		self.data_FIFO_29 = Signal(34)
		self.data_FIFO_30 = Signal(34)
		self.data_FIFO_31 = Signal(34)
		self.data_FIFO_32 = Signal(34)
		self.data_FIFO_33 = Signal(34)
		self.data_FIFO_34 = Signal(34)
		self.data_FIFO_35 = Signal(34)
		self.data_FIFO_36 = Signal(34)
		self.data_FIFO_37 = Signal(34)
		self.data_FIFO_38 = Signal(34)
		self.data_FIFO_39 = Signal(34)
		self.FIFO_empty_IN = Signal(40)		# 40 fifo_empty input signals vector
		self.link_ready = Signal()			# MGT_TX_init_done (or TX_rst_done)
		#output
		self.data_to_GTP= Signal(32)		# data to GTP in Full Mode Format
		self.FIFO_re_OUT = Signal(40)		# 40 fifo_re output signals vector
		self.k_o = Signal()					# Special Character k flag for 8b/10b GTP encoder

		crc_delay = Signal(20)				# aux signal

		Mux40 = MUX_40_CH()
		readControl = reading_control40()
		FMSC = TX()
		CRC = TxParallelCrcGenerator(data_width=32, crc_width=20, polynomial=0x8359f, initial=0xfffff)

		self.submodules+=[Mux40,readControl,FMSC, CRC]

		self.comb+= [
			Mux40.data_FIFO_0.eq(self.data_FIFO_0),
			Mux40.data_FIFO_1.eq(self.data_FIFO_1),
			Mux40.data_FIFO_2.eq(self.data_FIFO_2),
			Mux40.data_FIFO_3.eq(self.data_FIFO_3),
			Mux40.data_FIFO_4.eq(self.data_FIFO_4),
			Mux40.data_FIFO_5.eq(self.data_FIFO_5),
			Mux40.data_FIFO_6.eq(self.data_FIFO_6),
			Mux40.data_FIFO_7.eq(self.data_FIFO_7),
			Mux40.data_FIFO_8.eq(self.data_FIFO_8),
			Mux40.data_FIFO_9.eq(self.data_FIFO_9),
			Mux40.data_FIFO_10.eq(self.data_FIFO_10),
			Mux40.data_FIFO_11.eq(self.data_FIFO_11),
			Mux40.data_FIFO_12.eq(self.data_FIFO_12),
			Mux40.data_FIFO_13.eq(self.data_FIFO_13),
			Mux40.data_FIFO_14.eq(self.data_FIFO_14),
			Mux40.data_FIFO_15.eq(self.data_FIFO_15),
			Mux40.data_FIFO_16.eq(self.data_FIFO_16),
			Mux40.data_FIFO_17.eq(self.data_FIFO_17),
			Mux40.data_FIFO_18.eq(self.data_FIFO_18),
			Mux40.data_FIFO_19.eq(self.data_FIFO_19),
			Mux40.data_FIFO_20.eq(self.data_FIFO_20),
			Mux40.data_FIFO_21.eq(self.data_FIFO_21),
			Mux40.data_FIFO_22.eq(self.data_FIFO_22),
			Mux40.data_FIFO_23.eq(self.data_FIFO_23),
			Mux40.data_FIFO_24.eq(self.data_FIFO_24),
			Mux40.data_FIFO_25.eq(self.data_FIFO_25),
			Mux40.data_FIFO_26.eq(self.data_FIFO_26),
			Mux40.data_FIFO_27.eq(self.data_FIFO_27),
			Mux40.data_FIFO_28.eq(self.data_FIFO_28),
			Mux40.data_FIFO_29.eq(self.data_FIFO_29),
			Mux40.data_FIFO_30.eq(self.data_FIFO_30),
			Mux40.data_FIFO_31.eq(self.data_FIFO_31),
			Mux40.data_FIFO_32.eq(self.data_FIFO_32),
			Mux40.data_FIFO_33.eq(self.data_FIFO_33),
			Mux40.data_FIFO_34.eq(self.data_FIFO_34),
			Mux40.data_FIFO_35.eq(self.data_FIFO_35),
			Mux40.data_FIFO_36.eq(self.data_FIFO_36),
			Mux40.data_FIFO_37.eq(self.data_FIFO_37),
			Mux40.data_FIFO_38.eq(self.data_FIFO_38),
			Mux40.data_FIFO_39.eq(self.data_FIFO_39),
			Mux40.FIFO_empty_IN.eq(self.FIFO_empty_IN),
			Mux40.sel_in.eq(readControl.select),
			self.FIFO_re_OUT.eq(Mux40.FIFO_re_OUT),
			Mux40.FIFO_re_IN.eq(FMSC.fifo_re),
			###
			readControl.tx_init.eq(self.link_ready),
			readControl.data_type.eq(Mux40.dtype_out),
			readControl.fifo_empty.eq(Mux40.FIFO_empty_OUT),
			###
			FMSC.link_ready.eq(self.link_ready),
			FMSC.data_in.eq(Mux40.data_out),
			FMSC.data_type_in.eq(Mux40.dtype_out),
			FMSC.fifo_empty.eq(Mux40.FIFO_empty_OUT),
			self.data_to_GTP.eq(FMSC.data_out),
			self.k_o.eq(FMSC.k),
			FMSC.fromCRC.eq(crc_delay),
			CRC.i_data_strobe.eq(FMSC.crcstrobe),
			CRC.reset.eq(FMSC.crcreset),
			CRC.i_data_payload.eq(FMSC.toCRC),

		]

		self.sync+= crc_delay.eq(CRC.o_crc)

dut = FullMode_Box_SingleOutput()   
verilog.convert(dut, {
	dut.data_FIFO_0,dut.data_FIFO_1,dut.data_FIFO_2,dut.data_FIFO_3,dut.data_FIFO_4,
	dut.data_FIFO_5,dut.data_FIFO_6,dut.data_FIFO_7,dut.data_FIFO_8,dut.data_FIFO_9,
	dut.data_FIFO_10,dut.data_FIFO_11,dut.data_FIFO_12,dut.data_FIFO_13,dut.data_FIFO_14,
	dut.data_FIFO_15,dut.data_FIFO_16,dut.data_FIFO_17,dut.data_FIFO_18,dut.data_FIFO_19,
	dut.data_FIFO_20,dut.data_FIFO_21,dut.data_FIFO_22,dut.data_FIFO_23,dut.data_FIFO_24,
	dut.data_FIFO_25,dut.data_FIFO_26,dut.data_FIFO_27,dut.data_FIFO_28,dut.data_FIFO_29,
	dut.data_FIFO_30,dut.data_FIFO_31,dut.data_FIFO_32,dut.data_FIFO_33,dut.data_FIFO_34,
	dut.data_FIFO_35,dut.data_FIFO_36,dut.data_FIFO_37,dut.data_FIFO_38,dut.data_FIFO_39,
	dut.link_ready, dut.data_to_GTP, dut.k_o, dut.FIFO_re_OUT, dut.FIFO_empty_IN}).write("FullMode_Box_SingleOutput.v")

