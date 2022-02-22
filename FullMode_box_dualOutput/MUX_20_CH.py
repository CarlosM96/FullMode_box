from migen import *
from migen.fhdl import verilog

class MUX_20_CH(Module):
	def __init__(self):
		#input
		self.sel_in = Signal(5)
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
		self.FIFO_empty_IN = Signal(20)
		self.FIFO_re_IN = Signal()
		#output
		self.data_out = Signal(32)
		self.dtype_out = Signal(2)
		self.FIFO_empty_OUT = Signal()
		self.FIFO_re_OUT = Signal(20)

		self.comb+= [
			If((self.sel_in==0),
				self.data_out.eq(self.data_FIFO_0[:32]),
                self.dtype_out.eq(self.data_FIFO_0[32:]),
                self.FIFO_re_OUT[0].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[0])
			),
			If((self.sel_in==1),
				self.data_out.eq(self.data_FIFO_1[:32]),
                self.dtype_out.eq(self.data_FIFO_1[32:]),
                self.FIFO_re_OUT[1].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[1])
			),
			If((self.sel_in==2),
				self.data_out.eq(self.data_FIFO_2[:32]),
                self.dtype_out.eq(self.data_FIFO_2[32:]),
                self.FIFO_re_OUT[2].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[2])
			),
			If((self.sel_in==3),
				self.data_out.eq(self.data_FIFO_3[:32]),
                self.dtype_out.eq(self.data_FIFO_3[32:]),
                self.FIFO_re_OUT[3].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[3])
			),
			If((self.sel_in==4),
				self.data_out.eq(self.data_FIFO_4[:32]),
                self.dtype_out.eq(self.data_FIFO_4[32:]),
                self.FIFO_re_OUT[4].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[4])
			),
			If((self.sel_in==5),
				self.data_out.eq(self.data_FIFO_5[:32]),
                self.dtype_out.eq(self.data_FIFO_5[32:]),
                self.FIFO_re_OUT[5].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[5])
			),
			If((self.sel_in==6),
				self.data_out.eq(self.data_FIFO_6[:32]),
                self.dtype_out.eq(self.data_FIFO_6[32:]),
                self.FIFO_re_OUT[6].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[6])
			),
			If((self.sel_in==7),
				self.data_out.eq(self.data_FIFO_7[:32]),
                self.dtype_out.eq(self.data_FIFO_7[32:]),
                self.FIFO_re_OUT[7].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[7])
			),
			If((self.sel_in==8),
				self.data_out.eq(self.data_FIFO_8[:32]),
                self.dtype_out.eq(self.data_FIFO_8[32:]),
                self.FIFO_re_OUT[8].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[8])
			),
			If((self.sel_in==9),
				self.data_out.eq(self.data_FIFO_9[:32]),
                self.dtype_out.eq(self.data_FIFO_9[32:]),
                self.FIFO_re_OUT[9].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[9])
			),
			If((self.sel_in==10),
				self.data_out.eq(self.data_FIFO_10[:32]),
                self.dtype_out.eq(self.data_FIFO_10[32:]),
                self.FIFO_re_OUT[10].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[10])
			),
			If((self.sel_in==11),
				self.data_out.eq(self.data_FIFO_11[:32]),
                self.dtype_out.eq(self.data_FIFO_11[32:]),
                self.FIFO_re_OUT[11].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[11])
			),
			If((self.sel_in==12),
				self.data_out.eq(self.data_FIFO_12[:32]),
                self.dtype_out.eq(self.data_FIFO_12[32:]),
                self.FIFO_re_OUT[12].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[12])
			),
			If((self.sel_in==13),
				self.data_out.eq(self.data_FIFO_13[:32]),
                self.dtype_out.eq(self.data_FIFO_13[32:]),
                self.FIFO_re_OUT[13].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[13])
			),
			If((self.sel_in==14),
				self.data_out.eq(self.data_FIFO_14[:32]),
                self.dtype_out.eq(self.data_FIFO_14[32:]),
                self.FIFO_re_OUT[14].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[14])
			),
			If((self.sel_in==15),
				self.data_out.eq(self.data_FIFO_15[:32]),
                self.dtype_out.eq(self.data_FIFO_15[32:]),
                self.FIFO_re_OUT[15].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[15])
			),
			If((self.sel_in==16),
				self.data_out.eq(self.data_FIFO_16[:32]),
                self.dtype_out.eq(self.data_FIFO_16[32:]),
                self.FIFO_re_OUT[16].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[16])
			),
			If((self.sel_in==17),
				self.data_out.eq(self.data_FIFO_17[:32]),
                self.dtype_out.eq(self.data_FIFO_17[32:]),
                self.FIFO_re_OUT[17].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[17])
			),
			If((self.sel_in==18),
				self.data_out.eq(self.data_FIFO_18[:32]),
                self.dtype_out.eq(self.data_FIFO_18[32:]),
                self.FIFO_re_OUT[18].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[18])
			),
			If((self.sel_in==19),
				self.data_out.eq(self.data_FIFO_19[:32]),
                self.dtype_out.eq(self.data_FIFO_19[32:]),
                self.FIFO_re_OUT[19].eq(self.FIFO_re_IN),
                self.FIFO_empty_OUT.eq(self.FIFO_empty_IN[19])
			)
			
		]
"""
dut = MUX_20_CH()   
verilog.convert(dut, {dut.sel_in,
	dut.data_FIFO_0,dut.data_FIFO_1,dut.data_FIFO_2,dut.data_FIFO_3,dut.data_FIFO_4,
	dut.data_FIFO_5,dut.data_FIFO_6,dut.data_FIFO_7,dut.data_FIFO_8,dut.data_FIFO_9,
	dut.data_FIFO_10,dut.data_FIFO_11,dut.data_FIFO_12,dut.data_FIFO_13,dut.data_FIFO_14,
	dut.data_FIFO_15,dut.data_FIFO_16,dut.data_FIFO_17,dut.data_FIFO_18,dut.data_FIFO_19,
	dut.FIFO_empty_OUT, dut.FIFO_re_OUT, dut.FIFO_empty_IN, dut.FIFO_re_IN,
	dut.data_out, dut.dtype_out}).write("MUX_20_CH.v")
"""
