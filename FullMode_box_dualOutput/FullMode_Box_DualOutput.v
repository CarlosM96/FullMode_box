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
	output [31:0] data_to_GTP_0,
	output [31:0] data_to_GTP_1,
	output reg [39:0] FIFO_re_OUT,
	output k_o_0,
	output k_o_1,
	input sys_clk,
	input sys_rst
);

reg [19:0] crc_delay_0 = 20'd0;
reg [19:0] crc_delay_1 = 20'd0;
wire [4:0] Mux20_0_sel_in;
wire [33:0] Mux20_0_data_FIFO_0;
wire [33:0] Mux20_0_data_FIFO_1;
wire [33:0] Mux20_0_data_FIFO_2;
wire [33:0] Mux20_0_data_FIFO_3;
wire [33:0] Mux20_0_data_FIFO_4;
wire [33:0] Mux20_0_data_FIFO_5;
wire [33:0] Mux20_0_data_FIFO_6;
wire [33:0] Mux20_0_data_FIFO_7;
wire [33:0] Mux20_0_data_FIFO_8;
wire [33:0] Mux20_0_data_FIFO_9;
wire [33:0] Mux20_0_data_FIFO_10;
wire [33:0] Mux20_0_data_FIFO_11;
wire [33:0] Mux20_0_data_FIFO_12;
wire [33:0] Mux20_0_data_FIFO_13;
wire [33:0] Mux20_0_data_FIFO_14;
wire [33:0] Mux20_0_data_FIFO_15;
wire [33:0] Mux20_0_data_FIFO_16;
wire [33:0] Mux20_0_data_FIFO_17;
wire [33:0] Mux20_0_data_FIFO_18;
wire [33:0] Mux20_0_data_FIFO_19;
wire [19:0] Mux20_0_FIFO_empty_IN;
wire Mux20_0_FIFO_re_IN;
reg [31:0] Mux20_0_data_out;
reg [1:0] Mux20_0_dtype_out;
reg Mux20_0_FIFO_empty_OUT;
reg [19:0] Mux20_0_FIFO_re_OUT;
wire [4:0] Mux20_1_sel_in;
wire [33:0] Mux20_1_data_FIFO_0;
wire [33:0] Mux20_1_data_FIFO_1;
wire [33:0] Mux20_1_data_FIFO_2;
wire [33:0] Mux20_1_data_FIFO_3;
wire [33:0] Mux20_1_data_FIFO_4;
wire [33:0] Mux20_1_data_FIFO_5;
wire [33:0] Mux20_1_data_FIFO_6;
wire [33:0] Mux20_1_data_FIFO_7;
wire [33:0] Mux20_1_data_FIFO_8;
wire [33:0] Mux20_1_data_FIFO_9;
wire [33:0] Mux20_1_data_FIFO_10;
wire [33:0] Mux20_1_data_FIFO_11;
wire [33:0] Mux20_1_data_FIFO_12;
wire [33:0] Mux20_1_data_FIFO_13;
wire [33:0] Mux20_1_data_FIFO_14;
wire [33:0] Mux20_1_data_FIFO_15;
wire [33:0] Mux20_1_data_FIFO_16;
wire [33:0] Mux20_1_data_FIFO_17;
wire [33:0] Mux20_1_data_FIFO_18;
wire [33:0] Mux20_1_data_FIFO_19;
wire [19:0] Mux20_1_FIFO_empty_IN;
wire Mux20_1_FIFO_re_IN;
reg [31:0] Mux20_1_data_out;
reg [1:0] Mux20_1_dtype_out;
reg Mux20_1_FIFO_empty_OUT;
reg [19:0] Mux20_1_FIFO_re_OUT;
wire readControl_0_tx_init;
wire [1:0] readControl_0_data_type;
wire readControl_0_fifo_empty;
reg [4:0] readControl_0_select = 5'd0;
wire readControl_1_tx_init;
wire [1:0] readControl_1_data_type;
wire readControl_1_fifo_empty;
reg [4:0] readControl_1_select = 5'd0;
wire FMSC_0_link_ready;
wire [31:0] FMSC_0_data_in;
wire [1:0] FMSC_0_data_type_in;
reg [31:0] FMSC_0_data_out;
wire FMSC_0_fifo_empty;
wire FMSC_0_fifo_re;
reg FMSC_0_k;
wire [19:0] FMSC_0_fromCRC;
reg [31:0] FMSC_0_toCRC;
wire FMSC_0_crcstrobe;
wire FMSC_0_crcreset;
reg [31:0] FMSC_0_da = 32'd0;
reg [31:0] FMSC_0_db = 32'd0;
reg [1:0] FMSC_0_dta = 2'd0;
reg [1:0] FMSC_0_dtb = 2'd0;
reg [19:0] FMSC_0_crc_delay = 20'd0;
wire FMSC_0_stream_controller_link_ready;
wire FMSC_0_stream_controller_fifo_empty;
wire [1:0] FMSC_0_stream_controller_data_type;
wire [1:0] FMSC_0_stream_controller_data_typeb;
wire FMSC_0_stream_controller_tx_init_done;
reg FMSC_0_stream_controller_sop = 1'd0;
reg FMSC_0_stream_controller_eop = 1'd0;
reg FMSC_0_stream_controller_ign;
reg FMSC_0_stream_controller_idle = 1'd0;
reg FMSC_0_stream_controller_intermediate = 1'd0;
reg FMSC_0_stream_controller_encoder_ready = 1'd0;
reg FMSC_0_stream_controller_fsm_done;
reg FMSC_0_stream_controller_reset = 1'd0;
wire [1:0] FMSC_0_crc_control_data_type;
wire FMSC_0_crc_control_fsm_done;
wire FMSC_0_crc_control_fifo_empty;
reg FMSC_0_crc_control_strobe_crc;
reg FMSC_0_crc_control_reset_crc;
reg FMSC_0_crc_control_fifo_re;
wire FMSC_1_link_ready;
wire [31:0] FMSC_1_data_in;
wire [1:0] FMSC_1_data_type_in;
reg [31:0] FMSC_1_data_out;
wire FMSC_1_fifo_empty;
wire FMSC_1_fifo_re;
reg FMSC_1_k;
wire [19:0] FMSC_1_fromCRC;
reg [31:0] FMSC_1_toCRC;
wire FMSC_1_crcstrobe;
wire FMSC_1_crcreset;
reg [31:0] FMSC_1_da = 32'd0;
reg [31:0] FMSC_1_db = 32'd0;
reg [1:0] FMSC_1_dta = 2'd0;
reg [1:0] FMSC_1_dtb = 2'd0;
reg [19:0] FMSC_1_crc_delay = 20'd0;
wire FMSC_1_stream_controller_link_ready;
wire FMSC_1_stream_controller_fifo_empty;
wire [1:0] FMSC_1_stream_controller_data_type;
wire [1:0] FMSC_1_stream_controller_data_typeb;
wire FMSC_1_stream_controller_tx_init_done;
reg FMSC_1_stream_controller_sop = 1'd0;
reg FMSC_1_stream_controller_eop = 1'd0;
reg FMSC_1_stream_controller_ign;
reg FMSC_1_stream_controller_idle = 1'd0;
reg FMSC_1_stream_controller_intermediate = 1'd0;
reg FMSC_1_stream_controller_encoder_ready = 1'd0;
reg FMSC_1_stream_controller_fsm_done;
reg FMSC_1_stream_controller_reset = 1'd0;
wire [1:0] FMSC_1_crc_control_data_type;
wire FMSC_1_crc_control_fsm_done;
wire FMSC_1_crc_control_fifo_empty;
reg FMSC_1_crc_control_strobe_crc;
reg FMSC_1_crc_control_reset_crc;
reg FMSC_1_crc_control_fifo_re;
wire [31:0] CRC_0_i_data_payload;
wire CRC_0_i_data_strobe;
wire [19:0] CRC_0_o_crc;
wire CRC_0_reset;
wire [31:0] CRC_0_crc_dat;
reg [19:0] CRC_0_crc_cur = 20'd1048575;
reg [19:0] CRC_0_crc_next;
wire [31:0] CRC_1_i_data_payload;
wire CRC_1_i_data_strobe;
wire [19:0] CRC_1_o_crc;
wire CRC_1_reset;
wire [31:0] CRC_1_crc_dat;
reg [19:0] CRC_1_crc_cur = 20'd1048575;
reg [19:0] CRC_1_crc_next;
reg [1:0] reading_control200_state = 2'd0;
reg [1:0] reading_control200_next_state;
reg [4:0] readControl_0_select_reading_control200_next_value;
reg readControl_0_select_reading_control200_next_value_ce;
reg [2:0] fsm0_state = 3'd0;
reg [2:0] fsm0_next_state;
reg FMSC_0_stream_controller_sop_tx0_t_next_value0;
reg FMSC_0_stream_controller_sop_tx0_t_next_value_ce0;
reg FMSC_0_stream_controller_idle_tx0_t_next_value1;
reg FMSC_0_stream_controller_idle_tx0_t_next_value_ce1;
reg FMSC_0_stream_controller_encoder_ready_tx0_next_value0;
reg FMSC_0_stream_controller_encoder_ready_tx0_next_value_ce0;
reg FMSC_0_stream_controller_intermediate_tx0_next_value1;
reg FMSC_0_stream_controller_intermediate_tx0_next_value_ce1;
reg FMSC_0_stream_controller_eop_tx0_cases_next_value;
reg FMSC_0_stream_controller_eop_tx0_cases_next_value_ce;
reg [1:0] control0_state = 2'd0;
reg [1:0] control0_next_state;
reg [1:0] reading_control201_state = 2'd0;
reg [1:0] reading_control201_next_state;
reg [4:0] readControl_1_select_reading_control201_next_value;
reg readControl_1_select_reading_control201_next_value_ce;
reg [2:0] fsm1_state = 3'd0;
reg [2:0] fsm1_next_state;
reg FMSC_1_stream_controller_sop_tx1_t_next_value0;
reg FMSC_1_stream_controller_sop_tx1_t_next_value_ce0;
reg FMSC_1_stream_controller_idle_tx1_t_next_value1;
reg FMSC_1_stream_controller_idle_tx1_t_next_value_ce1;
reg FMSC_1_stream_controller_encoder_ready_tx1_next_value0;
reg FMSC_1_stream_controller_encoder_ready_tx1_next_value_ce0;
reg FMSC_1_stream_controller_intermediate_tx1_next_value1;
reg FMSC_1_stream_controller_intermediate_tx1_next_value_ce1;
reg FMSC_1_stream_controller_eop_tx1_cases_next_value;
reg FMSC_1_stream_controller_eop_tx1_cases_next_value_ce;
reg [1:0] control1_state = 2'd0;
reg [1:0] control1_next_state;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign Mux20_0_data_FIFO_0 = data_FIFO_0;
assign Mux20_0_data_FIFO_1 = data_FIFO_1;
assign Mux20_0_data_FIFO_2 = data_FIFO_2;
assign Mux20_0_data_FIFO_3 = data_FIFO_3;
assign Mux20_0_data_FIFO_4 = data_FIFO_4;
assign Mux20_0_data_FIFO_5 = data_FIFO_5;
assign Mux20_0_data_FIFO_6 = data_FIFO_6;
assign Mux20_0_data_FIFO_7 = data_FIFO_7;
assign Mux20_0_data_FIFO_8 = data_FIFO_8;
assign Mux20_0_data_FIFO_9 = data_FIFO_9;
assign Mux20_0_data_FIFO_10 = data_FIFO_10;
assign Mux20_0_data_FIFO_11 = data_FIFO_11;
assign Mux20_0_data_FIFO_12 = data_FIFO_12;
assign Mux20_0_data_FIFO_13 = data_FIFO_13;
assign Mux20_0_data_FIFO_14 = data_FIFO_14;
assign Mux20_0_data_FIFO_15 = data_FIFO_15;
assign Mux20_0_data_FIFO_16 = data_FIFO_16;
assign Mux20_0_data_FIFO_17 = data_FIFO_17;
assign Mux20_0_data_FIFO_18 = data_FIFO_18;
assign Mux20_0_data_FIFO_19 = data_FIFO_19;
assign Mux20_1_data_FIFO_0 = data_FIFO_20;
assign Mux20_1_data_FIFO_1 = data_FIFO_21;
assign Mux20_1_data_FIFO_2 = data_FIFO_22;
assign Mux20_1_data_FIFO_3 = data_FIFO_23;
assign Mux20_1_data_FIFO_4 = data_FIFO_24;
assign Mux20_1_data_FIFO_5 = data_FIFO_25;
assign Mux20_1_data_FIFO_6 = data_FIFO_26;
assign Mux20_1_data_FIFO_7 = data_FIFO_27;
assign Mux20_1_data_FIFO_8 = data_FIFO_28;
assign Mux20_1_data_FIFO_9 = data_FIFO_29;
assign Mux20_1_data_FIFO_10 = data_FIFO_30;
assign Mux20_1_data_FIFO_11 = data_FIFO_31;
assign Mux20_1_data_FIFO_12 = data_FIFO_32;
assign Mux20_1_data_FIFO_13 = data_FIFO_33;
assign Mux20_1_data_FIFO_14 = data_FIFO_34;
assign Mux20_1_data_FIFO_15 = data_FIFO_35;
assign Mux20_1_data_FIFO_16 = data_FIFO_36;
assign Mux20_1_data_FIFO_17 = data_FIFO_37;
assign Mux20_1_data_FIFO_18 = data_FIFO_38;
assign Mux20_1_data_FIFO_19 = data_FIFO_39;
assign Mux20_0_FIFO_empty_IN = FIFO_empty_IN[19:0];
assign Mux20_1_FIFO_empty_IN = FIFO_empty_IN[39:20];
assign Mux20_0_sel_in = readControl_0_select;
assign Mux20_1_sel_in = readControl_1_select;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	FIFO_re_OUT <= 40'd0;
	FIFO_re_OUT[19:0] <= Mux20_0_FIFO_re_OUT;
	FIFO_re_OUT[39:20] <= Mux20_1_FIFO_re_OUT;
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign Mux20_0_FIFO_re_IN = FMSC_0_fifo_re;
assign Mux20_1_FIFO_re_IN = FMSC_1_fifo_re;
assign readControl_0_tx_init = link_ready;
assign readControl_0_data_type = Mux20_0_dtype_out;
assign readControl_0_fifo_empty = Mux20_0_FIFO_empty_OUT;
assign readControl_1_tx_init = link_ready;
assign readControl_1_data_type = Mux20_1_dtype_out;
assign readControl_1_fifo_empty = Mux20_1_FIFO_empty_OUT;
assign FMSC_0_link_ready = link_ready;
assign FMSC_0_data_in = Mux20_0_data_out;
assign FMSC_0_data_type_in = Mux20_0_dtype_out;
assign FMSC_0_fifo_empty = Mux20_0_FIFO_empty_OUT;
assign data_to_GTP_0 = FMSC_0_data_out;
assign k_o_0 = FMSC_0_k;
assign FMSC_0_fromCRC = crc_delay_0;
assign CRC_0_i_data_strobe = FMSC_0_crcstrobe;
assign CRC_0_reset = FMSC_0_crcreset;
assign CRC_0_i_data_payload = FMSC_0_toCRC;
assign FMSC_1_link_ready = link_ready;
assign FMSC_1_data_in = Mux20_1_data_out;
assign FMSC_1_data_type_in = Mux20_1_dtype_out;
assign FMSC_1_fifo_empty = Mux20_1_FIFO_empty_OUT;
assign data_to_GTP_1 = FMSC_1_data_out;
assign k_o_1 = FMSC_1_k;
assign FMSC_1_fromCRC = crc_delay_1;
assign CRC_1_i_data_strobe = FMSC_1_crcstrobe;
assign CRC_1_reset = FMSC_1_crcreset;
assign CRC_1_i_data_payload = FMSC_1_toCRC;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	Mux20_0_data_out <= 32'd0;
	Mux20_0_dtype_out <= 2'd0;
	Mux20_0_FIFO_empty_OUT <= 1'd0;
	Mux20_0_FIFO_re_OUT <= 20'd0;
	if ((Mux20_0_sel_in == 1'd0)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_0[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_0[33:32];
		Mux20_0_FIFO_re_OUT[0] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[0];
	end
	if ((Mux20_0_sel_in == 1'd1)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_1[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_1[33:32];
		Mux20_0_FIFO_re_OUT[1] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[1];
	end
	if ((Mux20_0_sel_in == 2'd2)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_2[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_2[33:32];
		Mux20_0_FIFO_re_OUT[2] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[2];
	end
	if ((Mux20_0_sel_in == 2'd3)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_3[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_3[33:32];
		Mux20_0_FIFO_re_OUT[3] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[3];
	end
	if ((Mux20_0_sel_in == 3'd4)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_4[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_4[33:32];
		Mux20_0_FIFO_re_OUT[4] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[4];
	end
	if ((Mux20_0_sel_in == 3'd5)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_5[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_5[33:32];
		Mux20_0_FIFO_re_OUT[5] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[5];
	end
	if ((Mux20_0_sel_in == 3'd6)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_6[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_6[33:32];
		Mux20_0_FIFO_re_OUT[6] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[6];
	end
	if ((Mux20_0_sel_in == 3'd7)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_7[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_7[33:32];
		Mux20_0_FIFO_re_OUT[7] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[7];
	end
	if ((Mux20_0_sel_in == 4'd8)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_8[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_8[33:32];
		Mux20_0_FIFO_re_OUT[8] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[8];
	end
	if ((Mux20_0_sel_in == 4'd9)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_9[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_9[33:32];
		Mux20_0_FIFO_re_OUT[9] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[9];
	end
	if ((Mux20_0_sel_in == 4'd10)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_10[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_10[33:32];
		Mux20_0_FIFO_re_OUT[10] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[10];
	end
	if ((Mux20_0_sel_in == 4'd11)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_11[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_11[33:32];
		Mux20_0_FIFO_re_OUT[11] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[11];
	end
	if ((Mux20_0_sel_in == 4'd12)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_12[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_12[33:32];
		Mux20_0_FIFO_re_OUT[12] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[12];
	end
	if ((Mux20_0_sel_in == 4'd13)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_13[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_13[33:32];
		Mux20_0_FIFO_re_OUT[13] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[13];
	end
	if ((Mux20_0_sel_in == 4'd14)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_14[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_14[33:32];
		Mux20_0_FIFO_re_OUT[14] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[14];
	end
	if ((Mux20_0_sel_in == 4'd15)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_15[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_15[33:32];
		Mux20_0_FIFO_re_OUT[15] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[15];
	end
	if ((Mux20_0_sel_in == 5'd16)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_16[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_16[33:32];
		Mux20_0_FIFO_re_OUT[16] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[16];
	end
	if ((Mux20_0_sel_in == 5'd17)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_17[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_17[33:32];
		Mux20_0_FIFO_re_OUT[17] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[17];
	end
	if ((Mux20_0_sel_in == 5'd18)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_18[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_18[33:32];
		Mux20_0_FIFO_re_OUT[18] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[18];
	end
	if ((Mux20_0_sel_in == 5'd19)) begin
		Mux20_0_data_out <= Mux20_0_data_FIFO_19[31:0];
		Mux20_0_dtype_out <= Mux20_0_data_FIFO_19[33:32];
		Mux20_0_FIFO_re_OUT[19] <= Mux20_0_FIFO_re_IN;
		Mux20_0_FIFO_empty_OUT <= Mux20_0_FIFO_empty_IN[19];
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	reading_control200_next_state <= 2'd0;
	readControl_0_select_reading_control200_next_value <= 5'd0;
	readControl_0_select_reading_control200_next_value_ce <= 1'd0;
	reading_control200_next_state <= reading_control200_state;
	case (reading_control200_state)
		1'd1: begin
			if (readControl_0_fifo_empty) begin
				if ((readControl_0_select == 5'd19)) begin
					readControl_0_select_reading_control200_next_value <= 1'd0;
					readControl_0_select_reading_control200_next_value_ce <= 1'd1;
				end else begin
					readControl_0_select_reading_control200_next_value <= (readControl_0_select + 1'd1);
					readControl_0_select_reading_control200_next_value_ce <= 1'd1;
				end
				reading_control200_next_state <= 1'd1;
			end else begin
				if ((readControl_0_data_type != 2'd2)) begin
					reading_control200_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if ((readControl_0_data_type == 2'd2)) begin
				reading_control200_next_state <= 1'd1;
				if ((readControl_0_select == 5'd19)) begin
					readControl_0_select_reading_control200_next_value <= 1'd0;
					readControl_0_select_reading_control200_next_value_ce <= 1'd1;
				end else begin
					readControl_0_select_reading_control200_next_value <= (readControl_0_select + 1'd1);
					readControl_0_select_reading_control200_next_value_ce <= 1'd1;
				end
			end else begin
				reading_control200_next_state <= 2'd2;
			end
		end
		default: begin
			if (readControl_0_tx_init) begin
				readControl_0_select_reading_control200_next_value <= 1'd0;
				readControl_0_select_reading_control200_next_value_ce <= 1'd1;
				reading_control200_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign FMSC_0_stream_controller_link_ready = FMSC_0_link_ready;
assign FMSC_0_stream_controller_fifo_empty = FMSC_0_fifo_empty;
assign FMSC_0_crc_control_fifo_empty = FMSC_0_fifo_empty;
assign FMSC_0_stream_controller_data_type = FMSC_0_data_type_in;
assign FMSC_0_crc_control_data_type = FMSC_0_data_type_in;
assign FMSC_0_stream_controller_data_typeb = FMSC_0_dtb;
assign FMSC_0_stream_controller_tx_init_done = FMSC_0_link_ready;
assign FMSC_0_fifo_re = FMSC_0_crc_control_fifo_re;
assign FMSC_0_crc_control_fsm_done = FMSC_0_stream_controller_fsm_done;
assign FMSC_0_crcstrobe = FMSC_0_crc_control_strobe_crc;
assign FMSC_0_crcreset = FMSC_0_crc_control_reset_crc;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	FMSC_0_toCRC <= 32'd0;
	if (FMSC_0_stream_controller_encoder_ready) begin
		FMSC_0_toCRC <= FMSC_0_data_in;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	FMSC_0_data_out <= 32'd0;
	FMSC_0_k <= 1'd0;
	if (FMSC_0_stream_controller_idle) begin
		FMSC_0_data_out <= 8'd188;
		FMSC_0_k <= 1'd1;
	end
	if (FMSC_0_stream_controller_sop) begin
		FMSC_0_data_out <= 6'd60;
		FMSC_0_k <= 1'd1;
	end
	if (FMSC_0_stream_controller_intermediate) begin
		FMSC_0_data_out <= FMSC_0_db;
	end
	if (FMSC_0_stream_controller_ign) begin
		FMSC_0_data_out <= 7'd92;
		FMSC_0_k <= 1'd1;
	end
	if (FMSC_0_stream_controller_eop) begin
		FMSC_0_data_out <= {FMSC_0_crc_delay, 8'd220};
		FMSC_0_k <= 1'd1;
	end
	if (((((~FMSC_0_stream_controller_idle) & (~FMSC_0_stream_controller_eop)) & (~FMSC_0_stream_controller_sop)) & (~FMSC_0_stream_controller_ign))) begin
		FMSC_0_k <= 1'd0;
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	FMSC_0_stream_controller_ign <= 1'd0;
	FMSC_0_stream_controller_fsm_done <= 1'd0;
	fsm0_next_state <= 3'd0;
	FMSC_0_stream_controller_sop_tx0_t_next_value0 <= 1'd0;
	FMSC_0_stream_controller_sop_tx0_t_next_value_ce0 <= 1'd0;
	FMSC_0_stream_controller_idle_tx0_t_next_value1 <= 1'd0;
	FMSC_0_stream_controller_idle_tx0_t_next_value_ce1 <= 1'd0;
	FMSC_0_stream_controller_encoder_ready_tx0_next_value0 <= 1'd0;
	FMSC_0_stream_controller_encoder_ready_tx0_next_value_ce0 <= 1'd0;
	FMSC_0_stream_controller_intermediate_tx0_next_value1 <= 1'd0;
	FMSC_0_stream_controller_intermediate_tx0_next_value_ce1 <= 1'd0;
	FMSC_0_stream_controller_eop_tx0_cases_next_value <= 1'd0;
	FMSC_0_stream_controller_eop_tx0_cases_next_value_ce <= 1'd0;
	fsm0_next_state <= fsm0_state;
	case (fsm0_state)
		1'd1: begin
			FMSC_0_stream_controller_encoder_ready_tx0_next_value0 <= 1'd1;
			FMSC_0_stream_controller_encoder_ready_tx0_next_value_ce0 <= 1'd1;
			if (FMSC_0_stream_controller_fifo_empty) begin
				fsm0_next_state <= 1'd1;
			end else begin
				if ((FMSC_0_stream_controller_link_ready & (FMSC_0_stream_controller_data_type == 1'd1))) begin
					fsm0_next_state <= 2'd2;
					FMSC_0_stream_controller_sop_tx0_t_next_value0 <= 1'd1;
					FMSC_0_stream_controller_sop_tx0_t_next_value_ce0 <= 1'd1;
					FMSC_0_stream_controller_idle_tx0_t_next_value1 <= 1'd0;
					FMSC_0_stream_controller_idle_tx0_t_next_value_ce1 <= 1'd1;
				end
			end
		end
		2'd2: begin
			fsm0_next_state <= 2'd3;
			FMSC_0_stream_controller_intermediate_tx0_next_value1 <= 1'd1;
			FMSC_0_stream_controller_intermediate_tx0_next_value_ce1 <= 1'd1;
			FMSC_0_stream_controller_sop_tx0_t_next_value0 <= 1'd0;
			FMSC_0_stream_controller_sop_tx0_t_next_value_ce0 <= 1'd1;
		end
		2'd3: begin
			case (FMSC_0_stream_controller_data_typeb)
				1'd0: begin
					FMSC_0_stream_controller_intermediate_tx0_next_value1 <= 1'd1;
					FMSC_0_stream_controller_intermediate_tx0_next_value_ce1 <= 1'd1;
				end
				2'd2: begin
					fsm0_next_state <= 3'd4;
					FMSC_0_stream_controller_eop_tx0_cases_next_value <= 1'd1;
					FMSC_0_stream_controller_eop_tx0_cases_next_value_ce <= 1'd1;
					FMSC_0_stream_controller_intermediate_tx0_next_value1 <= 1'd0;
					FMSC_0_stream_controller_intermediate_tx0_next_value_ce1 <= 1'd1;
				end
				2'd3: begin
					fsm0_next_state <= 2'd3;
					FMSC_0_stream_controller_ign <= 1'd1;
				end
			endcase
		end
		3'd4: begin
			FMSC_0_stream_controller_fsm_done <= 1'd1;
			FMSC_0_stream_controller_eop_tx0_cases_next_value <= 1'd0;
			FMSC_0_stream_controller_eop_tx0_cases_next_value_ce <= 1'd1;
			FMSC_0_stream_controller_idle_tx0_t_next_value1 <= 1'd1;
			FMSC_0_stream_controller_idle_tx0_t_next_value_ce1 <= 1'd1;
			fsm0_next_state <= 1'd1;
		end
		default: begin
			if (FMSC_0_stream_controller_tx_init_done) begin
				if (FMSC_0_stream_controller_link_ready) begin
					if (((FMSC_0_stream_controller_link_ready & (~FMSC_0_stream_controller_fifo_empty)) & (FMSC_0_stream_controller_data_type == 1'd1))) begin
						fsm0_next_state <= 2'd2;
						FMSC_0_stream_controller_sop_tx0_t_next_value0 <= 1'd1;
						FMSC_0_stream_controller_sop_tx0_t_next_value_ce0 <= 1'd1;
						FMSC_0_stream_controller_idle_tx0_t_next_value1 <= 1'd0;
						FMSC_0_stream_controller_idle_tx0_t_next_value_ce1 <= 1'd1;
					end else begin
						fsm0_next_state <= 1'd1;
						FMSC_0_stream_controller_idle_tx0_t_next_value1 <= 1'd1;
						FMSC_0_stream_controller_idle_tx0_t_next_value_ce1 <= 1'd1;
					end
				end else begin
					fsm0_next_state <= 1'd1;
					FMSC_0_stream_controller_idle_tx0_t_next_value1 <= 1'd1;
					FMSC_0_stream_controller_idle_tx0_t_next_value_ce1 <= 1'd1;
				end
			end else begin
				fsm0_next_state <= 1'd0;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	FMSC_0_crc_control_strobe_crc <= 1'd0;
	FMSC_0_crc_control_reset_crc <= 1'd0;
	FMSC_0_crc_control_fifo_re <= 1'd0;
	control0_next_state <= 2'd0;
	control0_next_state <= control0_state;
	case (control0_state)
		1'd1: begin
			FMSC_0_crc_control_fifo_re <= 1'd1;
			case (FMSC_0_crc_control_data_type)
				1'd0: begin
					FMSC_0_crc_control_strobe_crc <= 1'd1;
					FMSC_0_crc_control_reset_crc <= 1'd0;
					control0_next_state <= 1'd1;
				end
				2'd2: begin
					FMSC_0_crc_control_strobe_crc <= 1'd1;
					FMSC_0_crc_control_reset_crc <= 1'd0;
					control0_next_state <= 2'd2;
				end
				2'd3: begin
					FMSC_0_crc_control_strobe_crc <= 1'd0;
					control0_next_state <= 1'd1;
				end
			endcase
		end
		2'd2: begin
			FMSC_0_crc_control_fifo_re <= 1'd0;
			FMSC_0_crc_control_strobe_crc <= 1'd0;
			FMSC_0_crc_control_reset_crc <= 1'd1;
			if (FMSC_0_crc_control_fsm_done) begin
				control0_next_state <= 1'd0;
			end else begin
				control0_next_state <= 2'd2;
			end
		end
		default: begin
			if ((~FMSC_0_crc_control_fifo_empty)) begin
				FMSC_0_crc_control_fifo_re <= 1'd1;
				if ((FMSC_0_crc_control_data_type == 1'd1)) begin
					FMSC_0_crc_control_strobe_crc <= 1'd1;
					FMSC_0_crc_control_reset_crc <= 1'd0;
					control0_next_state <= 1'd1;
				end else begin
					control0_next_state <= 1'd0;
					FMSC_0_crc_control_reset_crc <= 1'd1;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign CRC_0_crc_dat = CRC_0_i_data_payload;
assign CRC_0_o_crc = CRC_0_crc_cur;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	CRC_0_crc_next <= 20'd412242;
	CRC_0_crc_next[0] <= (((((((((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[1]) ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[3]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[17]) ^ CRC_0_crc_cur[18]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[1] <= (((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[16]);
	CRC_0_crc_next[2] <= ((((((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[3]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[18]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[3] <= (((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[18]);
	CRC_0_crc_next[4] <= ((((((((((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[17]) ^ CRC_0_crc_cur[18]);
	CRC_0_crc_next[5] <= (((((((((((((((((((((((((((((((((CRC_0_crc_dat[1] ^ CRC_0_crc_dat[3]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[18]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[6] <= (((((((((((((((((((((((((((((((CRC_0_crc_dat[2] ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[7] <= (((((((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[1]) ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[18]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[8] <= ((((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[17]) ^ CRC_0_crc_cur[18]);
	CRC_0_crc_next[9] <= (((((((((((((((((((((((((((CRC_0_crc_dat[1] ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[18]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[10] <= (((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[1]) ^ CRC_0_crc_dat[3]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[18]);
	CRC_0_crc_next[11] <= ((((((((((((((((((((((((CRC_0_crc_dat[1] ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[17]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[12] <= ((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[1]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[17]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[13] <= (((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[3]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[31]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[19]);
	CRC_0_crc_next[14] <= (((((((((((((((((((((((CRC_0_crc_dat[1] ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[14]);
	CRC_0_crc_next[15] <= ((((((((((((((((((((((((CRC_0_crc_dat[2] ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[15]);
	CRC_0_crc_next[16] <= ((((((((((((((((((((((((CRC_0_crc_dat[3] ^ CRC_0_crc_dat[6]) ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[16]);
	CRC_0_crc_next[17] <= (((((((((((((((((((((((((CRC_0_crc_dat[4] ^ CRC_0_crc_dat[7]) ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[10]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[14]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[25]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[2]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[13]) ^ CRC_0_crc_cur[17]);
	CRC_0_crc_next[18] <= (((((((((((((((((((((((((CRC_0_crc_dat[5] ^ CRC_0_crc_dat[8]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[11]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[15]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[18]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[20]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[23]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[26]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[3]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[6]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[8]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[11]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[14]) ^ CRC_0_crc_cur[18]);
	CRC_0_crc_next[19] <= ((((((((((((((((((((((((((((((CRC_0_crc_dat[0] ^ CRC_0_crc_dat[1]) ^ CRC_0_crc_dat[2]) ^ CRC_0_crc_dat[3]) ^ CRC_0_crc_dat[4]) ^ CRC_0_crc_dat[5]) ^ CRC_0_crc_dat[9]) ^ CRC_0_crc_dat[12]) ^ CRC_0_crc_dat[13]) ^ CRC_0_crc_dat[16]) ^ CRC_0_crc_dat[17]) ^ CRC_0_crc_dat[19]) ^ CRC_0_crc_dat[21]) ^ CRC_0_crc_dat[22]) ^ CRC_0_crc_dat[24]) ^ CRC_0_crc_dat[27]) ^ CRC_0_crc_dat[28]) ^ CRC_0_crc_dat[29]) ^ CRC_0_crc_dat[30]) ^ CRC_0_crc_cur[0]) ^ CRC_0_crc_cur[1]) ^ CRC_0_crc_cur[4]) ^ CRC_0_crc_cur[5]) ^ CRC_0_crc_cur[7]) ^ CRC_0_crc_cur[9]) ^ CRC_0_crc_cur[10]) ^ CRC_0_crc_cur[12]) ^ CRC_0_crc_cur[15]) ^ CRC_0_crc_cur[16]) ^ CRC_0_crc_cur[17]) ^ CRC_0_crc_cur[18]);
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	Mux20_1_data_out <= 32'd0;
	Mux20_1_dtype_out <= 2'd0;
	Mux20_1_FIFO_empty_OUT <= 1'd0;
	Mux20_1_FIFO_re_OUT <= 20'd0;
	if ((Mux20_1_sel_in == 1'd0)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_0[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_0[33:32];
		Mux20_1_FIFO_re_OUT[0] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[0];
	end
	if ((Mux20_1_sel_in == 1'd1)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_1[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_1[33:32];
		Mux20_1_FIFO_re_OUT[1] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[1];
	end
	if ((Mux20_1_sel_in == 2'd2)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_2[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_2[33:32];
		Mux20_1_FIFO_re_OUT[2] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[2];
	end
	if ((Mux20_1_sel_in == 2'd3)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_3[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_3[33:32];
		Mux20_1_FIFO_re_OUT[3] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[3];
	end
	if ((Mux20_1_sel_in == 3'd4)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_4[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_4[33:32];
		Mux20_1_FIFO_re_OUT[4] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[4];
	end
	if ((Mux20_1_sel_in == 3'd5)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_5[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_5[33:32];
		Mux20_1_FIFO_re_OUT[5] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[5];
	end
	if ((Mux20_1_sel_in == 3'd6)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_6[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_6[33:32];
		Mux20_1_FIFO_re_OUT[6] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[6];
	end
	if ((Mux20_1_sel_in == 3'd7)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_7[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_7[33:32];
		Mux20_1_FIFO_re_OUT[7] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[7];
	end
	if ((Mux20_1_sel_in == 4'd8)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_8[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_8[33:32];
		Mux20_1_FIFO_re_OUT[8] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[8];
	end
	if ((Mux20_1_sel_in == 4'd9)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_9[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_9[33:32];
		Mux20_1_FIFO_re_OUT[9] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[9];
	end
	if ((Mux20_1_sel_in == 4'd10)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_10[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_10[33:32];
		Mux20_1_FIFO_re_OUT[10] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[10];
	end
	if ((Mux20_1_sel_in == 4'd11)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_11[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_11[33:32];
		Mux20_1_FIFO_re_OUT[11] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[11];
	end
	if ((Mux20_1_sel_in == 4'd12)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_12[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_12[33:32];
		Mux20_1_FIFO_re_OUT[12] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[12];
	end
	if ((Mux20_1_sel_in == 4'd13)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_13[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_13[33:32];
		Mux20_1_FIFO_re_OUT[13] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[13];
	end
	if ((Mux20_1_sel_in == 4'd14)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_14[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_14[33:32];
		Mux20_1_FIFO_re_OUT[14] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[14];
	end
	if ((Mux20_1_sel_in == 4'd15)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_15[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_15[33:32];
		Mux20_1_FIFO_re_OUT[15] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[15];
	end
	if ((Mux20_1_sel_in == 5'd16)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_16[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_16[33:32];
		Mux20_1_FIFO_re_OUT[16] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[16];
	end
	if ((Mux20_1_sel_in == 5'd17)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_17[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_17[33:32];
		Mux20_1_FIFO_re_OUT[17] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[17];
	end
	if ((Mux20_1_sel_in == 5'd18)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_18[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_18[33:32];
		Mux20_1_FIFO_re_OUT[18] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[18];
	end
	if ((Mux20_1_sel_in == 5'd19)) begin
		Mux20_1_data_out <= Mux20_1_data_FIFO_19[31:0];
		Mux20_1_dtype_out <= Mux20_1_data_FIFO_19[33:32];
		Mux20_1_FIFO_re_OUT[19] <= Mux20_1_FIFO_re_IN;
		Mux20_1_FIFO_empty_OUT <= Mux20_1_FIFO_empty_IN[19];
	end
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	reading_control201_next_state <= 2'd0;
	readControl_1_select_reading_control201_next_value <= 5'd0;
	readControl_1_select_reading_control201_next_value_ce <= 1'd0;
	reading_control201_next_state <= reading_control201_state;
	case (reading_control201_state)
		1'd1: begin
			if (readControl_1_fifo_empty) begin
				if ((readControl_1_select == 5'd19)) begin
					readControl_1_select_reading_control201_next_value <= 1'd0;
					readControl_1_select_reading_control201_next_value_ce <= 1'd1;
				end else begin
					readControl_1_select_reading_control201_next_value <= (readControl_1_select + 1'd1);
					readControl_1_select_reading_control201_next_value_ce <= 1'd1;
				end
				reading_control201_next_state <= 1'd1;
			end else begin
				if ((readControl_1_data_type != 2'd2)) begin
					reading_control201_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if ((readControl_1_data_type == 2'd2)) begin
				reading_control201_next_state <= 1'd1;
				if ((readControl_1_select == 5'd19)) begin
					readControl_1_select_reading_control201_next_value <= 1'd0;
					readControl_1_select_reading_control201_next_value_ce <= 1'd1;
				end else begin
					readControl_1_select_reading_control201_next_value <= (readControl_1_select + 1'd1);
					readControl_1_select_reading_control201_next_value_ce <= 1'd1;
				end
			end else begin
				reading_control201_next_state <= 2'd2;
			end
		end
		default: begin
			if (readControl_1_tx_init) begin
				readControl_1_select_reading_control201_next_value <= 1'd0;
				readControl_1_select_reading_control201_next_value_ce <= 1'd1;
				reading_control201_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign FMSC_1_stream_controller_link_ready = FMSC_1_link_ready;
assign FMSC_1_stream_controller_fifo_empty = FMSC_1_fifo_empty;
assign FMSC_1_crc_control_fifo_empty = FMSC_1_fifo_empty;
assign FMSC_1_stream_controller_data_type = FMSC_1_data_type_in;
assign FMSC_1_crc_control_data_type = FMSC_1_data_type_in;
assign FMSC_1_stream_controller_data_typeb = FMSC_1_dtb;
assign FMSC_1_stream_controller_tx_init_done = FMSC_1_link_ready;
assign FMSC_1_fifo_re = FMSC_1_crc_control_fifo_re;
assign FMSC_1_crc_control_fsm_done = FMSC_1_stream_controller_fsm_done;
assign FMSC_1_crcstrobe = FMSC_1_crc_control_strobe_crc;
assign FMSC_1_crcreset = FMSC_1_crc_control_reset_crc;

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	FMSC_1_toCRC <= 32'd0;
	if (FMSC_1_stream_controller_encoder_ready) begin
		FMSC_1_toCRC <= FMSC_1_data_in;
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	FMSC_1_data_out <= 32'd0;
	FMSC_1_k <= 1'd0;
	if (FMSC_1_stream_controller_idle) begin
		FMSC_1_data_out <= 8'd188;
		FMSC_1_k <= 1'd1;
	end
	if (FMSC_1_stream_controller_sop) begin
		FMSC_1_data_out <= 6'd60;
		FMSC_1_k <= 1'd1;
	end
	if (FMSC_1_stream_controller_intermediate) begin
		FMSC_1_data_out <= FMSC_1_db;
	end
	if (FMSC_1_stream_controller_ign) begin
		FMSC_1_data_out <= 7'd92;
		FMSC_1_k <= 1'd1;
	end
	if (FMSC_1_stream_controller_eop) begin
		FMSC_1_data_out <= {FMSC_1_crc_delay, 8'd220};
		FMSC_1_k <= 1'd1;
	end
	if (((((~FMSC_1_stream_controller_idle) & (~FMSC_1_stream_controller_eop)) & (~FMSC_1_stream_controller_sop)) & (~FMSC_1_stream_controller_ign))) begin
		FMSC_1_k <= 1'd0;
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	FMSC_1_stream_controller_ign <= 1'd0;
	FMSC_1_stream_controller_fsm_done <= 1'd0;
	fsm1_next_state <= 3'd0;
	FMSC_1_stream_controller_sop_tx1_t_next_value0 <= 1'd0;
	FMSC_1_stream_controller_sop_tx1_t_next_value_ce0 <= 1'd0;
	FMSC_1_stream_controller_idle_tx1_t_next_value1 <= 1'd0;
	FMSC_1_stream_controller_idle_tx1_t_next_value_ce1 <= 1'd0;
	FMSC_1_stream_controller_encoder_ready_tx1_next_value0 <= 1'd0;
	FMSC_1_stream_controller_encoder_ready_tx1_next_value_ce0 <= 1'd0;
	FMSC_1_stream_controller_intermediate_tx1_next_value1 <= 1'd0;
	FMSC_1_stream_controller_intermediate_tx1_next_value_ce1 <= 1'd0;
	FMSC_1_stream_controller_eop_tx1_cases_next_value <= 1'd0;
	FMSC_1_stream_controller_eop_tx1_cases_next_value_ce <= 1'd0;
	fsm1_next_state <= fsm1_state;
	case (fsm1_state)
		1'd1: begin
			FMSC_1_stream_controller_encoder_ready_tx1_next_value0 <= 1'd1;
			FMSC_1_stream_controller_encoder_ready_tx1_next_value_ce0 <= 1'd1;
			if (FMSC_1_stream_controller_fifo_empty) begin
				fsm1_next_state <= 1'd1;
			end else begin
				if ((FMSC_1_stream_controller_link_ready & (FMSC_1_stream_controller_data_type == 1'd1))) begin
					fsm1_next_state <= 2'd2;
					FMSC_1_stream_controller_sop_tx1_t_next_value0 <= 1'd1;
					FMSC_1_stream_controller_sop_tx1_t_next_value_ce0 <= 1'd1;
					FMSC_1_stream_controller_idle_tx1_t_next_value1 <= 1'd0;
					FMSC_1_stream_controller_idle_tx1_t_next_value_ce1 <= 1'd1;
				end
			end
		end
		2'd2: begin
			fsm1_next_state <= 2'd3;
			FMSC_1_stream_controller_intermediate_tx1_next_value1 <= 1'd1;
			FMSC_1_stream_controller_intermediate_tx1_next_value_ce1 <= 1'd1;
			FMSC_1_stream_controller_sop_tx1_t_next_value0 <= 1'd0;
			FMSC_1_stream_controller_sop_tx1_t_next_value_ce0 <= 1'd1;
		end
		2'd3: begin
			case (FMSC_1_stream_controller_data_typeb)
				1'd0: begin
					FMSC_1_stream_controller_intermediate_tx1_next_value1 <= 1'd1;
					FMSC_1_stream_controller_intermediate_tx1_next_value_ce1 <= 1'd1;
				end
				2'd2: begin
					fsm1_next_state <= 3'd4;
					FMSC_1_stream_controller_eop_tx1_cases_next_value <= 1'd1;
					FMSC_1_stream_controller_eop_tx1_cases_next_value_ce <= 1'd1;
					FMSC_1_stream_controller_intermediate_tx1_next_value1 <= 1'd0;
					FMSC_1_stream_controller_intermediate_tx1_next_value_ce1 <= 1'd1;
				end
				2'd3: begin
					fsm1_next_state <= 2'd3;
					FMSC_1_stream_controller_ign <= 1'd1;
				end
			endcase
		end
		3'd4: begin
			FMSC_1_stream_controller_fsm_done <= 1'd1;
			FMSC_1_stream_controller_eop_tx1_cases_next_value <= 1'd0;
			FMSC_1_stream_controller_eop_tx1_cases_next_value_ce <= 1'd1;
			FMSC_1_stream_controller_idle_tx1_t_next_value1 <= 1'd1;
			FMSC_1_stream_controller_idle_tx1_t_next_value_ce1 <= 1'd1;
			fsm1_next_state <= 1'd1;
		end
		default: begin
			if (FMSC_1_stream_controller_tx_init_done) begin
				if (FMSC_1_stream_controller_link_ready) begin
					if (((FMSC_1_stream_controller_link_ready & (~FMSC_1_stream_controller_fifo_empty)) & (FMSC_1_stream_controller_data_type == 1'd1))) begin
						fsm1_next_state <= 2'd2;
						FMSC_1_stream_controller_sop_tx1_t_next_value0 <= 1'd1;
						FMSC_1_stream_controller_sop_tx1_t_next_value_ce0 <= 1'd1;
						FMSC_1_stream_controller_idle_tx1_t_next_value1 <= 1'd0;
						FMSC_1_stream_controller_idle_tx1_t_next_value_ce1 <= 1'd1;
					end else begin
						fsm1_next_state <= 1'd1;
						FMSC_1_stream_controller_idle_tx1_t_next_value1 <= 1'd1;
						FMSC_1_stream_controller_idle_tx1_t_next_value_ce1 <= 1'd1;
					end
				end else begin
					fsm1_next_state <= 1'd1;
					FMSC_1_stream_controller_idle_tx1_t_next_value1 <= 1'd1;
					FMSC_1_stream_controller_idle_tx1_t_next_value_ce1 <= 1'd1;
				end
			end else begin
				fsm1_next_state <= 1'd0;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	FMSC_1_crc_control_strobe_crc <= 1'd0;
	FMSC_1_crc_control_reset_crc <= 1'd0;
	FMSC_1_crc_control_fifo_re <= 1'd0;
	control1_next_state <= 2'd0;
	control1_next_state <= control1_state;
	case (control1_state)
		1'd1: begin
			FMSC_1_crc_control_fifo_re <= 1'd1;
			case (FMSC_1_crc_control_data_type)
				1'd0: begin
					FMSC_1_crc_control_strobe_crc <= 1'd1;
					FMSC_1_crc_control_reset_crc <= 1'd0;
					control1_next_state <= 1'd1;
				end
				2'd2: begin
					FMSC_1_crc_control_strobe_crc <= 1'd1;
					FMSC_1_crc_control_reset_crc <= 1'd0;
					control1_next_state <= 2'd2;
				end
				2'd3: begin
					FMSC_1_crc_control_strobe_crc <= 1'd0;
					control1_next_state <= 1'd1;
				end
			endcase
		end
		2'd2: begin
			FMSC_1_crc_control_fifo_re <= 1'd0;
			FMSC_1_crc_control_strobe_crc <= 1'd0;
			FMSC_1_crc_control_reset_crc <= 1'd1;
			if (FMSC_1_crc_control_fsm_done) begin
				control1_next_state <= 1'd0;
			end else begin
				control1_next_state <= 2'd2;
			end
		end
		default: begin
			if ((~FMSC_1_crc_control_fifo_empty)) begin
				FMSC_1_crc_control_fifo_re <= 1'd1;
				if ((FMSC_1_crc_control_data_type == 1'd1)) begin
					FMSC_1_crc_control_strobe_crc <= 1'd1;
					FMSC_1_crc_control_reset_crc <= 1'd0;
					control1_next_state <= 1'd1;
				end else begin
					control1_next_state <= 1'd0;
					FMSC_1_crc_control_reset_crc <= 1'd1;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign CRC_1_crc_dat = CRC_1_i_data_payload;
assign CRC_1_o_crc = CRC_1_crc_cur;

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	CRC_1_crc_next <= 20'd412242;
	CRC_1_crc_next[0] <= (((((((((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[1]) ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[3]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[17]) ^ CRC_1_crc_cur[18]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[1] <= (((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[16]);
	CRC_1_crc_next[2] <= ((((((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[3]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[18]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[3] <= (((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[18]);
	CRC_1_crc_next[4] <= ((((((((((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[17]) ^ CRC_1_crc_cur[18]);
	CRC_1_crc_next[5] <= (((((((((((((((((((((((((((((((((CRC_1_crc_dat[1] ^ CRC_1_crc_dat[3]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[18]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[6] <= (((((((((((((((((((((((((((((((CRC_1_crc_dat[2] ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[7] <= (((((((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[1]) ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[18]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[8] <= ((((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[17]) ^ CRC_1_crc_cur[18]);
	CRC_1_crc_next[9] <= (((((((((((((((((((((((((((CRC_1_crc_dat[1] ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[18]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[10] <= (((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[1]) ^ CRC_1_crc_dat[3]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[18]);
	CRC_1_crc_next[11] <= ((((((((((((((((((((((((CRC_1_crc_dat[1] ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[17]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[12] <= ((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[1]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[17]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[13] <= (((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[3]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[31]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[19]);
	CRC_1_crc_next[14] <= (((((((((((((((((((((((CRC_1_crc_dat[1] ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[14]);
	CRC_1_crc_next[15] <= ((((((((((((((((((((((((CRC_1_crc_dat[2] ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[15]);
	CRC_1_crc_next[16] <= ((((((((((((((((((((((((CRC_1_crc_dat[3] ^ CRC_1_crc_dat[6]) ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[16]);
	CRC_1_crc_next[17] <= (((((((((((((((((((((((((CRC_1_crc_dat[4] ^ CRC_1_crc_dat[7]) ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[10]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[14]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[25]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[2]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[13]) ^ CRC_1_crc_cur[17]);
	CRC_1_crc_next[18] <= (((((((((((((((((((((((((CRC_1_crc_dat[5] ^ CRC_1_crc_dat[8]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[11]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[15]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[18]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[20]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[23]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[26]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[3]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[6]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[8]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[11]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[14]) ^ CRC_1_crc_cur[18]);
	CRC_1_crc_next[19] <= ((((((((((((((((((((((((((((((CRC_1_crc_dat[0] ^ CRC_1_crc_dat[1]) ^ CRC_1_crc_dat[2]) ^ CRC_1_crc_dat[3]) ^ CRC_1_crc_dat[4]) ^ CRC_1_crc_dat[5]) ^ CRC_1_crc_dat[9]) ^ CRC_1_crc_dat[12]) ^ CRC_1_crc_dat[13]) ^ CRC_1_crc_dat[16]) ^ CRC_1_crc_dat[17]) ^ CRC_1_crc_dat[19]) ^ CRC_1_crc_dat[21]) ^ CRC_1_crc_dat[22]) ^ CRC_1_crc_dat[24]) ^ CRC_1_crc_dat[27]) ^ CRC_1_crc_dat[28]) ^ CRC_1_crc_dat[29]) ^ CRC_1_crc_dat[30]) ^ CRC_1_crc_cur[0]) ^ CRC_1_crc_cur[1]) ^ CRC_1_crc_cur[4]) ^ CRC_1_crc_cur[5]) ^ CRC_1_crc_cur[7]) ^ CRC_1_crc_cur[9]) ^ CRC_1_crc_cur[10]) ^ CRC_1_crc_cur[12]) ^ CRC_1_crc_cur[15]) ^ CRC_1_crc_cur[16]) ^ CRC_1_crc_cur[17]) ^ CRC_1_crc_cur[18]);
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	crc_delay_0 <= CRC_0_o_crc;
	crc_delay_1 <= CRC_1_o_crc;
	reading_control200_state <= reading_control200_next_state;
	if (readControl_0_select_reading_control200_next_value_ce) begin
		readControl_0_select <= readControl_0_select_reading_control200_next_value;
	end
	FMSC_0_da <= FMSC_0_data_in;
	FMSC_0_dta <= FMSC_0_data_type_in;
	FMSC_0_db <= FMSC_0_da;
	FMSC_0_dtb <= FMSC_0_dta;
	FMSC_0_crc_delay <= FMSC_0_fromCRC;
	fsm0_state <= fsm0_next_state;
	if (FMSC_0_stream_controller_sop_tx0_t_next_value_ce0) begin
		FMSC_0_stream_controller_sop <= FMSC_0_stream_controller_sop_tx0_t_next_value0;
	end
	if (FMSC_0_stream_controller_idle_tx0_t_next_value_ce1) begin
		FMSC_0_stream_controller_idle <= FMSC_0_stream_controller_idle_tx0_t_next_value1;
	end
	if (FMSC_0_stream_controller_encoder_ready_tx0_next_value_ce0) begin
		FMSC_0_stream_controller_encoder_ready <= FMSC_0_stream_controller_encoder_ready_tx0_next_value0;
	end
	if (FMSC_0_stream_controller_intermediate_tx0_next_value_ce1) begin
		FMSC_0_stream_controller_intermediate <= FMSC_0_stream_controller_intermediate_tx0_next_value1;
	end
	if (FMSC_0_stream_controller_eop_tx0_cases_next_value_ce) begin
		FMSC_0_stream_controller_eop <= FMSC_0_stream_controller_eop_tx0_cases_next_value;
	end
	if (FMSC_0_stream_controller_reset) begin
		FMSC_0_stream_controller_sop <= 1'd0;
		FMSC_0_stream_controller_eop <= 1'd0;
		FMSC_0_stream_controller_idle <= 1'd0;
		FMSC_0_stream_controller_intermediate <= 1'd0;
		FMSC_0_stream_controller_encoder_ready <= 1'd0;
		fsm0_state <= 3'd0;
	end
	control0_state <= control0_next_state;
	if (CRC_0_i_data_strobe) begin
		CRC_0_crc_cur <= CRC_0_crc_next;
	end
	if (CRC_0_reset) begin
		CRC_0_crc_cur <= 20'd1048575;
	end
	reading_control201_state <= reading_control201_next_state;
	if (readControl_1_select_reading_control201_next_value_ce) begin
		readControl_1_select <= readControl_1_select_reading_control201_next_value;
	end
	FMSC_1_da <= FMSC_1_data_in;
	FMSC_1_dta <= FMSC_1_data_type_in;
	FMSC_1_db <= FMSC_1_da;
	FMSC_1_dtb <= FMSC_1_dta;
	FMSC_1_crc_delay <= FMSC_1_fromCRC;
	fsm1_state <= fsm1_next_state;
	if (FMSC_1_stream_controller_sop_tx1_t_next_value_ce0) begin
		FMSC_1_stream_controller_sop <= FMSC_1_stream_controller_sop_tx1_t_next_value0;
	end
	if (FMSC_1_stream_controller_idle_tx1_t_next_value_ce1) begin
		FMSC_1_stream_controller_idle <= FMSC_1_stream_controller_idle_tx1_t_next_value1;
	end
	if (FMSC_1_stream_controller_encoder_ready_tx1_next_value_ce0) begin
		FMSC_1_stream_controller_encoder_ready <= FMSC_1_stream_controller_encoder_ready_tx1_next_value0;
	end
	if (FMSC_1_stream_controller_intermediate_tx1_next_value_ce1) begin
		FMSC_1_stream_controller_intermediate <= FMSC_1_stream_controller_intermediate_tx1_next_value1;
	end
	if (FMSC_1_stream_controller_eop_tx1_cases_next_value_ce) begin
		FMSC_1_stream_controller_eop <= FMSC_1_stream_controller_eop_tx1_cases_next_value;
	end
	if (FMSC_1_stream_controller_reset) begin
		FMSC_1_stream_controller_sop <= 1'd0;
		FMSC_1_stream_controller_eop <= 1'd0;
		FMSC_1_stream_controller_idle <= 1'd0;
		FMSC_1_stream_controller_intermediate <= 1'd0;
		FMSC_1_stream_controller_encoder_ready <= 1'd0;
		fsm1_state <= 3'd0;
	end
	control1_state <= control1_next_state;
	if (CRC_1_i_data_strobe) begin
		CRC_1_crc_cur <= CRC_1_crc_next;
	end
	if (CRC_1_reset) begin
		CRC_1_crc_cur <= 20'd1048575;
	end
	if (sys_rst) begin
		crc_delay_0 <= 20'd0;
		crc_delay_1 <= 20'd0;
		readControl_0_select <= 5'd0;
		readControl_1_select <= 5'd0;
		FMSC_0_da <= 32'd0;
		FMSC_0_db <= 32'd0;
		FMSC_0_dta <= 2'd0;
		FMSC_0_dtb <= 2'd0;
		FMSC_0_crc_delay <= 20'd0;
		FMSC_0_stream_controller_sop <= 1'd0;
		FMSC_0_stream_controller_eop <= 1'd0;
		FMSC_0_stream_controller_idle <= 1'd0;
		FMSC_0_stream_controller_intermediate <= 1'd0;
		FMSC_0_stream_controller_encoder_ready <= 1'd0;
		FMSC_1_da <= 32'd0;
		FMSC_1_db <= 32'd0;
		FMSC_1_dta <= 2'd0;
		FMSC_1_dtb <= 2'd0;
		FMSC_1_crc_delay <= 20'd0;
		FMSC_1_stream_controller_sop <= 1'd0;
		FMSC_1_stream_controller_eop <= 1'd0;
		FMSC_1_stream_controller_idle <= 1'd0;
		FMSC_1_stream_controller_intermediate <= 1'd0;
		FMSC_1_stream_controller_encoder_ready <= 1'd0;
		CRC_0_crc_cur <= 20'd1048575;
		CRC_1_crc_cur <= 20'd1048575;
		reading_control200_state <= 2'd0;
		fsm0_state <= 3'd0;
		control0_state <= 2'd0;
		reading_control201_state <= 2'd0;
		fsm1_state <= 3'd0;
		control1_state <= 2'd0;
	end
end

endmodule
