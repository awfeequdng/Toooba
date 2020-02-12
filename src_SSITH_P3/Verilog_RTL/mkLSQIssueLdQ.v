//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
//
//
//
// Ports:
// Name                         I/O  size props
// RDY_enq                        O     1
// RDY_deq                        O     1
// first                          O    89
// RDY_first                      O     1
// RDY_specUpdate_incorrectSpeculation  O     1 const
// RDY_specUpdate_correctSpeculation  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// enq_x                          I    89
// specUpdate_incorrectSpeculation_kill_all  I     1
// specUpdate_incorrectSpeculation_kill_tag  I     4
// specUpdate_correctSpeculation_mask  I    12
// EN_enq                         I     1
// EN_deq                         I     1
// EN_specUpdate_incorrectSpeculation  I     1
// EN_specUpdate_correctSpeculation  I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkLSQIssueLdQ(CLK,
		     RST_N,

		     enq_x,
		     EN_enq,
		     RDY_enq,

		     EN_deq,
		     RDY_deq,

		     first,
		     RDY_first,

		     specUpdate_incorrectSpeculation_kill_all,
		     specUpdate_incorrectSpeculation_kill_tag,
		     EN_specUpdate_incorrectSpeculation,
		     RDY_specUpdate_incorrectSpeculation,

		     specUpdate_correctSpeculation_mask,
		     EN_specUpdate_correctSpeculation,
		     RDY_specUpdate_correctSpeculation);
  input  CLK;
  input  RST_N;

  // action method enq
  input  [88 : 0] enq_x;
  input  EN_enq;
  output RDY_enq;

  // action method deq
  input  EN_deq;
  output RDY_deq;

  // value method first
  output [88 : 0] first;
  output RDY_first;

  // action method specUpdate_incorrectSpeculation
  input  specUpdate_incorrectSpeculation_kill_all;
  input  [3 : 0] specUpdate_incorrectSpeculation_kill_tag;
  input  EN_specUpdate_incorrectSpeculation;
  output RDY_specUpdate_incorrectSpeculation;

  // action method specUpdate_correctSpeculation
  input  [11 : 0] specUpdate_correctSpeculation_mask;
  input  EN_specUpdate_correctSpeculation;
  output RDY_specUpdate_correctSpeculation;

  // signals for module outputs
  reg RDY_deq;
  wire [88 : 0] first;
  wire RDY_enq,
       RDY_first,
       RDY_specUpdate_correctSpeculation,
       RDY_specUpdate_incorrectSpeculation;

  // inlined wires
  reg m_m_valid_for_enq_wire$wget;
  wire m_m_deqP_ehr_lat_0$whas,
       m_m_empty_for_enq_wire$wget,
       m_m_valid_0_lat_0$whas,
       m_m_valid_0_lat_1$whas,
       m_m_valid_1_lat_0$whas,
       m_m_valid_1_lat_1$whas;

  // register m_m_deqP_ehr_rl
  reg m_m_deqP_ehr_rl;
  wire m_m_deqP_ehr_rl$D_IN, m_m_deqP_ehr_rl$EN;

  // register m_m_enqP
  reg m_m_enqP;
  wire m_m_enqP$D_IN, m_m_enqP$EN;

  // register m_m_row_0
  reg [76 : 0] m_m_row_0;
  wire [76 : 0] m_m_row_0$D_IN;
  wire m_m_row_0$EN;

  // register m_m_row_1
  reg [76 : 0] m_m_row_1;
  wire [76 : 0] m_m_row_1$D_IN;
  wire m_m_row_1$EN;

  // register m_m_specBits_0_rl
  reg [11 : 0] m_m_specBits_0_rl;
  wire [11 : 0] m_m_specBits_0_rl$D_IN;
  wire m_m_specBits_0_rl$EN;

  // register m_m_specBits_1_rl
  reg [11 : 0] m_m_specBits_1_rl;
  wire [11 : 0] m_m_specBits_1_rl$D_IN;
  wire m_m_specBits_1_rl$EN;

  // register m_m_valid_0_rl
  reg m_m_valid_0_rl;
  wire m_m_valid_0_rl$D_IN, m_m_valid_0_rl$EN;

  // register m_m_valid_1_rl
  reg m_m_valid_1_rl;
  wire m_m_valid_1_rl$D_IN, m_m_valid_1_rl$EN;

  // ports of submodule m_m_deqP_ehr_dummy2_0
  wire m_m_deqP_ehr_dummy2_0$D_IN,
       m_m_deqP_ehr_dummy2_0$EN,
       m_m_deqP_ehr_dummy2_0$Q_OUT;

  // ports of submodule m_m_deqP_ehr_dummy2_1
  wire m_m_deqP_ehr_dummy2_1$D_IN,
       m_m_deqP_ehr_dummy2_1$EN,
       m_m_deqP_ehr_dummy2_1$Q_OUT;

  // ports of submodule m_m_specBits_0_dummy2_0
  wire m_m_specBits_0_dummy2_0$D_IN,
       m_m_specBits_0_dummy2_0$EN,
       m_m_specBits_0_dummy2_0$Q_OUT;

  // ports of submodule m_m_specBits_0_dummy2_1
  wire m_m_specBits_0_dummy2_1$D_IN,
       m_m_specBits_0_dummy2_1$EN,
       m_m_specBits_0_dummy2_1$Q_OUT;

  // ports of submodule m_m_specBits_1_dummy2_0
  wire m_m_specBits_1_dummy2_0$D_IN,
       m_m_specBits_1_dummy2_0$EN,
       m_m_specBits_1_dummy2_0$Q_OUT;

  // ports of submodule m_m_specBits_1_dummy2_1
  wire m_m_specBits_1_dummy2_1$D_IN,
       m_m_specBits_1_dummy2_1$EN,
       m_m_specBits_1_dummy2_1$Q_OUT;

  // ports of submodule m_m_valid_0_dummy2_0
  wire m_m_valid_0_dummy2_0$D_IN,
       m_m_valid_0_dummy2_0$EN,
       m_m_valid_0_dummy2_0$Q_OUT;

  // ports of submodule m_m_valid_0_dummy2_1
  wire m_m_valid_0_dummy2_1$D_IN,
       m_m_valid_0_dummy2_1$EN,
       m_m_valid_0_dummy2_1$Q_OUT;

  // ports of submodule m_m_valid_1_dummy2_0
  wire m_m_valid_1_dummy2_0$D_IN,
       m_m_valid_1_dummy2_0$EN,
       m_m_valid_1_dummy2_0$Q_OUT;

  // ports of submodule m_m_valid_1_dummy2_1
  wire m_m_valid_1_dummy2_1$D_IN,
       m_m_valid_1_dummy2_1$EN,
       m_m_valid_1_dummy2_1$Q_OUT;

  // rule scheduling signals
  wire CAN_FIRE_RL_m_m_canon_deqP,
       CAN_FIRE_RL_m_m_deqP_ehr_canon,
       CAN_FIRE_RL_m_m_setWireForEnq,
       CAN_FIRE_RL_m_m_specBits_0_canon,
       CAN_FIRE_RL_m_m_specBits_1_canon,
       CAN_FIRE_RL_m_m_valid_0_canon,
       CAN_FIRE_RL_m_m_valid_1_canon,
       CAN_FIRE_deq,
       CAN_FIRE_enq,
       CAN_FIRE_specUpdate_correctSpeculation,
       CAN_FIRE_specUpdate_incorrectSpeculation,
       WILL_FIRE_RL_m_m_canon_deqP,
       WILL_FIRE_RL_m_m_deqP_ehr_canon,
       WILL_FIRE_RL_m_m_setWireForEnq,
       WILL_FIRE_RL_m_m_specBits_0_canon,
       WILL_FIRE_RL_m_m_specBits_1_canon,
       WILL_FIRE_RL_m_m_valid_0_canon,
       WILL_FIRE_RL_m_m_valid_1_canon,
       WILL_FIRE_deq,
       WILL_FIRE_enq,
       WILL_FIRE_specUpdate_correctSpeculation,
       WILL_FIRE_specUpdate_incorrectSpeculation;

  // inputs to muxes for submodule ports
  wire MUX_m_m_valid_0_dummy2_0$write_1__SEL_1,
       MUX_m_m_valid_0_dummy2_0$write_1__SEL_2,
       MUX_m_m_valid_1_dummy2_0$write_1__SEL_1,
       MUX_m_m_valid_1_dummy2_0$write_1__SEL_2;

  // remaining internal signals
  reg [63 : 0] CASE_p538_0_m_m_row_0_BITS_71_TO_8_1_m_m_row_1_ETC__q8;
  reg [11 : 0] CASE_p538_0_sb2369_1_sb2547_DONTCARE__q11;
  reg [4 : 0] CASE_p538_0_m_m_row_0_BITS_76_TO_72_1_m_m_row__ETC__q10;
  reg CASE_p538_0_m_m_row_0_BIT_0_1_m_m_row_1_BIT_0__ETC__q9,
      CASE_p538_0_m_m_row_0_BIT_1_1_m_m_row_1_BIT_1__ETC__q7,
      CASE_p538_0_m_m_row_0_BIT_2_1_m_m_row_1_BIT_2__ETC__q6,
      CASE_p538_0_m_m_row_0_BIT_3_1_m_m_row_1_BIT_3__ETC__q5,
      CASE_p538_0_m_m_row_0_BIT_4_1_m_m_row_1_BIT_4__ETC__q4,
      CASE_p538_0_m_m_row_0_BIT_5_1_m_m_row_1_BIT_5__ETC__q3,
      CASE_p538_0_m_m_row_0_BIT_6_1_m_m_row_1_BIT_6__ETC__q2,
      CASE_p538_0_m_m_row_0_BIT_7_1_m_m_row_1_BIT_7__ETC__q1,
      SEL_ARR_NOT_m_m_valid_0_dummy2_0_read__6_7_OR__ETC___d55;
  wire [71 : 0] SEL_ARR_m_m_row_0_9_BITS_71_TO_8_5_m_m_row_1_1_ETC___d134;
  wire [11 : 0] IF_m_m_specBits_0_lat_0_whas__7_THEN_m_m_specB_ETC___d20,
		IF_m_m_specBits_1_lat_0_whas__4_THEN_m_m_specB_ETC___d27,
		sb__h12369,
		sb__h12547,
		sb__h12937,
		sb__h13364,
		upd__h3373,
		upd__h4302;
  wire [6 : 0] SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d129;
  wire [4 : 0] SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d120;
  wire [2 : 0] SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d111;
  wire m_m_valid_0_dummy2_0_read__6_AND_m_m_valid_0_d_ETC___d63,
       p__h6538,
       upd__h5417,
       x_snd_fst__h7149;

  // action method enq
  assign RDY_enq =
	     m_m_empty_for_enq_wire$wget || m_m_enqP != x_snd_fst__h7149 ;
  assign CAN_FIRE_enq =
	     m_m_empty_for_enq_wire$wget || m_m_enqP != x_snd_fst__h7149 ;
  assign WILL_FIRE_enq = EN_enq ;

  // action method deq
  always@(p__h6538 or
	  m_m_valid_0_dummy2_0$Q_OUT or
	  m_m_valid_0_dummy2_1$Q_OUT or
	  m_m_valid_0_rl or
	  m_m_valid_1_dummy2_0$Q_OUT or
	  m_m_valid_1_dummy2_1$Q_OUT or m_m_valid_1_rl)
  begin
    case (p__h6538)
      1'd0:
	  RDY_deq =
	      m_m_valid_0_dummy2_0$Q_OUT && m_m_valid_0_dummy2_1$Q_OUT &&
	      m_m_valid_0_rl;
      1'd1:
	  RDY_deq =
	      m_m_valid_1_dummy2_0$Q_OUT && m_m_valid_1_dummy2_1$Q_OUT &&
	      m_m_valid_1_rl;
    endcase
  end
  assign CAN_FIRE_deq = RDY_deq ;
  assign WILL_FIRE_deq = EN_deq ;

  // value method first
  assign first =
	     { CASE_p538_0_m_m_row_0_BITS_76_TO_72_1_m_m_row__ETC__q10,
	       SEL_ARR_m_m_row_0_9_BITS_71_TO_8_5_m_m_row_1_1_ETC___d134,
	       CASE_p538_0_sb2369_1_sb2547_DONTCARE__q11 } ;
  assign RDY_first = RDY_deq ;

  // action method specUpdate_incorrectSpeculation
  assign RDY_specUpdate_incorrectSpeculation = 1'd1 ;
  assign CAN_FIRE_specUpdate_incorrectSpeculation = 1'd1 ;
  assign WILL_FIRE_specUpdate_incorrectSpeculation =
	     EN_specUpdate_incorrectSpeculation ;

  // action method specUpdate_correctSpeculation
  assign RDY_specUpdate_correctSpeculation = 1'd1 ;
  assign CAN_FIRE_specUpdate_correctSpeculation = 1'd1 ;
  assign WILL_FIRE_specUpdate_correctSpeculation =
	     EN_specUpdate_correctSpeculation ;

  // submodule m_m_deqP_ehr_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_deqP_ehr_dummy2_0(.CLK(CLK),
								.D_IN(m_m_deqP_ehr_dummy2_0$D_IN),
								.EN(m_m_deqP_ehr_dummy2_0$EN),
								.Q_OUT(m_m_deqP_ehr_dummy2_0$Q_OUT));

  // submodule m_m_deqP_ehr_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_deqP_ehr_dummy2_1(.CLK(CLK),
								.D_IN(m_m_deqP_ehr_dummy2_1$D_IN),
								.EN(m_m_deqP_ehr_dummy2_1$EN),
								.Q_OUT(m_m_deqP_ehr_dummy2_1$Q_OUT));

  // submodule m_m_specBits_0_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_specBits_0_dummy2_0(.CLK(CLK),
								  .D_IN(m_m_specBits_0_dummy2_0$D_IN),
								  .EN(m_m_specBits_0_dummy2_0$EN),
								  .Q_OUT(m_m_specBits_0_dummy2_0$Q_OUT));

  // submodule m_m_specBits_0_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_specBits_0_dummy2_1(.CLK(CLK),
								  .D_IN(m_m_specBits_0_dummy2_1$D_IN),
								  .EN(m_m_specBits_0_dummy2_1$EN),
								  .Q_OUT(m_m_specBits_0_dummy2_1$Q_OUT));

  // submodule m_m_specBits_1_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_specBits_1_dummy2_0(.CLK(CLK),
								  .D_IN(m_m_specBits_1_dummy2_0$D_IN),
								  .EN(m_m_specBits_1_dummy2_0$EN),
								  .Q_OUT(m_m_specBits_1_dummy2_0$Q_OUT));

  // submodule m_m_specBits_1_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_specBits_1_dummy2_1(.CLK(CLK),
								  .D_IN(m_m_specBits_1_dummy2_1$D_IN),
								  .EN(m_m_specBits_1_dummy2_1$EN),
								  .Q_OUT(m_m_specBits_1_dummy2_1$Q_OUT));

  // submodule m_m_valid_0_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_valid_0_dummy2_0(.CLK(CLK),
							       .D_IN(m_m_valid_0_dummy2_0$D_IN),
							       .EN(m_m_valid_0_dummy2_0$EN),
							       .Q_OUT(m_m_valid_0_dummy2_0$Q_OUT));

  // submodule m_m_valid_0_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_valid_0_dummy2_1(.CLK(CLK),
							       .D_IN(m_m_valid_0_dummy2_1$D_IN),
							       .EN(m_m_valid_0_dummy2_1$EN),
							       .Q_OUT(m_m_valid_0_dummy2_1$Q_OUT));

  // submodule m_m_valid_1_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_valid_1_dummy2_0(.CLK(CLK),
							       .D_IN(m_m_valid_1_dummy2_0$D_IN),
							       .EN(m_m_valid_1_dummy2_0$EN),
							       .Q_OUT(m_m_valid_1_dummy2_0$Q_OUT));

  // submodule m_m_valid_1_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) m_m_valid_1_dummy2_1(.CLK(CLK),
							       .D_IN(m_m_valid_1_dummy2_1$D_IN),
							       .EN(m_m_valid_1_dummy2_1$EN),
							       .Q_OUT(m_m_valid_1_dummy2_1$Q_OUT));

  // rule RL_m_m_setWireForEnq
  assign CAN_FIRE_RL_m_m_setWireForEnq = 1'd1 ;
  assign WILL_FIRE_RL_m_m_setWireForEnq = 1'd1 ;

  // rule RL_m_m_canon_deqP
  assign CAN_FIRE_RL_m_m_canon_deqP =
	     SEL_ARR_NOT_m_m_valid_0_dummy2_0_read__6_7_OR__ETC___d55 &&
	     (m_m_enqP != p__h6538 ||
	      m_m_valid_0_dummy2_0_read__6_AND_m_m_valid_0_d_ETC___d63) ;
  assign WILL_FIRE_RL_m_m_canon_deqP =
	     CAN_FIRE_RL_m_m_canon_deqP &&
	     !EN_specUpdate_incorrectSpeculation ;

  // rule RL_m_m_valid_0_canon
  assign CAN_FIRE_RL_m_m_valid_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_valid_0_canon = 1'd1 ;

  // rule RL_m_m_valid_1_canon
  assign CAN_FIRE_RL_m_m_valid_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_valid_1_canon = 1'd1 ;

  // rule RL_m_m_specBits_0_canon
  assign CAN_FIRE_RL_m_m_specBits_0_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_specBits_0_canon = 1'd1 ;

  // rule RL_m_m_specBits_1_canon
  assign CAN_FIRE_RL_m_m_specBits_1_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_specBits_1_canon = 1'd1 ;

  // rule RL_m_m_deqP_ehr_canon
  assign CAN_FIRE_RL_m_m_deqP_ehr_canon = 1'd1 ;
  assign WILL_FIRE_RL_m_m_deqP_ehr_canon = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_m_m_valid_0_dummy2_0$write_1__SEL_1 =
	     EN_deq && p__h6538 == 1'd0 ;
  assign MUX_m_m_valid_0_dummy2_0$write_1__SEL_2 =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      sb__h12369[specUpdate_incorrectSpeculation_kill_tag]) ;
  assign MUX_m_m_valid_1_dummy2_0$write_1__SEL_1 =
	     EN_deq && p__h6538 == 1'd1 ;
  assign MUX_m_m_valid_1_dummy2_0$write_1__SEL_2 =
	     EN_specUpdate_incorrectSpeculation &&
	     (specUpdate_incorrectSpeculation_kill_all ||
	      sb__h12547[specUpdate_incorrectSpeculation_kill_tag]) ;

  // inlined wires
  assign m_m_valid_0_lat_0$whas =
	     MUX_m_m_valid_0_dummy2_0$write_1__SEL_1 ||
	     MUX_m_m_valid_0_dummy2_0$write_1__SEL_2 ;
  assign m_m_valid_0_lat_1$whas = EN_enq && m_m_enqP == 1'd0 ;
  assign m_m_valid_1_lat_0$whas =
	     MUX_m_m_valid_1_dummy2_0$write_1__SEL_1 ||
	     MUX_m_m_valid_1_dummy2_0$write_1__SEL_2 ;
  assign m_m_valid_1_lat_1$whas = EN_enq && m_m_enqP == 1'd1 ;
  assign m_m_deqP_ehr_lat_0$whas = WILL_FIRE_RL_m_m_canon_deqP || EN_deq ;
  assign m_m_empty_for_enq_wire$wget =
	     (!m_m_valid_0_dummy2_0$Q_OUT || !m_m_valid_0_dummy2_1$Q_OUT ||
	      !m_m_valid_0_rl) &&
	     (!m_m_valid_1_dummy2_0$Q_OUT || !m_m_valid_1_dummy2_1$Q_OUT ||
	      !m_m_valid_1_rl) ;
  always@(m_m_enqP or
	  m_m_valid_0_dummy2_0$Q_OUT or
	  m_m_valid_0_dummy2_1$Q_OUT or
	  m_m_valid_0_rl or
	  m_m_valid_1_dummy2_0$Q_OUT or
	  m_m_valid_1_dummy2_1$Q_OUT or m_m_valid_1_rl)
  begin
    case (m_m_enqP)
      1'd0:
	  m_m_valid_for_enq_wire$wget =
	      m_m_valid_0_dummy2_0$Q_OUT && m_m_valid_0_dummy2_1$Q_OUT &&
	      m_m_valid_0_rl;
      1'd1:
	  m_m_valid_for_enq_wire$wget =
	      m_m_valid_1_dummy2_0$Q_OUT && m_m_valid_1_dummy2_1$Q_OUT &&
	      m_m_valid_1_rl;
    endcase
  end

  // register m_m_deqP_ehr_rl
  assign m_m_deqP_ehr_rl$D_IN =
	     m_m_deqP_ehr_lat_0$whas ? upd__h5417 : m_m_deqP_ehr_rl ;
  assign m_m_deqP_ehr_rl$EN = 1'd1 ;

  // register m_m_enqP
  assign m_m_enqP$D_IN = m_m_enqP + 1'd1 ;
  assign m_m_enqP$EN = EN_enq ;

  // register m_m_row_0
  assign m_m_row_0$D_IN = enq_x[88:12] ;
  assign m_m_row_0$EN = m_m_valid_0_lat_1$whas ;

  // register m_m_row_1
  assign m_m_row_1$D_IN = enq_x[88:12] ;
  assign m_m_row_1$EN = m_m_valid_1_lat_1$whas ;

  // register m_m_specBits_0_rl
  assign m_m_specBits_0_rl$D_IN =
	     EN_specUpdate_correctSpeculation ?
	       upd__h3373 :
	       IF_m_m_specBits_0_lat_0_whas__7_THEN_m_m_specB_ETC___d20 ;
  assign m_m_specBits_0_rl$EN = 1'd1 ;

  // register m_m_specBits_1_rl
  assign m_m_specBits_1_rl$D_IN =
	     EN_specUpdate_correctSpeculation ?
	       upd__h4302 :
	       IF_m_m_specBits_1_lat_0_whas__4_THEN_m_m_specB_ETC___d27 ;
  assign m_m_specBits_1_rl$EN = 1'd1 ;

  // register m_m_valid_0_rl
  assign m_m_valid_0_rl$D_IN =
	     m_m_valid_0_lat_1$whas ||
	     (m_m_valid_0_lat_0$whas ? 1'd0 : m_m_valid_0_rl) ;
  assign m_m_valid_0_rl$EN = 1'd1 ;

  // register m_m_valid_1_rl
  assign m_m_valid_1_rl$D_IN =
	     m_m_valid_1_lat_1$whas ||
	     (m_m_valid_1_lat_0$whas ? 1'd0 : m_m_valid_1_rl) ;
  assign m_m_valid_1_rl$EN = 1'd1 ;

  // submodule m_m_deqP_ehr_dummy2_0
  assign m_m_deqP_ehr_dummy2_0$D_IN = 1'd1 ;
  assign m_m_deqP_ehr_dummy2_0$EN = m_m_deqP_ehr_lat_0$whas ;

  // submodule m_m_deqP_ehr_dummy2_1
  assign m_m_deqP_ehr_dummy2_1$D_IN = 1'b0 ;
  assign m_m_deqP_ehr_dummy2_1$EN = 1'b0 ;

  // submodule m_m_specBits_0_dummy2_0
  assign m_m_specBits_0_dummy2_0$D_IN = 1'd1 ;
  assign m_m_specBits_0_dummy2_0$EN = m_m_valid_0_lat_1$whas ;

  // submodule m_m_specBits_0_dummy2_1
  assign m_m_specBits_0_dummy2_1$D_IN = 1'd1 ;
  assign m_m_specBits_0_dummy2_1$EN = EN_specUpdate_correctSpeculation ;

  // submodule m_m_specBits_1_dummy2_0
  assign m_m_specBits_1_dummy2_0$D_IN = 1'd1 ;
  assign m_m_specBits_1_dummy2_0$EN = m_m_valid_1_lat_1$whas ;

  // submodule m_m_specBits_1_dummy2_1
  assign m_m_specBits_1_dummy2_1$D_IN = 1'd1 ;
  assign m_m_specBits_1_dummy2_1$EN = EN_specUpdate_correctSpeculation ;

  // submodule m_m_valid_0_dummy2_0
  assign m_m_valid_0_dummy2_0$D_IN = 1'd1 ;
  assign m_m_valid_0_dummy2_0$EN =
	     EN_deq && p__h6538 == 1'd0 ||
	     MUX_m_m_valid_0_dummy2_0$write_1__SEL_2 ;

  // submodule m_m_valid_0_dummy2_1
  assign m_m_valid_0_dummy2_1$D_IN = 1'd1 ;
  assign m_m_valid_0_dummy2_1$EN = m_m_valid_0_lat_1$whas ;

  // submodule m_m_valid_1_dummy2_0
  assign m_m_valid_1_dummy2_0$D_IN = 1'd1 ;
  assign m_m_valid_1_dummy2_0$EN =
	     EN_deq && p__h6538 == 1'd1 ||
	     MUX_m_m_valid_1_dummy2_0$write_1__SEL_2 ;

  // submodule m_m_valid_1_dummy2_1
  assign m_m_valid_1_dummy2_1$D_IN = 1'd1 ;
  assign m_m_valid_1_dummy2_1$EN = m_m_valid_1_lat_1$whas ;

  // remaining internal signals
  assign IF_m_m_specBits_0_lat_0_whas__7_THEN_m_m_specB_ETC___d20 =
	     m_m_valid_0_lat_1$whas ? enq_x[11:0] : m_m_specBits_0_rl ;
  assign IF_m_m_specBits_1_lat_0_whas__4_THEN_m_m_specB_ETC___d27 =
	     m_m_valid_1_lat_1$whas ? enq_x[11:0] : m_m_specBits_1_rl ;
  assign SEL_ARR_m_m_row_0_9_BITS_71_TO_8_5_m_m_row_1_1_ETC___d134 =
	     { CASE_p538_0_m_m_row_0_BITS_71_TO_8_1_m_m_row_1_ETC__q8,
	       SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d129,
	       CASE_p538_0_m_m_row_0_BIT_0_1_m_m_row_1_BIT_0__ETC__q9 } ;
  assign SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d111 =
	     { CASE_p538_0_m_m_row_0_BIT_7_1_m_m_row_1_BIT_7__ETC__q1,
	       CASE_p538_0_m_m_row_0_BIT_6_1_m_m_row_1_BIT_6__ETC__q2,
	       CASE_p538_0_m_m_row_0_BIT_5_1_m_m_row_1_BIT_5__ETC__q3 } ;
  assign SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d120 =
	     { SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d111,
	       CASE_p538_0_m_m_row_0_BIT_4_1_m_m_row_1_BIT_4__ETC__q4,
	       CASE_p538_0_m_m_row_0_BIT_3_1_m_m_row_1_BIT_3__ETC__q5 } ;
  assign SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d129 =
	     { SEL_ARR_m_m_row_0_9_BIT_7_9_m_m_row_1_1_BIT_7__ETC___d120,
	       CASE_p538_0_m_m_row_0_BIT_2_1_m_m_row_1_BIT_2__ETC__q6,
	       CASE_p538_0_m_m_row_0_BIT_1_1_m_m_row_1_BIT_1__ETC__q7 } ;
  assign m_m_valid_0_dummy2_0_read__6_AND_m_m_valid_0_d_ETC___d63 =
	     m_m_valid_0_dummy2_0$Q_OUT && m_m_valid_0_dummy2_1$Q_OUT &&
	     m_m_valid_0_rl ||
	     m_m_valid_1_dummy2_0$Q_OUT && m_m_valid_1_dummy2_1$Q_OUT &&
	     m_m_valid_1_rl ;
  assign p__h6538 =
	     m_m_deqP_ehr_dummy2_0$Q_OUT && m_m_deqP_ehr_dummy2_1$Q_OUT &&
	     m_m_deqP_ehr_rl ;
  assign sb__h12369 =
	     (m_m_specBits_0_dummy2_0$Q_OUT &&
	      m_m_specBits_0_dummy2_1$Q_OUT) ?
	       m_m_specBits_0_rl :
	       12'd0 ;
  assign sb__h12547 =
	     (m_m_specBits_1_dummy2_0$Q_OUT &&
	      m_m_specBits_1_dummy2_1$Q_OUT) ?
	       m_m_specBits_1_rl :
	       12'd0 ;
  assign sb__h12937 =
	     m_m_specBits_0_dummy2_1$Q_OUT ?
	       IF_m_m_specBits_0_lat_0_whas__7_THEN_m_m_specB_ETC___d20 :
	       12'd0 ;
  assign sb__h13364 =
	     m_m_specBits_1_dummy2_1$Q_OUT ?
	       IF_m_m_specBits_1_lat_0_whas__4_THEN_m_m_specB_ETC___d27 :
	       12'd0 ;
  assign upd__h3373 = sb__h12937 & specUpdate_correctSpeculation_mask ;
  assign upd__h4302 = sb__h13364 & specUpdate_correctSpeculation_mask ;
  assign upd__h5417 =
	     !m_m_deqP_ehr_dummy2_0$Q_OUT || !m_m_deqP_ehr_dummy2_1$Q_OUT ||
	     !m_m_deqP_ehr_rl ;
  assign x_snd_fst__h7149 = p__h6538 ;
  always@(p__h6538 or
	  m_m_valid_0_dummy2_0$Q_OUT or
	  m_m_valid_0_dummy2_1$Q_OUT or
	  m_m_valid_0_rl or
	  m_m_valid_1_dummy2_0$Q_OUT or
	  m_m_valid_1_dummy2_1$Q_OUT or m_m_valid_1_rl)
  begin
    case (p__h6538)
      1'd0:
	  SEL_ARR_NOT_m_m_valid_0_dummy2_0_read__6_7_OR__ETC___d55 =
	      !m_m_valid_0_dummy2_0$Q_OUT || !m_m_valid_0_dummy2_1$Q_OUT ||
	      !m_m_valid_0_rl;
      1'd1:
	  SEL_ARR_NOT_m_m_valid_0_dummy2_0_read__6_7_OR__ETC___d55 =
	      !m_m_valid_1_dummy2_0$Q_OUT || !m_m_valid_1_dummy2_1$Q_OUT ||
	      !m_m_valid_1_rl;
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_7_1_m_m_row_1_BIT_7__ETC__q1 =
	      m_m_row_0[7];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_7_1_m_m_row_1_BIT_7__ETC__q1 =
	      m_m_row_1[7];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_6_1_m_m_row_1_BIT_6__ETC__q2 =
	      m_m_row_0[6];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_6_1_m_m_row_1_BIT_6__ETC__q2 =
	      m_m_row_1[6];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_5_1_m_m_row_1_BIT_5__ETC__q3 =
	      m_m_row_0[5];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_5_1_m_m_row_1_BIT_5__ETC__q3 =
	      m_m_row_1[5];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_4_1_m_m_row_1_BIT_4__ETC__q4 =
	      m_m_row_0[4];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_4_1_m_m_row_1_BIT_4__ETC__q4 =
	      m_m_row_1[4];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_3_1_m_m_row_1_BIT_3__ETC__q5 =
	      m_m_row_0[3];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_3_1_m_m_row_1_BIT_3__ETC__q5 =
	      m_m_row_1[3];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_2_1_m_m_row_1_BIT_2__ETC__q6 =
	      m_m_row_0[2];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_2_1_m_m_row_1_BIT_2__ETC__q6 =
	      m_m_row_1[2];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_1_1_m_m_row_1_BIT_1__ETC__q7 =
	      m_m_row_0[1];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_1_1_m_m_row_1_BIT_1__ETC__q7 =
	      m_m_row_1[1];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BITS_71_TO_8_1_m_m_row_1_ETC__q8 =
	      m_m_row_0[71:8];
      1'd1:
	  CASE_p538_0_m_m_row_0_BITS_71_TO_8_1_m_m_row_1_ETC__q8 =
	      m_m_row_1[71:8];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BIT_0_1_m_m_row_1_BIT_0__ETC__q9 =
	      m_m_row_0[0];
      1'd1:
	  CASE_p538_0_m_m_row_0_BIT_0_1_m_m_row_1_BIT_0__ETC__q9 =
	      m_m_row_1[0];
    endcase
  end
  always@(p__h6538 or m_m_row_0 or m_m_row_1)
  begin
    case (p__h6538)
      1'd0:
	  CASE_p538_0_m_m_row_0_BITS_76_TO_72_1_m_m_row__ETC__q10 =
	      m_m_row_0[76:72];
      1'd1:
	  CASE_p538_0_m_m_row_0_BITS_76_TO_72_1_m_m_row__ETC__q10 =
	      m_m_row_1[76:72];
    endcase
  end
  always@(p__h6538 or sb__h12369 or sb__h12547)
  begin
    case (p__h6538)
      1'd0: CASE_p538_0_sb2369_1_sb2547_DONTCARE__q11 = sb__h12369;
      1'd1: CASE_p538_0_sb2369_1_sb2547_DONTCARE__q11 = sb__h12547;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_m_deqP_ehr_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_m_enqP <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY 12'hAAA;
	m_m_specBits_1_rl <= `BSV_ASSIGNMENT_DELAY 12'hAAA;
	m_m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
	m_m_valid_1_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (m_m_deqP_ehr_rl$EN)
	  m_m_deqP_ehr_rl <= `BSV_ASSIGNMENT_DELAY m_m_deqP_ehr_rl$D_IN;
	if (m_m_enqP$EN) m_m_enqP <= `BSV_ASSIGNMENT_DELAY m_m_enqP$D_IN;
	if (m_m_specBits_0_rl$EN)
	  m_m_specBits_0_rl <= `BSV_ASSIGNMENT_DELAY m_m_specBits_0_rl$D_IN;
	if (m_m_specBits_1_rl$EN)
	  m_m_specBits_1_rl <= `BSV_ASSIGNMENT_DELAY m_m_specBits_1_rl$D_IN;
	if (m_m_valid_0_rl$EN)
	  m_m_valid_0_rl <= `BSV_ASSIGNMENT_DELAY m_m_valid_0_rl$D_IN;
	if (m_m_valid_1_rl$EN)
	  m_m_valid_1_rl <= `BSV_ASSIGNMENT_DELAY m_m_valid_1_rl$D_IN;
      end
    if (m_m_row_0$EN) m_m_row_0 <= `BSV_ASSIGNMENT_DELAY m_m_row_0$D_IN;
    if (m_m_row_1$EN) m_m_row_1 <= `BSV_ASSIGNMENT_DELAY m_m_row_1$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_m_deqP_ehr_rl = 1'h0;
    m_m_enqP = 1'h0;
    m_m_row_0 = 77'h0AAAAAAAAAAAAAAAAAAA;
    m_m_row_1 = 77'h0AAAAAAAAAAAAAAAAAAA;
    m_m_specBits_0_rl = 12'hAAA;
    m_m_specBits_1_rl = 12'hAAA;
    m_m_valid_0_rl = 1'h0;
    m_m_valid_1_rl = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (EN_enq && m_m_valid_for_enq_wire$wget)
	$fdisplay(32'h80000002, "\n%m: ASSERT FAIL!!");
  end
  // synopsys translate_on
endmodule  // mkLSQIssueLdQ

