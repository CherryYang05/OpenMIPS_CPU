// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 17:33:03 2019
// Host        : DESKTOP-localhost running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/Software/Xilinx/Vivado_Project/uart/uart.sim/sim_1/synth/timing/xsim/tb_uart_tx_top_time_synth.v
// Design      : baudrate_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* C_BPS115200 = "433" *) (* C_BPS19200 = "2603" *) (* C_BPS38400 = "1301" *) 
(* C_BPS57600 = "867" *) (* C_BPS9600 = "5207" *) (* C_BPS_SELECT = "433" *) 
(* NotValidForBitStream *)
module baudrate_gen
   (I_clk,
    I_rst_n,
    I_bps_tx_clk_en,
    I_bps_rx_clk_en,
    O_bps_tx_clk,
    O_bps_rx_clk);
  input I_clk;
  input I_rst_n;
  input I_bps_tx_clk_en;
  input I_bps_rx_clk_en;
  output O_bps_tx_clk;
  output O_bps_rx_clk;

  wire I_bps_rx_clk_en;
  wire I_bps_rx_clk_en_IBUF;
  wire I_bps_tx_clk_en;
  wire I_bps_tx_clk_en_IBUF;
  wire I_clk;
  wire I_clk_IBUF;
  wire I_clk_IBUF_BUFG;
  wire I_rst_n;
  wire I_rst_n_IBUF;
  wire O_bps_rx_clk;
  wire O_bps_rx_clk_OBUF;
  wire O_bps_rx_clk_OBUF_inst_i_2_n_0;
  wire O_bps_rx_clk_OBUF_inst_i_3_n_0;
  wire O_bps_tx_clk;
  wire O_bps_tx_clk_OBUF;
  wire O_bps_tx_clk_OBUF_inst_i_2_n_0;
  wire O_bps_tx_clk_OBUF_inst_i_3_n_0;
  wire \R_bps_rx_cnt[0]_i_1_n_0 ;
  wire \R_bps_rx_cnt[10]_i_1_n_0 ;
  wire \R_bps_rx_cnt[11]_i_1_n_0 ;
  wire \R_bps_rx_cnt[12]_i_1_n_0 ;
  wire \R_bps_rx_cnt[12]_i_3_n_0 ;
  wire \R_bps_rx_cnt[12]_i_4_n_0 ;
  wire \R_bps_rx_cnt[1]_i_1_n_0 ;
  wire \R_bps_rx_cnt[2]_i_1_n_0 ;
  wire \R_bps_rx_cnt[3]_i_1_n_0 ;
  wire \R_bps_rx_cnt[4]_i_1_n_0 ;
  wire \R_bps_rx_cnt[5]_i_1_n_0 ;
  wire \R_bps_rx_cnt[6]_i_1_n_0 ;
  wire \R_bps_rx_cnt[7]_i_1_n_0 ;
  wire \R_bps_rx_cnt[8]_i_1_n_0 ;
  wire \R_bps_rx_cnt[9]_i_1_n_0 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_1 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_2 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_3 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_4 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_5 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_6 ;
  wire \R_bps_rx_cnt_reg[12]_i_2_n_7 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_0 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_1 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_2 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_3 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_4 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_5 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_6 ;
  wire \R_bps_rx_cnt_reg[4]_i_2_n_7 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_0 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_1 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_2 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_3 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_4 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_5 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_6 ;
  wire \R_bps_rx_cnt_reg[8]_i_2_n_7 ;
  wire \R_bps_rx_cnt_reg_n_0_[0] ;
  wire \R_bps_rx_cnt_reg_n_0_[10] ;
  wire \R_bps_rx_cnt_reg_n_0_[11] ;
  wire \R_bps_rx_cnt_reg_n_0_[12] ;
  wire \R_bps_rx_cnt_reg_n_0_[1] ;
  wire \R_bps_rx_cnt_reg_n_0_[2] ;
  wire \R_bps_rx_cnt_reg_n_0_[3] ;
  wire \R_bps_rx_cnt_reg_n_0_[4] ;
  wire \R_bps_rx_cnt_reg_n_0_[5] ;
  wire \R_bps_rx_cnt_reg_n_0_[6] ;
  wire \R_bps_rx_cnt_reg_n_0_[7] ;
  wire \R_bps_rx_cnt_reg_n_0_[8] ;
  wire \R_bps_rx_cnt_reg_n_0_[9] ;
  wire \R_bps_tx_cnt[12]_i_2_n_0 ;
  wire \R_bps_tx_cnt[12]_i_4_n_0 ;
  wire \R_bps_tx_cnt_reg[12]_i_3_n_1 ;
  wire \R_bps_tx_cnt_reg[12]_i_3_n_2 ;
  wire \R_bps_tx_cnt_reg[12]_i_3_n_3 ;
  wire \R_bps_tx_cnt_reg[4]_i_2_n_0 ;
  wire \R_bps_tx_cnt_reg[4]_i_2_n_1 ;
  wire \R_bps_tx_cnt_reg[4]_i_2_n_2 ;
  wire \R_bps_tx_cnt_reg[4]_i_2_n_3 ;
  wire \R_bps_tx_cnt_reg[8]_i_2_n_0 ;
  wire \R_bps_tx_cnt_reg[8]_i_2_n_1 ;
  wire \R_bps_tx_cnt_reg[8]_i_2_n_2 ;
  wire \R_bps_tx_cnt_reg[8]_i_2_n_3 ;
  wire \R_bps_tx_cnt_reg_n_0_[0] ;
  wire \R_bps_tx_cnt_reg_n_0_[10] ;
  wire \R_bps_tx_cnt_reg_n_0_[11] ;
  wire \R_bps_tx_cnt_reg_n_0_[12] ;
  wire \R_bps_tx_cnt_reg_n_0_[1] ;
  wire \R_bps_tx_cnt_reg_n_0_[2] ;
  wire \R_bps_tx_cnt_reg_n_0_[3] ;
  wire \R_bps_tx_cnt_reg_n_0_[4] ;
  wire \R_bps_tx_cnt_reg_n_0_[5] ;
  wire \R_bps_tx_cnt_reg_n_0_[6] ;
  wire \R_bps_tx_cnt_reg_n_0_[7] ;
  wire \R_bps_tx_cnt_reg_n_0_[8] ;
  wire \R_bps_tx_cnt_reg_n_0_[9] ;
  wire [12:1]data0;
  wire [12:0]p_0_in;
  wire [3:3]\NLW_R_bps_rx_cnt_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_R_bps_tx_cnt_reg[12]_i_3_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_uart_tx_top_time_synth.sdf",,,,"tool_control");
end
  IBUF I_bps_rx_clk_en_IBUF_inst
       (.I(I_bps_rx_clk_en),
        .O(I_bps_rx_clk_en_IBUF));
  IBUF I_bps_tx_clk_en_IBUF_inst
       (.I(I_bps_tx_clk_en),
        .O(I_bps_tx_clk_en_IBUF));
  BUFG I_clk_IBUF_BUFG_inst
       (.I(I_clk_IBUF),
        .O(I_clk_IBUF_BUFG));
  IBUF I_clk_IBUF_inst
       (.I(I_clk),
        .O(I_clk_IBUF));
  IBUF I_rst_n_IBUF_inst
       (.I(I_rst_n),
        .O(I_rst_n_IBUF));
  OBUF O_bps_rx_clk_OBUF_inst
       (.I(O_bps_rx_clk_OBUF),
        .O(O_bps_rx_clk));
  LUT5 #(
    .INIT(32'h00000002)) 
    O_bps_rx_clk_OBUF_inst_i_1
       (.I0(O_bps_rx_clk_OBUF_inst_i_2_n_0),
        .I1(O_bps_rx_clk_OBUF_inst_i_3_n_0),
        .I2(\R_bps_rx_cnt_reg_n_0_[5] ),
        .I3(\R_bps_rx_cnt_reg_n_0_[8] ),
        .I4(\R_bps_rx_cnt_reg_n_0_[0] ),
        .O(O_bps_rx_clk_OBUF));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    O_bps_rx_clk_OBUF_inst_i_2
       (.I0(\R_bps_rx_cnt_reg_n_0_[11] ),
        .I1(\R_bps_rx_cnt_reg_n_0_[9] ),
        .I2(\R_bps_rx_cnt_reg_n_0_[12] ),
        .I3(\R_bps_rx_cnt_reg_n_0_[10] ),
        .I4(\R_bps_rx_cnt_reg_n_0_[2] ),
        .I5(\R_bps_rx_cnt_reg_n_0_[7] ),
        .O(O_bps_rx_clk_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    O_bps_rx_clk_OBUF_inst_i_3
       (.I0(\R_bps_rx_cnt_reg_n_0_[6] ),
        .I1(\R_bps_rx_cnt_reg_n_0_[1] ),
        .I2(\R_bps_rx_cnt_reg_n_0_[3] ),
        .I3(\R_bps_rx_cnt_reg_n_0_[4] ),
        .O(O_bps_rx_clk_OBUF_inst_i_3_n_0));
  OBUF O_bps_tx_clk_OBUF_inst
       (.I(O_bps_tx_clk_OBUF),
        .O(O_bps_tx_clk));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    O_bps_tx_clk_OBUF_inst_i_1
       (.I0(O_bps_tx_clk_OBUF_inst_i_2_n_0),
        .I1(\R_bps_tx_cnt_reg_n_0_[8] ),
        .I2(\R_bps_tx_cnt_reg_n_0_[4] ),
        .I3(\R_bps_tx_cnt_reg_n_0_[7] ),
        .I4(\R_bps_tx_cnt_reg_n_0_[5] ),
        .I5(O_bps_tx_clk_OBUF_inst_i_3_n_0),
        .O(O_bps_tx_clk_OBUF));
  LUT5 #(
    .INIT(32'h00000001)) 
    O_bps_tx_clk_OBUF_inst_i_2
       (.I0(\R_bps_tx_cnt_reg_n_0_[9] ),
        .I1(\R_bps_tx_cnt_reg_n_0_[12] ),
        .I2(\R_bps_tx_cnt_reg_n_0_[6] ),
        .I3(\R_bps_tx_cnt_reg_n_0_[11] ),
        .I4(\R_bps_tx_cnt_reg_n_0_[10] ),
        .O(O_bps_tx_clk_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    O_bps_tx_clk_OBUF_inst_i_3
       (.I0(\R_bps_tx_cnt_reg_n_0_[3] ),
        .I1(\R_bps_tx_cnt_reg_n_0_[2] ),
        .I2(\R_bps_tx_cnt_reg_n_0_[0] ),
        .I3(\R_bps_tx_cnt_reg_n_0_[1] ),
        .O(O_bps_tx_clk_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_bps_rx_cnt[0]_i_1 
       (.I0(I_bps_rx_clk_en_IBUF),
        .I1(\R_bps_rx_cnt_reg_n_0_[0] ),
        .O(\R_bps_rx_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[10]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[12]_i_2_n_6 ),
        .O(\R_bps_rx_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[11]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[12]_i_2_n_5 ),
        .O(\R_bps_rx_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[12]_i_1 
       (.I0(I_bps_rx_clk_en_IBUF),
        .I1(\R_bps_rx_cnt_reg[12]_i_2_n_4 ),
        .I2(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .O(\R_bps_rx_cnt[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \R_bps_rx_cnt[12]_i_3 
       (.I0(\R_bps_rx_cnt[12]_i_4_n_0 ),
        .I1(\R_bps_rx_cnt_reg_n_0_[1] ),
        .I2(\R_bps_rx_cnt_reg_n_0_[8] ),
        .I3(\R_bps_rx_cnt_reg_n_0_[6] ),
        .I4(O_bps_rx_clk_OBUF_inst_i_2_n_0),
        .O(\R_bps_rx_cnt[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \R_bps_rx_cnt[12]_i_4 
       (.I0(\R_bps_rx_cnt_reg_n_0_[5] ),
        .I1(\R_bps_rx_cnt_reg_n_0_[4] ),
        .I2(\R_bps_rx_cnt_reg_n_0_[0] ),
        .I3(\R_bps_rx_cnt_reg_n_0_[3] ),
        .O(\R_bps_rx_cnt[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[1]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[4]_i_2_n_7 ),
        .O(\R_bps_rx_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[2]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[4]_i_2_n_6 ),
        .O(\R_bps_rx_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[3]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[4]_i_2_n_5 ),
        .O(\R_bps_rx_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[4]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[4]_i_2_n_4 ),
        .O(\R_bps_rx_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[5]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[8]_i_2_n_7 ),
        .O(\R_bps_rx_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[6]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[8]_i_2_n_6 ),
        .O(\R_bps_rx_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[7]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[8]_i_2_n_5 ),
        .O(\R_bps_rx_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[8]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[8]_i_2_n_4 ),
        .O(\R_bps_rx_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_rx_cnt[9]_i_1 
       (.I0(\R_bps_rx_cnt[12]_i_3_n_0 ),
        .I1(I_bps_rx_clk_en_IBUF),
        .I2(\R_bps_rx_cnt_reg[12]_i_2_n_7 ),
        .O(\R_bps_rx_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[0] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[0]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[10] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[10]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[11] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[11]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[12] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[12]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[12] ));
  CARRY4 \R_bps_rx_cnt_reg[12]_i_2 
       (.CI(\R_bps_rx_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_R_bps_rx_cnt_reg[12]_i_2_CO_UNCONNECTED [3],\R_bps_rx_cnt_reg[12]_i_2_n_1 ,\R_bps_rx_cnt_reg[12]_i_2_n_2 ,\R_bps_rx_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\R_bps_rx_cnt_reg[12]_i_2_n_4 ,\R_bps_rx_cnt_reg[12]_i_2_n_5 ,\R_bps_rx_cnt_reg[12]_i_2_n_6 ,\R_bps_rx_cnt_reg[12]_i_2_n_7 }),
        .S({\R_bps_rx_cnt_reg_n_0_[12] ,\R_bps_rx_cnt_reg_n_0_[11] ,\R_bps_rx_cnt_reg_n_0_[10] ,\R_bps_rx_cnt_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[1] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[1]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[2] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[2]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[3] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[3]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[4] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[4]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[4] ));
  CARRY4 \R_bps_rx_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\R_bps_rx_cnt_reg[4]_i_2_n_0 ,\R_bps_rx_cnt_reg[4]_i_2_n_1 ,\R_bps_rx_cnt_reg[4]_i_2_n_2 ,\R_bps_rx_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\R_bps_rx_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\R_bps_rx_cnt_reg[4]_i_2_n_4 ,\R_bps_rx_cnt_reg[4]_i_2_n_5 ,\R_bps_rx_cnt_reg[4]_i_2_n_6 ,\R_bps_rx_cnt_reg[4]_i_2_n_7 }),
        .S({\R_bps_rx_cnt_reg_n_0_[4] ,\R_bps_rx_cnt_reg_n_0_[3] ,\R_bps_rx_cnt_reg_n_0_[2] ,\R_bps_rx_cnt_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[5] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[5]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[6] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[6]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[7] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[7]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[8] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[8]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[8] ));
  CARRY4 \R_bps_rx_cnt_reg[8]_i_2 
       (.CI(\R_bps_rx_cnt_reg[4]_i_2_n_0 ),
        .CO({\R_bps_rx_cnt_reg[8]_i_2_n_0 ,\R_bps_rx_cnt_reg[8]_i_2_n_1 ,\R_bps_rx_cnt_reg[8]_i_2_n_2 ,\R_bps_rx_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\R_bps_rx_cnt_reg[8]_i_2_n_4 ,\R_bps_rx_cnt_reg[8]_i_2_n_5 ,\R_bps_rx_cnt_reg[8]_i_2_n_6 ,\R_bps_rx_cnt_reg[8]_i_2_n_7 }),
        .S({\R_bps_rx_cnt_reg_n_0_[8] ,\R_bps_rx_cnt_reg_n_0_[7] ,\R_bps_rx_cnt_reg_n_0_[6] ,\R_bps_rx_cnt_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_rx_cnt_reg[9] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(\R_bps_rx_cnt[9]_i_1_n_0 ),
        .Q(\R_bps_rx_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \R_bps_tx_cnt[0]_i_1 
       (.I0(I_bps_tx_clk_en_IBUF),
        .I1(\R_bps_tx_cnt_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[10]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[11]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[12]_i_1 
       (.I0(I_bps_tx_clk_en_IBUF),
        .I1(data0[12]),
        .I2(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \R_bps_tx_cnt[12]_i_2 
       (.I0(I_rst_n_IBUF),
        .O(\R_bps_tx_cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \R_bps_tx_cnt[12]_i_4 
       (.I0(\R_bps_tx_cnt_reg_n_0_[7] ),
        .I1(\R_bps_tx_cnt_reg_n_0_[8] ),
        .I2(\R_bps_tx_cnt_reg_n_0_[5] ),
        .I3(\R_bps_tx_cnt_reg_n_0_[4] ),
        .I4(O_bps_tx_clk_OBUF_inst_i_3_n_0),
        .I5(O_bps_tx_clk_OBUF_inst_i_2_n_0),
        .O(\R_bps_tx_cnt[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[1]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[2]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[3]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[4]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[5]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[6]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[7]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[8]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \R_bps_tx_cnt[9]_i_1 
       (.I0(\R_bps_tx_cnt[12]_i_4_n_0 ),
        .I1(I_bps_tx_clk_en_IBUF),
        .I2(data0[9]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[0] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\R_bps_tx_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[10] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(\R_bps_tx_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[11] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(\R_bps_tx_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[12] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(\R_bps_tx_cnt_reg_n_0_[12] ));
  CARRY4 \R_bps_tx_cnt_reg[12]_i_3 
       (.CI(\R_bps_tx_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_R_bps_tx_cnt_reg[12]_i_3_CO_UNCONNECTED [3],\R_bps_tx_cnt_reg[12]_i_3_n_1 ,\R_bps_tx_cnt_reg[12]_i_3_n_2 ,\R_bps_tx_cnt_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\R_bps_tx_cnt_reg_n_0_[12] ,\R_bps_tx_cnt_reg_n_0_[11] ,\R_bps_tx_cnt_reg_n_0_[10] ,\R_bps_tx_cnt_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[1] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\R_bps_tx_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[2] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\R_bps_tx_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[3] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\R_bps_tx_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[4] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\R_bps_tx_cnt_reg_n_0_[4] ));
  CARRY4 \R_bps_tx_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\R_bps_tx_cnt_reg[4]_i_2_n_0 ,\R_bps_tx_cnt_reg[4]_i_2_n_1 ,\R_bps_tx_cnt_reg[4]_i_2_n_2 ,\R_bps_tx_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\R_bps_tx_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\R_bps_tx_cnt_reg_n_0_[4] ,\R_bps_tx_cnt_reg_n_0_[3] ,\R_bps_tx_cnt_reg_n_0_[2] ,\R_bps_tx_cnt_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[5] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\R_bps_tx_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[6] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\R_bps_tx_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[7] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\R_bps_tx_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[8] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(\R_bps_tx_cnt_reg_n_0_[8] ));
  CARRY4 \R_bps_tx_cnt_reg[8]_i_2 
       (.CI(\R_bps_tx_cnt_reg[4]_i_2_n_0 ),
        .CO({\R_bps_tx_cnt_reg[8]_i_2_n_0 ,\R_bps_tx_cnt_reg[8]_i_2_n_1 ,\R_bps_tx_cnt_reg[8]_i_2_n_2 ,\R_bps_tx_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\R_bps_tx_cnt_reg_n_0_[8] ,\R_bps_tx_cnt_reg_n_0_[7] ,\R_bps_tx_cnt_reg_n_0_[6] ,\R_bps_tx_cnt_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \R_bps_tx_cnt_reg[9] 
       (.C(I_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\R_bps_tx_cnt[12]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(\R_bps_tx_cnt_reg_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
