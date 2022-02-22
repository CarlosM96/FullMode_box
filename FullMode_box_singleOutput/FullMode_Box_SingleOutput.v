/* Machine-generated using Migen */
module top(
	input [33:0] data_FIFO_0,
	input [33:0] data_FIFO_1,
	input [33:0] data_FIFO_2,
	input [33:0] data_FIFO_3,
	input [33:0] data_FIFO_4,
	input [33:0] data_FIFO_5,
	input [33:0] data_FIFO_6,
	input [33:0] data_FIFO_7,
	input [33:0] data_FIFO_8,
	input [33:0] data_FIFO_9,
	input [33:0] data_FIFO_10,
	input [33:0] data_FIFO_11,
	input [33:0] data_FIFO_12,
	input [33:0] data_FIFO_13,
	input [33:0] data_FIFO_14,
	input [33:0] data_FIFO_15,
	input [33:0] data_FIFO_16,
	input [33:0] data_FIFO_17,
	input [33:0] data_FIFO_18,
	input [33:0] data_FIFO_19,
	input [33:0] data_FIFO_20,
	input [33:0] data_FIFO_21,
	input [33:0] data_FIFO_22,
	input [33:0] data_FIFO_23,
	input [33:0] data_FIFO_24,
	input [33:0] data_FIFO_25,
	input [33:0] data_FIFO_26,
	input [33:0] data_FIFO_27,
	input [33:0] data_FIFO_28,
	input [33:0] data_FIFO_29,
	input [33:0] data_FIFO_30,
	input [33:0] data_FIFO_31,
	input [33:0] data_FIFO_32,
	input [33:0] data_FIFO_33,
	input [33:0] data_FIFO_34,
	input [33:0] data_FIFO_35,
	input [33:0] data_FIFO_36,
	input [33:0] data_FIFO_37,
	input [33:0] data_FIFO_38,
	input [33:0] data_FIFO_39,
	input [39:0] FIFO_empty_IN,
	input link_ready,
	output [31:0] data_to_GTP,
	output [39:0] FIFO_re_OUT,
	output k_o,
	input sys_clk,
	input sys_rst
);

reg [19:0] crc_delay = 20'd0;
wire [5:0] Mux40_sel_in;
wire [33:0] Mux40_data_FIFO_0;
wire [33:0] Mux40_data_FIFO_1;
wire [33:0] Mux40_data_FIFO_2;
wire [33:0] Mux40_data_FIFO_3;
wire [33:0] Mux40_data_FIFO_4;
wire [33:0] Mux40_data_FIFO_5;
wire [33:0] Mux40_data_FIFO_6;
wire [33:0] Mux40_data_FIFO_7;
wire [33:0] Mux40_data_FIFO_8;
wire [33:0] Mux40_data_FIFO_9;
wire [33:0] Mux40_data_FIFO_10;
wire [33:0] Mux40_data_FIFO_11;
wire [33:0] Mux40_data_FIFO_12;
wire [33:0] Mux40_data_FIFO_13;
wire [33:0] Mux40_data_FIFO_14;
wire [33:0] Mux40_data_FIFO_15;
wire [33:0] Mux40_data_FIFO_16;
wire [33:0] Mux40_data_FIFO_17;
wire [33:0] Mux40_data_FIFO_18;
wire [33:0] Mux40_data_FIFO_19;
wire [33:0] Mux40_data_FIFO_20;
wire [33:0] Mux40_data_FIFO_21;
wire [33:0] Mux40_data_FIFO_22;
wire [33:0] Mux40_data_FIFO_23;
wire [33:0] Mux40_data_FIFO_24;
wire [33:0] Mux40_data_FIFO_25;
wire [33:0] Mux40_data_FIFO_26;
wire [33:0] Mux40_data_FIFO_27;
wire [33:0] Mux40_data_FIFO_28;
wire [33:0] Mux40_data_FIFO_29;
wire [33:0] Mux40_data_FIFO_30;
wire [33:0] Mux40_data_FIFO_31;
wire [33:0] Mux40_data_FIFO_32;
wire [33:0] Mux40_data_FIFO_33;
wire [33:0] Mux40_data_FIFO_34;
wire [33:0] Mux40_data_FIFO_35;
wire [33:0] Mux40_data_FIFO_36;
wire [33:0] Mux40_data_FIFO_37;
wire [33:0] Mux40_data_FIFO_38;
wire [33:0] Mux40_data_FIFO_39;
wire [39:0] Mux40_FIFO_empty_IN;
wire Mux40_FIFO_re_IN;
reg [31:0] Mux40_data_out;
reg [1:0] Mux40_dtype_out;
reg Mux40_FIFO_empty_OUT;
reg [39:0] Mux40_FIFO_re_OUT;
wire readControl_tx_init;
wire [1:0] readControl_data_type;
wire readControl_fifo_empty;
reg [5:0] readControl_select = 6'd0;
wire FMSC_link_ready;
wire [31:0] FMSC_data_in;
wire [1:0] FMSC_data_type_in;
reg [31:0] FMSC_data_out;
wire FMSC_fifo_empty;
wire FMSC_fifo_re;
reg FMSC_k;
wire [19:0] FMSC_fromCRC;
reg [31:0] FMSC_toCRC;
wire FMSC_crcstrobe;
wire FMSC_crcreset;
reg [31:0] FMSC_da = 32'd0;
reg [31:0] FMSC_db = 32'd0;
reg [1:0] FMSC_dta = 2'd0;
reg [1:0] FMSC_dtb = 2'd0;
reg [19:0] FMSC_crc_delay = 20'd0;
wire FMSC_stream_controller_link_ready;
wire FMSC_stream_controller_fifo_empty;
wire [1:0] FMSC_stream_controller_data_type;
wire [1:0] FMSC_stream_controller_data_typeb;
wire FMSC_stream_controller_tx_init_done;
reg FMSC_stream_controller_sop = 1'd0;
reg FMSC_stream_controller_eop = 1'd0;
reg FMSC_stream_controller_ign;
reg FMSC_stream_controller_idle = 1'd0;
reg FMSC_stream_controller_intermediate = 1'd0;
reg FMSC_stream_controller_encoder_ready = 1'd0;
reg FMSC_stream_controller_fsm_done;
reg FMSC_stream_controller_reset = 1'd0;
wire [1:0] FMSC_crc_control_data_type;
wire FMSC_crc_control_fsm_done;
wire FMSC_crc_control_fifo_empty;
reg FMSC_crc_control_strobe_crc;
reg FMSC_crc_control_reset_crc;
reg FMSC_crc_control_fifo_re;
wire [31:0] i_data_payload;
wire i_data_strobe;
wire [19:0] o_crc;
wire reset;
wire [31:0] crc_dat;
reg [19:0] crc_cur = 20'd1048575;
reg [19:0] crc_next;
reg [1:0] state = 2'd0;
reg [1:0] next_state;
reg [5:0] readControl_select_reading_control40_next_value;
reg readControl_select_reading_control40_next_value_ce;
reg [2:0] fsm_state = 3'd0;
reg [2:0] fsm_next_state;
reg FMSC_stream_controller_sop_tx_t_next_value0;
reg FMSC_stream_controller_sop_tx_t_next_value_ce0;
reg FMSC_stream_controller_idle_tx_t_next_value1;
reg FMSC_stream_controller_idle_tx_t_next_value_ce1;
reg FMSC_stream_controller_encoder_ready_tx_next_value0;
reg FMSC_stream_controller_encoder_ready_tx_next_value_ce0;
reg FMSC_stream_controller_intermediate_tx_next_value1;
reg FMSC_stream_controller_intermediate_tx_next_value_ce1;
reg FMSC_stream_controller_eop_tx_cases_next_value;
reg FMSC_stream_controller_eop_tx_cases_next_value_ce;
reg [1:0] control_state = 2'd0;
reg [1:0] control_next_state;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign Mux40_data_FIFO_0 = data_FIFO_0;
assign Mux40_data_FIFO_1 = data_FIFO_1;
assign Mux40_data_FIFO_2 = data_FIFO_2;
assign Mux40_data_FIFO_3 = data_FIFO_3;
assign Mux40_data_FIFO_4 = data_FIFO_4;
assign Mux40_data_FIFO_5 = data_FIFO_5;
assign Mux40_data_FIFO_6 = data_FIFO_6;
assign Mux40_data_FIFO_7 = data_FIFO_7;
assign Mux40_data_FIFO_8 = data_FIFO_8;
assign Mux40_data_FIFO_9 = data_FIFO_9;
assign Mux40_data_FIFO_10 = data_FIFO_10;
assign Mux40_data_FIFO_11 = data_FIFO_11;
assign Mux40_data_FIFO_12 = data_FIFO_12;
assign Mux40_data_FIFO_13 = data_FIFO_13;
assign Mux40_data_FIFO_14 = data_FIFO_14;
assign Mux40_data_FIFO_15 = data_FIFO_15;
assign Mux40_data_FIFO_16 = data_FIFO_16;
assign Mux40_data_FIFO_17 = data_FIFO_17;
assign Mux40_data_FIFO_18 = data_FIFO_18;
assign Mux40_data_FIFO_19 = data_FIFO_19;
assign Mux40_data_FIFO_20 = data_FIFO_20;
assign Mux40_data_FIFO_21 = data_FIFO_21;
assign Mux40_data_FIFO_22 = data_FIFO_22;
assign Mux40_data_FIFO_23 = data_FIFO_23;
assign Mux40_data_FIFO_24 = data_FIFO_24;
assign Mux40_data_FIFO_25 = data_FIFO_25;
assign Mux40_data_FIFO_26 = data_FIFO_26;
assign Mux40_data_FIFO_27 = data_FIFO_27;
assign Mux40_data_FIFO_28 = data_FIFO_28;
assign Mux40_data_FIFO_29 = data_FIFO_29;
assign Mux40_data_FIFO_30 = data_FIFO_30;
assign Mux40_data_FIFO_31 = data_FIFO_31;
assign Mux40_data_FIFO_32 = data_FIFO_32;
assign Mux40_data_FIFO_33 = data_FIFO_33;
assign Mux40_data_FIFO_34 = data_FIFO_34;
assign Mux40_data_FIFO_35 = data_FIFO_35;
assign Mux40_data_FIFO_36 = data_FIFO_36;
assign Mux40_data_FIFO_37 = data_FIFO_37;
assign Mux40_data_FIFO_38 = data_FIFO_38;
assign Mux40_data_FIFO_39 = data_FIFO_39;
assign Mux40_FIFO_empty_IN = FIFO_empty_IN;
assign Mux40_sel_in = readControl_select;
assign FIFO_re_OUT = Mux40_FIFO_re_OUT;
assign Mux40_FIFO_re_IN = FMSC_fifo_re;
assign readControl_tx_init = link_ready;
assign readControl_data_type = Mux40_dtype_out;
assign readControl_fifo_empty = Mux40_FIFO_empty_OUT;
assign FMSC_link_ready = link_ready;
assign FMSC_data_in = Mux40_data_out;
assign FMSC_data_type_in = Mux40_dtype_out;
assign FMSC_fifo_empty = Mux40_FIFO_empty_OUT;
assign data_to_GTP = FMSC_data_out;
assign k_o = FMSC_k;
assign FMSC_fromCRC = crc_delay;
assign i_data_strobe = FMSC_crcstrobe;
assign reset = FMSC_crcreset;
assign i_data_payload = FMSC_toCRC;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	Mux40_data_out <= 32'd0;
	Mux40_dtype_out <= 2'd0;
	Mux40_FIFO_empty_OUT <= 1'd0;
	Mux40_FIFO_re_OUT <= 40'd0;
	if ((Mux40_sel_in == 1'd0)) begin
		Mux40_data_out <= Mux40_data_FIFO_0[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_0[33:32];
		Mux40_FIFO_re_OUT[0] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[0];
	end
	if ((Mux40_sel_in == 1'd1)) begin
		Mux40_data_out <= Mux40_data_FIFO_1[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_1[33:32];
		Mux40_FIFO_re_OUT[1] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[1];
	end
	if ((Mux40_sel_in == 2'd2)) begin
		Mux40_data_out <= Mux40_data_FIFO_2[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_2[33:32];
		Mux40_FIFO_re_OUT[2] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[2];
	end
	if ((Mux40_sel_in == 2'd3)) begin
		Mux40_data_out <= Mux40_data_FIFO_3[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_3[33:32];
		Mux40_FIFO_re_OUT[3] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[3];
	end
	if ((Mux40_sel_in == 3'd4)) begin
		Mux40_data_out <= Mux40_data_FIFO_4[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_4[33:32];
		Mux40_FIFO_re_OUT[4] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[4];
	end
	if ((Mux40_sel_in == 3'd5)) begin
		Mux40_data_out <= Mux40_data_FIFO_5[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_5[33:32];
		Mux40_FIFO_re_OUT[5] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[5];
	end
	if ((Mux40_sel_in == 3'd6)) begin
		Mux40_data_out <= Mux40_data_FIFO_6[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_6[33:32];
		Mux40_FIFO_re_OUT[6] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[6];
	end
	if ((Mux40_sel_in == 3'd7)) begin
		Mux40_data_out <= Mux40_data_FIFO_7[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_7[33:32];
		Mux40_FIFO_re_OUT[7] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[7];
	end
	if ((Mux40_sel_in == 4'd8)) begin
		Mux40_data_out <= Mux40_data_FIFO_8[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_8[33:32];
		Mux40_FIFO_re_OUT[8] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[8];
	end
	if ((Mux40_sel_in == 4'd9)) begin
		Mux40_data_out <= Mux40_data_FIFO_9[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_9[33:32];
		Mux40_FIFO_re_OUT[9] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[9];
	end
	if ((Mux40_sel_in == 4'd10)) begin
		Mux40_data_out <= Mux40_data_FIFO_10[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_10[33:32];
		Mux40_FIFO_re_OUT[10] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[10];
	end
	if ((Mux40_sel_in == 4'd11)) begin
		Mux40_data_out <= Mux40_data_FIFO_11[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_11[33:32];
		Mux40_FIFO_re_OUT[11] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[11];
	end
	if ((Mux40_sel_in == 4'd12)) begin
		Mux40_data_out <= Mux40_data_FIFO_12[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_12[33:32];
		Mux40_FIFO_re_OUT[12] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[12];
	end
	if ((Mux40_sel_in == 4'd13)) begin
		Mux40_data_out <= Mux40_data_FIFO_13[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_13[33:32];
		Mux40_FIFO_re_OUT[13] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[13];
	end
	if ((Mux40_sel_in == 4'd14)) begin
		Mux40_data_out <= Mux40_data_FIFO_14[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_14[33:32];
		Mux40_FIFO_re_OUT[14] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[14];
	end
	if ((Mux40_sel_in == 4'd15)) begin
		Mux40_data_out <= Mux40_data_FIFO_15[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_15[33:32];
		Mux40_FIFO_re_OUT[15] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[15];
	end
	if ((Mux40_sel_in == 5'd16)) begin
		Mux40_data_out <= Mux40_data_FIFO_16[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_16[33:32];
		Mux40_FIFO_re_OUT[16] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[16];
	end
	if ((Mux40_sel_in == 5'd17)) begin
		Mux40_data_out <= Mux40_data_FIFO_17[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_17[33:32];
		Mux40_FIFO_re_OUT[17] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[17];
	end
	if ((Mux40_sel_in == 5'd18)) begin
		Mux40_data_out <= Mux40_data_FIFO_18[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_18[33:32];
		Mux40_FIFO_re_OUT[18] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[18];
	end
	if ((Mux40_sel_in == 5'd19)) begin
		Mux40_data_out <= Mux40_data_FIFO_19[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_19[33:32];
		Mux40_FIFO_re_OUT[19] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[19];
	end
	if ((Mux40_sel_in == 5'd20)) begin
		Mux40_data_out <= Mux40_data_FIFO_20[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_20[33:32];
		Mux40_FIFO_re_OUT[20] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[20];
	end
	if ((Mux40_sel_in == 5'd21)) begin
		Mux40_data_out <= Mux40_data_FIFO_21[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_21[33:32];
		Mux40_FIFO_re_OUT[21] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[21];
	end
	if ((Mux40_sel_in == 5'd22)) begin
		Mux40_data_out <= Mux40_data_FIFO_22[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_22[33:32];
		Mux40_FIFO_re_OUT[22] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[22];
	end
	if ((Mux40_sel_in == 5'd23)) begin
		Mux40_data_out <= Mux40_data_FIFO_23[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_23[33:32];
		Mux40_FIFO_re_OUT[23] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[23];
	end
	if ((Mux40_sel_in == 5'd24)) begin
		Mux40_data_out <= Mux40_data_FIFO_24[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_24[33:32];
		Mux40_FIFO_re_OUT[24] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[24];
	end
	if ((Mux40_sel_in == 5'd25)) begin
		Mux40_data_out <= Mux40_data_FIFO_25[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_25[33:32];
		Mux40_FIFO_re_OUT[25] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[25];
	end
	if ((Mux40_sel_in == 5'd26)) begin
		Mux40_data_out <= Mux40_data_FIFO_26[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_26[33:32];
		Mux40_FIFO_re_OUT[26] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[26];
	end
	if ((Mux40_sel_in == 5'd27)) begin
		Mux40_data_out <= Mux40_data_FIFO_27[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_27[33:32];
		Mux40_FIFO_re_OUT[27] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[27];
	end
	if ((Mux40_sel_in == 5'd28)) begin
		Mux40_data_out <= Mux40_data_FIFO_28[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_28[33:32];
		Mux40_FIFO_re_OUT[28] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[28];
	end
	if ((Mux40_sel_in == 5'd29)) begin
		Mux40_data_out <= Mux40_data_FIFO_29[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_29[33:32];
		Mux40_FIFO_re_OUT[29] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[29];
	end
	if ((Mux40_sel_in == 5'd30)) begin
		Mux40_data_out <= Mux40_data_FIFO_30[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_30[33:32];
		Mux40_FIFO_re_OUT[30] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[30];
	end
	if ((Mux40_sel_in == 5'd31)) begin
		Mux40_data_out <= Mux40_data_FIFO_31[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_31[33:32];
		Mux40_FIFO_re_OUT[31] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[31];
	end
	if ((Mux40_sel_in == 6'd32)) begin
		Mux40_data_out <= Mux40_data_FIFO_32[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_32[33:32];
		Mux40_FIFO_re_OUT[32] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[32];
	end
	if ((Mux40_sel_in == 6'd33)) begin
		Mux40_data_out <= Mux40_data_FIFO_33[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_33[33:32];
		Mux40_FIFO_re_OUT[33] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[33];
	end
	if ((Mux40_sel_in == 6'd34)) begin
		Mux40_data_out <= Mux40_data_FIFO_34[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_34[33:32];
		Mux40_FIFO_re_OUT[34] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[34];
	end
	if ((Mux40_sel_in == 6'd35)) begin
		Mux40_data_out <= Mux40_data_FIFO_35[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_35[33:32];
		Mux40_FIFO_re_OUT[35] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[35];
	end
	if ((Mux40_sel_in == 6'd36)) begin
		Mux40_data_out <= Mux40_data_FIFO_36[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_36[33:32];
		Mux40_FIFO_re_OUT[36] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[36];
	end
	if ((Mux40_sel_in == 6'd37)) begin
		Mux40_data_out <= Mux40_data_FIFO_37[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_37[33:32];
		Mux40_FIFO_re_OUT[37] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[37];
	end
	if ((Mux40_sel_in == 6'd38)) begin
		Mux40_data_out <= Mux40_data_FIFO_38[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_38[33:32];
		Mux40_FIFO_re_OUT[38] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[38];
	end
	if ((Mux40_sel_in == 6'd39)) begin
		Mux40_data_out <= Mux40_data_FIFO_39[31:0];
		Mux40_dtype_out <= Mux40_data_FIFO_39[33:32];
		Mux40_FIFO_re_OUT[39] <= Mux40_FIFO_re_IN;
		Mux40_FIFO_empty_OUT <= Mux40_FIFO_empty_IN[39];
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	next_state <= 2'd0;
	readControl_select_reading_control40_next_value <= 6'd0;
	readControl_select_reading_control40_next_value_ce <= 1'd0;
	next_state <= state;
	case (state)
		1'd1: begin
			if (readControl_fifo_empty) begin
				if ((readControl_select == 6'd39)) begin
					readControl_select_reading_control40_next_value <= 1'd0;
					readControl_select_reading_control40_next_value_ce <= 1'd1;
				end else begin
					readControl_select_reading_control40_next_value <= (readControl_select + 1'd1);
					readControl_select_reading_control40_next_value_ce <= 1'd1;
				end
				next_state <= 1'd1;
			end else begin
				if ((readControl_data_type != 2'd2)) begin
					next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if ((readControl_data_type == 2'd2)) begin
				next_state <= 1'd1;
				if ((readControl_select == 6'd39)) begin
					readControl_select_reading_control40_next_value <= 1'd0;
					readControl_select_reading_control40_next_value_ce <= 1'd1;
				end else begin
					readControl_select_reading_control40_next_value <= (readControl_select + 1'd1);
					readControl_select_reading_control40_next_value_ce <= 1'd1;
				end
			end else begin
				next_state <= 2'd2;
			end
		end
		default: begin
			if (readControl_tx_init) begin
				readControl_select_reading_control40_next_value <= 1'd0;
				readControl_select_reading_control40_next_value_ce <= 1'd1;
				next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign FMSC_stream_controller_link_ready = FMSC_link_ready;
assign FMSC_stream_controller_fifo_empty = FMSC_fifo_empty;
assign FMSC_crc_control_fifo_empty = FMSC_fifo_empty;
assign FMSC_stream_controller_data_type = FMSC_data_type_in;
assign FMSC_crc_control_data_type = FMSC_data_type_in;
assign FMSC_stream_controller_data_typeb = FMSC_dtb;
assign FMSC_stream_controller_tx_init_done = FMSC_link_ready;
assign FMSC_fifo_re = FMSC_crc_control_fifo_re;
assign FMSC_crc_control_fsm_done = FMSC_stream_controller_fsm_done;
assign FMSC_crcstrobe = FMSC_crc_control_strobe_crc;
assign FMSC_crcreset = FMSC_crc_control_reset_crc;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	FMSC_toCRC <= 32'd0;
	if (FMSC_stream_controller_encoder_ready) begin
		FMSC_toCRC <= FMSC_data_in;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	FMSC_data_out <= 32'd0;
	FMSC_k <= 1'd0;
	if (FMSC_stream_controller_idle) begin
		FMSC_data_out <= 8'd188;
		FMSC_k <= 1'd1;
	end
	if (FMSC_stream_controller_sop) begin
		FMSC_data_out <= 6'd60;
		FMSC_k <= 1'd1;
	end
	if (FMSC_stream_controller_intermediate) begin
		FMSC_data_out <= FMSC_db;
	end
	if (FMSC_stream_controller_ign) begin
		FMSC_data_out <= 7'd92;
		FMSC_k <= 1'd1;
	end
	if (FMSC_stream_controller_eop) begin
		FMSC_data_out <= {FMSC_crc_delay, 8'd220};
		FMSC_k <= 1'd1;
	end
	if (((((~FMSC_stream_controller_idle) & (~FMSC_stream_controller_eop)) & (~FMSC_stream_controller_sop)) & (~FMSC_stream_controller_ign))) begin
		FMSC_k <= 1'd0;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	FMSC_stream_controller_ign <= 1'd0;
	FMSC_stream_controller_fsm_done <= 1'd0;
	fsm_next_state <= 3'd0;
	FMSC_stream_controller_sop_tx_t_next_value0 <= 1'd0;
	FMSC_stream_controller_sop_tx_t_next_value_ce0 <= 1'd0;
	FMSC_stream_controller_idle_tx_t_next_value1 <= 1'd0;
	FMSC_stream_controller_idle_tx_t_next_value_ce1 <= 1'd0;
	FMSC_stream_controller_encoder_ready_tx_next_value0 <= 1'd0;
	FMSC_stream_controller_encoder_ready_tx_next_value_ce0 <= 1'd0;
	FMSC_stream_controller_intermediate_tx_next_value1 <= 1'd0;
	FMSC_stream_controller_intermediate_tx_next_value_ce1 <= 1'd0;
	FMSC_stream_controller_eop_tx_cases_next_value <= 1'd0;
	FMSC_stream_controller_eop_tx_cases_next_value_ce <= 1'd0;
	fsm_next_state <= fsm_state;
	case (fsm_state)
		1'd1: begin
			FMSC_stream_controller_encoder_ready_tx_next_value0 <= 1'd1;
			FMSC_stream_controller_encoder_ready_tx_next_value_ce0 <= 1'd1;
			if (FMSC_stream_controller_fifo_empty) begin
				fsm_next_state <= 1'd1;
			end else begin
				if ((FMSC_stream_controller_link_ready & (FMSC_stream_controller_data_type == 1'd1))) begin
					fsm_next_state <= 2'd2;
					FMSC_stream_controller_sop_tx_t_next_value0 <= 1'd1;
					FMSC_stream_controller_sop_tx_t_next_value_ce0 <= 1'd1;
					FMSC_stream_controller_idle_tx_t_next_value1 <= 1'd0;
					FMSC_stream_controller_idle_tx_t_next_value_ce1 <= 1'd1;
				end
			end
		end
		2'd2: begin
			fsm_next_state <= 2'd3;
			FMSC_stream_controller_intermediate_tx_next_value1 <= 1'd1;
			FMSC_stream_controller_intermediate_tx_next_value_ce1 <= 1'd1;
			FMSC_stream_controller_sop_tx_t_next_value0 <= 1'd0;
			FMSC_stream_controller_sop_tx_t_next_value_ce0 <= 1'd1;
		end
		2'd3: begin
			case (FMSC_stream_controller_data_typeb)
				1'd0: begin
					FMSC_stream_controller_intermediate_tx_next_value1 <= 1'd1;
					FMSC_stream_controller_intermediate_tx_next_value_ce1 <= 1'd1;
				end
				2'd2: begin
					fsm_next_state <= 3'd4;
					FMSC_stream_controller_eop_tx_cases_next_value <= 1'd1;
					FMSC_stream_controller_eop_tx_cases_next_value_ce <= 1'd1;
					FMSC_stream_controller_intermediate_tx_next_value1 <= 1'd0;
					FMSC_stream_controller_intermediate_tx_next_value_ce1 <= 1'd1;
				end
				2'd3: begin
					fsm_next_state <= 2'd3;
					FMSC_stream_controller_ign <= 1'd1;
				end
			endcase
		end
		3'd4: begin
			FMSC_stream_controller_fsm_done <= 1'd1;
			FMSC_stream_controller_eop_tx_cases_next_value <= 1'd0;
			FMSC_stream_controller_eop_tx_cases_next_value_ce <= 1'd1;
			FMSC_stream_controller_idle_tx_t_next_value1 <= 1'd1;
			FMSC_stream_controller_idle_tx_t_next_value_ce1 <= 1'd1;
			fsm_next_state <= 1'd1;
		end
		default: begin
			if (FMSC_stream_controller_tx_init_done) begin
				if (FMSC_stream_controller_link_ready) begin
					if (((FMSC_stream_controller_link_ready & (~FMSC_stream_controller_fifo_empty)) & (FMSC_stream_controller_data_type == 1'd1))) begin
						fsm_next_state <= 2'd2;
						FMSC_stream_controller_sop_tx_t_next_value0 <= 1'd1;
						FMSC_stream_controller_sop_tx_t_next_value_ce0 <= 1'd1;
						FMSC_stream_controller_idle_tx_t_next_value1 <= 1'd0;
						FMSC_stream_controller_idle_tx_t_next_value_ce1 <= 1'd1;
					end else begin
						fsm_next_state <= 1'd1;
						FMSC_stream_controller_idle_tx_t_next_value1 <= 1'd1;
						FMSC_stream_controller_idle_tx_t_next_value_ce1 <= 1'd1;
					end
				end else begin
					fsm_next_state <= 1'd1;
					FMSC_stream_controller_idle_tx_t_next_value1 <= 1'd1;
					FMSC_stream_controller_idle_tx_t_next_value_ce1 <= 1'd1;
				end
			end else begin
				fsm_next_state <= 1'd0;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	FMSC_crc_control_strobe_crc <= 1'd0;
	FMSC_crc_control_reset_crc <= 1'd0;
	FMSC_crc_control_fifo_re <= 1'd0;
	control_next_state <= 2'd0;
	control_next_state <= control_state;
	case (control_state)
		1'd1: begin
			FMSC_crc_control_fifo_re <= 1'd1;
			case (FMSC_crc_control_data_type)
				1'd0: begin
					FMSC_crc_control_strobe_crc <= 1'd1;
					FMSC_crc_control_reset_crc <= 1'd0;
					control_next_state <= 1'd1;
				end
				2'd2: begin
					FMSC_crc_control_strobe_crc <= 1'd1;
					FMSC_crc_control_reset_crc <= 1'd0;
					control_next_state <= 2'd2;
				end
				2'd3: begin
					FMSC_crc_control_strobe_crc <= 1'd0;
					control_next_state <= 1'd1;
				end
			endcase
		end
		2'd2: begin
			FMSC_crc_control_fifo_re <= 1'd0;
			FMSC_crc_control_strobe_crc <= 1'd0;
			FMSC_crc_control_reset_crc <= 1'd1;
			if (FMSC_crc_control_fsm_done) begin
				control_next_state <= 1'd0;
			end else begin
				control_next_state <= 2'd2;
			end
		end
		default: begin
			if ((~FMSC_crc_control_fifo_empty)) begin
				FMSC_crc_control_fifo_re <= 1'd1;
				if ((FMSC_crc_control_data_type == 1'd1)) begin
					FMSC_crc_control_strobe_crc <= 1'd1;
					FMSC_crc_control_reset_crc <= 1'd0;
					control_next_state <= 1'd1;
				end else begin
					control_next_state <= 1'd0;
					FMSC_crc_control_reset_crc <= 1'd1;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign crc_dat = i_data_payload;
assign o_crc = crc_cur;

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	crc_next <= 20'd412242;
	crc_next[0] <= (((((((((((((((((((((((((((((((crc_dat[0] ^ crc_dat[1]) ^ crc_dat[2]) ^ crc_dat[3]) ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[6]) ^ crc_dat[10]) ^ crc_dat[13]) ^ crc_dat[14]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[20]) ^ crc_dat[22]) ^ crc_dat[23]) ^ crc_dat[25]) ^ crc_dat[28]) ^ crc_dat[29]) ^ crc_dat[30]) ^ crc_dat[31]) ^ crc_cur[1]) ^ crc_cur[2]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[8]) ^ crc_cur[10]) ^ crc_cur[11]) ^ crc_cur[13]) ^ crc_cur[16]) ^ crc_cur[17]) ^ crc_cur[18]) ^ crc_cur[19]);
	crc_next[1] <= (((((((((((((((((((((((((crc_dat[0] ^ crc_dat[7]) ^ crc_dat[10]) ^ crc_dat[11]) ^ crc_dat[13]) ^ crc_dat[15]) ^ crc_dat[17]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[24]) ^ crc_dat[25]) ^ crc_dat[26]) ^ crc_dat[28]) ^ crc_cur[1]) ^ crc_cur[3]) ^ crc_cur[5]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[12]) ^ crc_cur[13]) ^ crc_cur[14]) ^ crc_cur[16]);
	crc_next[2] <= ((((((((((((((((((((((((((((crc_dat[0] ^ crc_dat[2]) ^ crc_dat[3]) ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[6]) ^ crc_dat[8]) ^ crc_dat[10]) ^ crc_dat[11]) ^ crc_dat[12]) ^ crc_dat[13]) ^ crc_dat[16]) ^ crc_dat[17]) ^ crc_dat[21]) ^ crc_dat[26]) ^ crc_dat[27]) ^ crc_dat[28]) ^ crc_dat[30]) ^ crc_dat[31]) ^ crc_cur[0]) ^ crc_cur[1]) ^ crc_cur[4]) ^ crc_cur[5]) ^ crc_cur[9]) ^ crc_cur[14]) ^ crc_cur[15]) ^ crc_cur[16]) ^ crc_cur[18]) ^ crc_cur[19]);
	crc_next[3] <= (((((((((((((((((crc_dat[0] ^ crc_dat[2]) ^ crc_dat[7]) ^ crc_dat[9]) ^ crc_dat[10]) ^ crc_dat[11]) ^ crc_dat[12]) ^ crc_dat[20]) ^ crc_dat[23]) ^ crc_dat[25]) ^ crc_dat[27]) ^ crc_dat[30]) ^ crc_cur[0]) ^ crc_cur[8]) ^ crc_cur[11]) ^ crc_cur[13]) ^ crc_cur[15]) ^ crc_cur[18]);
	crc_next[4] <= ((((((((((((((((((((((((((((((((crc_dat[0] ^ crc_dat[2]) ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[6]) ^ crc_dat[8]) ^ crc_dat[11]) ^ crc_dat[12]) ^ crc_dat[14]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[20]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[23]) ^ crc_dat[24]) ^ crc_dat[25]) ^ crc_dat[26]) ^ crc_dat[29]) ^ crc_dat[30]) ^ crc_cur[0]) ^ crc_cur[2]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[8]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[11]) ^ crc_cur[12]) ^ crc_cur[13]) ^ crc_cur[14]) ^ crc_cur[17]) ^ crc_cur[18]);
	crc_next[5] <= (((((((((((((((((((((((((((((((((crc_dat[1] ^ crc_dat[3]) ^ crc_dat[5]) ^ crc_dat[6]) ^ crc_dat[7]) ^ crc_dat[9]) ^ crc_dat[12]) ^ crc_dat[13]) ^ crc_dat[15]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[23]) ^ crc_dat[24]) ^ crc_dat[25]) ^ crc_dat[26]) ^ crc_dat[27]) ^ crc_dat[30]) ^ crc_dat[31]) ^ crc_cur[0]) ^ crc_cur[1]) ^ crc_cur[3]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[11]) ^ crc_cur[12]) ^ crc_cur[13]) ^ crc_cur[14]) ^ crc_cur[15]) ^ crc_cur[18]) ^ crc_cur[19]);
	crc_next[6] <= (((((((((((((((((((((((((((((((crc_dat[2] ^ crc_dat[4]) ^ crc_dat[6]) ^ crc_dat[7]) ^ crc_dat[8]) ^ crc_dat[10]) ^ crc_dat[13]) ^ crc_dat[14]) ^ crc_dat[16]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[22]) ^ crc_dat[23]) ^ crc_dat[24]) ^ crc_dat[25]) ^ crc_dat[26]) ^ crc_dat[27]) ^ crc_dat[28]) ^ crc_dat[31]) ^ crc_cur[1]) ^ crc_cur[2]) ^ crc_cur[4]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[10]) ^ crc_cur[11]) ^ crc_cur[12]) ^ crc_cur[13]) ^ crc_cur[14]) ^ crc_cur[15]) ^ crc_cur[16]) ^ crc_cur[19]);
	crc_next[7] <= (((((((((((((((((((((((((((((crc_dat[0] ^ crc_dat[1]) ^ crc_dat[2]) ^ crc_dat[4]) ^ crc_dat[6]) ^ crc_dat[7]) ^ crc_dat[8]) ^ crc_dat[9]) ^ crc_dat[10]) ^ crc_dat[11]) ^ crc_dat[13]) ^ crc_dat[15]) ^ crc_dat[18]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[24]) ^ crc_dat[26]) ^ crc_dat[27]) ^ crc_dat[30]) ^ crc_dat[31]) ^ crc_cur[1]) ^ crc_cur[3]) ^ crc_cur[6]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[12]) ^ crc_cur[14]) ^ crc_cur[15]) ^ crc_cur[18]) ^ crc_cur[19]);
	crc_next[8] <= ((((((((((((((((((((((((((crc_dat[0] ^ crc_dat[4]) ^ crc_dat[6]) ^ crc_dat[7]) ^ crc_dat[8]) ^ crc_dat[9]) ^ crc_dat[11]) ^ crc_dat[12]) ^ crc_dat[13]) ^ crc_dat[16]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[27]) ^ crc_dat[29]) ^ crc_dat[30]) ^ crc_cur[0]) ^ crc_cur[1]) ^ crc_cur[4]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[15]) ^ crc_cur[17]) ^ crc_cur[18]);
	crc_next[9] <= (((((((((((((((((((((((((((crc_dat[1] ^ crc_dat[5]) ^ crc_dat[7]) ^ crc_dat[8]) ^ crc_dat[9]) ^ crc_dat[10]) ^ crc_dat[12]) ^ crc_dat[13]) ^ crc_dat[14]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[21]) ^ crc_dat[28]) ^ crc_dat[30]) ^ crc_dat[31]) ^ crc_cur[0]) ^ crc_cur[1]) ^ crc_cur[2]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[9]) ^ crc_cur[16]) ^ crc_cur[18]) ^ crc_cur[19]);
	crc_next[10] <= (((((((((((((((((((((((crc_dat[0] ^ crc_dat[1]) ^ crc_dat[3]) ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[8]) ^ crc_dat[9]) ^ crc_dat[11]) ^ crc_dat[15]) ^ crc_dat[17]) ^ crc_dat[19]) ^ crc_dat[21]) ^ crc_dat[23]) ^ crc_dat[25]) ^ crc_dat[28]) ^ crc_dat[30]) ^ crc_cur[3]) ^ crc_cur[5]) ^ crc_cur[7]) ^ crc_cur[9]) ^ crc_cur[11]) ^ crc_cur[13]) ^ crc_cur[16]) ^ crc_cur[18]);
	crc_next[11] <= ((((((((((((((((((((((((crc_dat[1] ^ crc_dat[2]) ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[6]) ^ crc_dat[9]) ^ crc_dat[10]) ^ crc_dat[12]) ^ crc_dat[16]) ^ crc_dat[18]) ^ crc_dat[20]) ^ crc_dat[22]) ^ crc_dat[24]) ^ crc_dat[26]) ^ crc_dat[29]) ^ crc_dat[31]) ^ crc_cur[0]) ^ crc_cur[4]) ^ crc_cur[6]) ^ crc_cur[8]) ^ crc_cur[10]) ^ crc_cur[12]) ^ crc_cur[14]) ^ crc_cur[17]) ^ crc_cur[19]);
	crc_next[12] <= ((((((((((((((((((((((((crc_dat[0] ^ crc_dat[1]) ^ crc_dat[4]) ^ crc_dat[7]) ^ crc_dat[11]) ^ crc_dat[14]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[27]) ^ crc_dat[28]) ^ crc_dat[29]) ^ crc_dat[31]) ^ crc_cur[2]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[15]) ^ crc_cur[16]) ^ crc_cur[17]) ^ crc_cur[19]);
	crc_next[13] <= (((((((((((((((((((((((((crc_dat[0] ^ crc_dat[3]) ^ crc_dat[4]) ^ crc_dat[6]) ^ crc_dat[8]) ^ crc_dat[10]) ^ crc_dat[12]) ^ crc_dat[13]) ^ crc_dat[14]) ^ crc_dat[15]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[21]) ^ crc_dat[25]) ^ crc_dat[31]) ^ crc_cur[0]) ^ crc_cur[1]) ^ crc_cur[2]) ^ crc_cur[3]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[9]) ^ crc_cur[13]) ^ crc_cur[19]);
	crc_next[14] <= (((((((((((((((((((((((crc_dat[1] ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[7]) ^ crc_dat[9]) ^ crc_dat[11]) ^ crc_dat[13]) ^ crc_dat[14]) ^ crc_dat[15]) ^ crc_dat[16]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[22]) ^ crc_dat[26]) ^ crc_cur[1]) ^ crc_cur[2]) ^ crc_cur[3]) ^ crc_cur[4]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[10]) ^ crc_cur[14]);
	crc_next[15] <= ((((((((((((((((((((((((crc_dat[2] ^ crc_dat[5]) ^ crc_dat[6]) ^ crc_dat[8]) ^ crc_dat[10]) ^ crc_dat[12]) ^ crc_dat[14]) ^ crc_dat[15]) ^ crc_dat[16]) ^ crc_dat[17]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[21]) ^ crc_dat[23]) ^ crc_dat[27]) ^ crc_cur[0]) ^ crc_cur[2]) ^ crc_cur[3]) ^ crc_cur[4]) ^ crc_cur[5]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[9]) ^ crc_cur[11]) ^ crc_cur[15]);
	crc_next[16] <= ((((((((((((((((((((((((crc_dat[3] ^ crc_dat[6]) ^ crc_dat[7]) ^ crc_dat[9]) ^ crc_dat[11]) ^ crc_dat[13]) ^ crc_dat[15]) ^ crc_dat[16]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[20]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[24]) ^ crc_dat[28]) ^ crc_cur[1]) ^ crc_cur[3]) ^ crc_cur[4]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[8]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[12]) ^ crc_cur[16]);
	crc_next[17] <= (((((((((((((((((((((((((crc_dat[4] ^ crc_dat[7]) ^ crc_dat[8]) ^ crc_dat[10]) ^ crc_dat[12]) ^ crc_dat[14]) ^ crc_dat[16]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[23]) ^ crc_dat[25]) ^ crc_dat[29]) ^ crc_cur[0]) ^ crc_cur[2]) ^ crc_cur[4]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[11]) ^ crc_cur[13]) ^ crc_cur[17]);
	crc_next[18] <= (((((((((((((((((((((((((crc_dat[5] ^ crc_dat[8]) ^ crc_dat[9]) ^ crc_dat[11]) ^ crc_dat[13]) ^ crc_dat[15]) ^ crc_dat[17]) ^ crc_dat[18]) ^ crc_dat[19]) ^ crc_dat[20]) ^ crc_dat[22]) ^ crc_dat[23]) ^ crc_dat[24]) ^ crc_dat[26]) ^ crc_dat[30]) ^ crc_cur[1]) ^ crc_cur[3]) ^ crc_cur[5]) ^ crc_cur[6]) ^ crc_cur[7]) ^ crc_cur[8]) ^ crc_cur[10]) ^ crc_cur[11]) ^ crc_cur[12]) ^ crc_cur[14]) ^ crc_cur[18]);
	crc_next[19] <= ((((((((((((((((((((((((((((((crc_dat[0] ^ crc_dat[1]) ^ crc_dat[2]) ^ crc_dat[3]) ^ crc_dat[4]) ^ crc_dat[5]) ^ crc_dat[9]) ^ crc_dat[12]) ^ crc_dat[13]) ^ crc_dat[16]) ^ crc_dat[17]) ^ crc_dat[19]) ^ crc_dat[21]) ^ crc_dat[22]) ^ crc_dat[24]) ^ crc_dat[27]) ^ crc_dat[28]) ^ crc_dat[29]) ^ crc_dat[30]) ^ crc_cur[0]) ^ crc_cur[1]) ^ crc_cur[4]) ^ crc_cur[5]) ^ crc_cur[7]) ^ crc_cur[9]) ^ crc_cur[10]) ^ crc_cur[12]) ^ crc_cur[15]) ^ crc_cur[16]) ^ crc_cur[17]) ^ crc_cur[18]);
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	crc_delay <= o_crc;
	state <= next_state;
	if (readControl_select_reading_control40_next_value_ce) begin
		readControl_select <= readControl_select_reading_control40_next_value;
	end
	FMSC_da <= FMSC_data_in;
	FMSC_dta <= FMSC_data_type_in;
	FMSC_db <= FMSC_da;
	FMSC_dtb <= FMSC_dta;
	FMSC_crc_delay <= FMSC_fromCRC;
	fsm_state <= fsm_next_state;
	if (FMSC_stream_controller_sop_tx_t_next_value_ce0) begin
		FMSC_stream_controller_sop <= FMSC_stream_controller_sop_tx_t_next_value0;
	end
	if (FMSC_stream_controller_idle_tx_t_next_value_ce1) begin
		FMSC_stream_controller_idle <= FMSC_stream_controller_idle_tx_t_next_value1;
	end
	if (FMSC_stream_controller_encoder_ready_tx_next_value_ce0) begin
		FMSC_stream_controller_encoder_ready <= FMSC_stream_controller_encoder_ready_tx_next_value0;
	end
	if (FMSC_stream_controller_intermediate_tx_next_value_ce1) begin
		FMSC_stream_controller_intermediate <= FMSC_stream_controller_intermediate_tx_next_value1;
	end
	if (FMSC_stream_controller_eop_tx_cases_next_value_ce) begin
		FMSC_stream_controller_eop <= FMSC_stream_controller_eop_tx_cases_next_value;
	end
	if (FMSC_stream_controller_reset) begin
		FMSC_stream_controller_sop <= 1'd0;
		FMSC_stream_controller_eop <= 1'd0;
		FMSC_stream_controller_idle <= 1'd0;
		FMSC_stream_controller_intermediate <= 1'd0;
		FMSC_stream_controller_encoder_ready <= 1'd0;
		fsm_state <= 3'd0;
	end
	control_state <= control_next_state;
	if (i_data_strobe) begin
		crc_cur <= crc_next;
	end
	if (reset) begin
		crc_cur <= 20'd1048575;
	end
	if (sys_rst) begin
		crc_delay <= 20'd0;
		readControl_select <= 6'd0;
		FMSC_da <= 32'd0;
		FMSC_db <= 32'd0;
		FMSC_dta <= 2'd0;
		FMSC_dtb <= 2'd0;
		FMSC_crc_delay <= 20'd0;
		FMSC_stream_controller_sop <= 1'd0;
		FMSC_stream_controller_eop <= 1'd0;
		FMSC_stream_controller_idle <= 1'd0;
		FMSC_stream_controller_intermediate <= 1'd0;
		FMSC_stream_controller_encoder_ready <= 1'd0;
		crc_cur <= 20'd1048575;
		state <= 2'd0;
		fsm_state <= 3'd0;
		control_state <= 2'd0;
	end
end

endmodule
