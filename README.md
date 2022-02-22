# FullMode_box

## FullMode_Box_SingleOutput
	
### Inputs:

-data_FIFO_n [33:0]: FIFO output data assigned to that channel.

-FIFO_empty_IN [39:0]: Logical array of the states of each FIFO_n.

-link_ready: TX_GTP initialization signal (Tx_rst_done).

### Outputs:

-data_to_GTP [31:0]: Output data in Full Mode format to GTP.

-k_o: Flag signal for special character for 8b/10b encoding.

-FIFO_re_OUT [39:0]: Logical array for reading signal of each FIFO_n


To create the FullMode_Box_SingleOutput file, run:

	-cd /FullMode_Box_SingleOutput
	-python3 FullMode_Box_SingleOutput.py

This will give you the FullMode_Box_SingleOutput.v file in the same folder.


## FullMode_Box_DualOutput

### Inputs:

-data_FIFO_n [33:0]: FIFO output data assigned to that channel.

-FIFO_empty_IN [39:0]: Logical array of the states of each FIFO_n.

-link_ready: TX_GTP initialization signal (Tx_rst_done).

### Outputs:

-data_to_GTP_0 [31:0]: Output data in Full Mode format to GTP (SFP0).

-k_o_0: Flag signal for special character for 8b/10b encoding (SFP0).

-data_to_GTP_1 [31:0]: Output data in Full Mode format to GTP (SFP1).

-k_o_1: Flag signal for special character for 8b/10b encoding (SFP1).

-FIFO_re_OUT [39:0]: Logical array for reading signal of each FIFO_n

To create the FullMode_Box_DualOutput file, run:

	-cd /FullMode_Box_DualOutput
	-python3 FullMode_Box_DualOutput.py

This will give you the FullMode_Box_DualOutput.v file in the same folder.



