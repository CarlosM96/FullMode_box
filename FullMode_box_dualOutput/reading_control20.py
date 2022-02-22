#Create by: Carlos B. Montiel
#           Oscar Baez
#           Ivan Gonzales
#Institution: FIUNA Paraguay
#File Name: Full Mode box single output.
#Version: 1.0a

from migen import *
from migen.fhdl import verilog

class reading_control20(Module):
    def __init__(self):

        #inputs
        self.tx_init = Signal()
        self.data_type = Signal(2)
        self.fifo_empty= Signal()


        #outputs
        self.select = Signal(5)
        
        fsm= FSM(reset_state="Start")
        self.submodules+=fsm

        fsm.act("Start",
            If(self.tx_init,
                NextValue(self.select,0),
                NextState("Reading")

            )
        )

        fsm.act("Reading",
            If(self.fifo_empty,
                If(self.select==19,
                    NextValue(self.select,0)
                ).Else(
                    NextValue(self.select,self.select+1)
                ),
                NextState("Reading")

            ).Else(
                If(self.data_type!=2,
                    NextState("Waiting")
                )

            )
        )  

        fsm.act("Waiting",
            If(self.data_type==2,
                NextState("Reading"),
                If(self.select==19,
                    NextValue(self.select,0)
                ).Else(
                    NextValue(self.select,self.select+1)
                )
            ).Else(
                NextState("Waiting")
            )

        )


"""
dut = reading_control20();
verilog.convert(dut,{dut.tx_init, dut.data_type, dut.fifo_empty, dut.select}).write("ReadingControl40.v")
"""