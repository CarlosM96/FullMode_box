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
from MUX_20_CH import MUX_20_CH
from reading_control20 import reading_control20


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
		self.data_to_GTP_0 = Signal(32)		# data to GTP in Full Mode Format 
		self.data_to_GTP_1 = Signal(32)		# data to GTP in Full Mode Format
		self.FIFO_re_OUT = Signal(40)		# 40 fifo_re output signals vector
		self.k_o_0 = Signal()				# Special Character k flag for 8b/10b GTP encoder
		self.k_o_1 = Signal()				# Special Character k flag for 8b/10b GTP encoder

		crc_delay_0 = Signal(20)
		crc_delay_1 = Signal(20)

		Mux20_0 = MUX_20_CH()
		Mux20_1 = MUX_20_CH()
		readControl_0 = reading_control20()
		readControl_1 = reading_control20()
		FMSC_0 = TX()
		FMSC_1 = TX()
		CRC_0 = TxParallelCrcGenerator(data_width=32, crc_width=20, polynomial=0x8359f, initial=0xfffff)
		CRC_1 = TxParallelCrcGenerator(data_width=32, crc_width=20, polynomial=0x8359f, initial=0xfffff)

		self.submodules+=[
			Mux20_0,readControl_0,FMSC_0, CRC_0,
			Mux20_1,readControl_1,FMSC_1, CRC_1,
		]

		self.comb+= [
			Mux20_0.data_FIFO_0.eq(self.data_FIFO_0),
			Mux20_0.data_FIFO_1.eq(self.data_FIFO_1),
			Mux20_0.data_FIFO_2.eq(self.data_FIFO_2),
			Mux20_0.data_FIFO_3.eq(self.data_FIFO_3),
			Mux20_0.data_FIFO_4.eq(self.data_FIFO_4),
			Mux20_0.data_FIFO_5.eq(self.data_FIFO_5),
			Mux20_0.data_FIFO_6.eq(self.data_FIFO_6),
			Mux20_0.data_FIFO_7.eq(self.data_FIFO_7),
			Mux20_0.data_FIFO_8.eq(self.data_FIFO_8),
			Mux20_0.data_FIFO_9.eq(self.data_FIFO_9),
			Mux20_0.data_FIFO_10.eq(self.data_FIFO_10),
			Mux20_0.data_FIFO_11.eq(self.data_FIFO_11),
			Mux20_0.data_FIFO_12.eq(self.data_FIFO_12),
			Mux20_0.data_FIFO_13.eq(self.data_FIFO_13),
			Mux20_0.data_FIFO_14.eq(self.data_FIFO_14),
			Mux20_0.data_FIFO_15.eq(self.data_FIFO_15),
			Mux20_0.data_FIFO_16.eq(self.data_FIFO_16),
			Mux20_0.data_FIFO_17.eq(self.data_FIFO_17),
			Mux20_0.data_FIFO_18.eq(self.data_FIFO_18),
			Mux20_0.data_FIFO_19.eq(self.data_FIFO_19),
			Mux20_1.data_FIFO_0.eq(self.data_FIFO_20),
			Mux20_1.data_FIFO_1.eq(self.data_FIFO_21),
			Mux20_1.data_FIFO_2.eq(self.data_FIFO_22),
			Mux20_1.data_FIFO_3.eq(self.data_FIFO_23),
			Mux20_1.data_FIFO_4.eq(self.data_FIFO_24),
			Mux20_1.data_FIFO_5.eq(self.data_FIFO_25),
			Mux20_1.data_FIFO_6.eq(self.data_FIFO_26),
			Mux20_1.data_FIFO_7.eq(self.data_FIFO_27),
			Mux20_1.data_FIFO_8.eq(self.data_FIFO_28),
			Mux20_1.data_FIFO_9.eq(self.data_FIFO_29),
			Mux20_1.data_FIFO_10.eq(self.data_FIFO_30),
			Mux20_1.data_FIFO_11.eq(self.data_FIFO_31),
			Mux20_1.data_FIFO_12.eq(self.data_FIFO_32),
			Mux20_1.data_FIFO_13.eq(self.data_FIFO_33),
			Mux20_1.data_FIFO_14.eq(self.data_FIFO_34),
			Mux20_1.data_FIFO_15.eq(self.data_FIFO_35),
			Mux20_1.data_FIFO_16.eq(self.data_FIFO_36),
			Mux20_1.data_FIFO_17.eq(self.data_FIFO_37),
			Mux20_1.data_FIFO_18.eq(self.data_FIFO_38),
			Mux20_1.data_FIFO_19.eq(self.data_FIFO_39),
			Mux20_0.FIFO_empty_IN.eq(self.FIFO_empty_IN[:20]),
			Mux20_1.FIFO_empty_IN.eq(self.FIFO_empty_IN[20:]),
			Mux20_0.sel_in.eq(readControl_0.select),
			Mux20_1.sel_in.eq(readControl_1.select),
			self.FIFO_re_OUT[:20].eq(Mux20_0.FIFO_re_OUT),
			self.FIFO_re_OUT[20:].eq(Mux20_1.FIFO_re_OUT),
			Mux20_0.FIFO_re_IN.eq(FMSC_0.fifo_re),
			Mux20_1.FIFO_re_IN.eq(FMSC_1.fifo_re),
			###
			readControl_0.tx_init.eq(self.link_ready),
			readControl_0.data_type.eq(Mux20_0.dtype_out),
			readControl_0.fifo_empty.eq(Mux20_0.FIFO_empty_OUT),
			readControl_1.tx_init.eq(self.link_ready),
			readControl_1.data_type.eq(Mux20_1.dtype_out),
			readControl_1.fifo_empty.eq(Mux20_1.FIFO_empty_OUT),
			###
			FMSC_0.link_ready.eq(self.link_ready),
			FMSC_0.data_in.eq(Mux20_0.data_out),
			FMSC_0.data_type_in.eq(Mux20_0.dtype_out),
			FMSC_0.fifo_empty.eq(Mux20_0.FIFO_empty_OUT),
			self.data_to_GTP_0.eq(FMSC_0.data_out),
			self.k_o_0.eq(FMSC_0.k),
			FMSC_0.fromCRC.eq(crc_delay_0),
			CRC_0.i_data_strobe.eq(FMSC_0.crcstrobe),
			CRC_0.reset.eq(FMSC_0.crcreset),
			CRC_0.i_data_payload.eq(FMSC_0.toCRC),

			FMSC_1.link_ready.eq(self.link_ready),
			FMSC_1.data_in.eq(Mux20_1.data_out),
			FMSC_1.data_type_in.eq(Mux20_1.dtype_out),
			FMSC_1.fifo_empty.eq(Mux20_1.FIFO_empty_OUT),
			self.data_to_GTP_1.eq(FMSC_1.data_out),
			self.k_o_1.eq(FMSC_1.k),
			FMSC_1.fromCRC.eq(crc_delay_1),
			CRC_1.i_data_strobe.eq(FMSC_1.crcstrobe),
			CRC_1.reset.eq(FMSC_1.crcreset),
			CRC_1.i_data_payload.eq(FMSC_1.toCRC),


		]

		self.sync+=[ 
			crc_delay_0.eq(CRC_0.o_crc),
			crc_delay_1.eq(CRC_1.o_crc)
		]

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
	dut.link_ready,dut.data_to_GTP_0, dut.data_to_GTP_1, dut.k_o_0, dut.k_o_1, 
	dut.FIFO_re_OUT, dut.FIFO_empty_IN}).write("FullMode_Box_DualOutput.v")

