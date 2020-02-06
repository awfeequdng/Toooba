//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
//
//
//
// Ports:
// Name                         I/O  size props
// RDY_req                        O     1
// resp                           O    46 const
// RDY_resp                       O     1
// RDY_deqResp                    O     1
// RDY_addEntry                   O     1 const
// RDY_flush                      O     1 const
// flush_done                     O     1 const
// RDY_flush_done                 O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// req_vpn                        I    27 unused
// addEntry_vpn                   I    27 unused
// addEntry_level                 I     2 unused
// addEntry_ppn                   I    44 unused
// EN_req                         I     1
// EN_deqResp                     I     1
// EN_addEntry                    I     1 unused
// EN_flush                       I     1 unused
//
// Combinational paths from inputs to outputs:
//   EN_deqResp -> RDY_req
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

module mkNullTransCache(CLK,
			RST_N,

			req_vpn,
			EN_req,
			RDY_req,

			resp,
			RDY_resp,

			EN_deqResp,
			RDY_deqResp,

			addEntry_vpn,
			addEntry_level,
			addEntry_ppn,
			EN_addEntry,
			RDY_addEntry,

			EN_flush,
			RDY_flush,

			flush_done,
			RDY_flush_done);
  input  CLK;
  input  RST_N;

  // action method req
  input  [26 : 0] req_vpn;
  input  EN_req;
  output RDY_req;

  // value method resp
  output [45 : 0] resp;
  output RDY_resp;

  // action method deqResp
  input  EN_deqResp;
  output RDY_deqResp;

  // action method addEntry
  input  [26 : 0] addEntry_vpn;
  input  [1 : 0] addEntry_level;
  input  [43 : 0] addEntry_ppn;
  input  EN_addEntry;
  output RDY_addEntry;

  // action method flush
  input  EN_flush;
  output RDY_flush;

  // value method flush_done
  output flush_done;
  output RDY_flush_done;

  // signals for module outputs
  wire [45 : 0] resp;
  wire RDY_addEntry,
       RDY_deqResp,
       RDY_flush,
       RDY_flush_done,
       RDY_req,
       RDY_resp,
       flush_done;

  // register reqQ_empty_rl
  reg reqQ_empty_rl;
  wire reqQ_empty_rl$D_IN, reqQ_empty_rl$EN;

  // register reqQ_full_rl
  reg reqQ_full_rl;
  wire reqQ_full_rl$D_IN, reqQ_full_rl$EN;

  // ports of submodule reqQ_deqP_dummy2_0
  wire reqQ_deqP_dummy2_0$D_IN, reqQ_deqP_dummy2_0$EN;

  // ports of submodule reqQ_deqP_dummy2_1
  wire reqQ_deqP_dummy2_1$D_IN, reqQ_deqP_dummy2_1$EN;

  // ports of submodule reqQ_empty_dummy2_0
  wire reqQ_empty_dummy2_0$D_IN,
       reqQ_empty_dummy2_0$EN,
       reqQ_empty_dummy2_0$Q_OUT;

  // ports of submodule reqQ_empty_dummy2_1
  wire reqQ_empty_dummy2_1$D_IN,
       reqQ_empty_dummy2_1$EN,
       reqQ_empty_dummy2_1$Q_OUT;

  // ports of submodule reqQ_empty_dummy2_2
  wire reqQ_empty_dummy2_2$D_IN,
       reqQ_empty_dummy2_2$EN,
       reqQ_empty_dummy2_2$Q_OUT;

  // ports of submodule reqQ_enqP_dummy2_0
  wire reqQ_enqP_dummy2_0$D_IN, reqQ_enqP_dummy2_0$EN;

  // ports of submodule reqQ_enqP_dummy2_1
  wire reqQ_enqP_dummy2_1$D_IN, reqQ_enqP_dummy2_1$EN;

  // ports of submodule reqQ_full_dummy2_0
  wire reqQ_full_dummy2_0$D_IN, reqQ_full_dummy2_0$EN;

  // ports of submodule reqQ_full_dummy2_1
  wire reqQ_full_dummy2_1$D_IN,
       reqQ_full_dummy2_1$EN,
       reqQ_full_dummy2_1$Q_OUT;

  // ports of submodule reqQ_full_dummy2_2
  wire reqQ_full_dummy2_2$D_IN,
       reqQ_full_dummy2_2$EN,
       reqQ_full_dummy2_2$Q_OUT;

  // rule scheduling signals
  wire CAN_FIRE_RL_reqQ_empty_canon,
       CAN_FIRE_RL_reqQ_full_canon,
       CAN_FIRE_addEntry,
       CAN_FIRE_deqResp,
       CAN_FIRE_flush,
       CAN_FIRE_req,
       WILL_FIRE_RL_reqQ_empty_canon,
       WILL_FIRE_RL_reqQ_full_canon,
       WILL_FIRE_addEntry,
       WILL_FIRE_deqResp,
       WILL_FIRE_flush,
       WILL_FIRE_req;

  // action method req
  assign RDY_req =
	     !reqQ_full_dummy2_1$Q_OUT || !reqQ_full_dummy2_2$Q_OUT ||
	     EN_deqResp ||
	     !reqQ_full_rl ;
  assign CAN_FIRE_req =
	     !reqQ_full_dummy2_1$Q_OUT || !reqQ_full_dummy2_2$Q_OUT ||
	     EN_deqResp ||
	     !reqQ_full_rl ;
  assign WILL_FIRE_req = EN_req ;

  // value method resp
  assign resp = 46'h2AAAAAAAAAAA ;
  assign RDY_resp =
	     !reqQ_empty_dummy2_0$Q_OUT || !reqQ_empty_dummy2_1$Q_OUT ||
	     !reqQ_empty_dummy2_2$Q_OUT ||
	     !reqQ_empty_rl ;

  // action method deqResp
  assign RDY_deqResp = RDY_resp ;
  assign CAN_FIRE_deqResp = RDY_resp ;
  assign WILL_FIRE_deqResp = EN_deqResp ;

  // action method addEntry
  assign RDY_addEntry = 1'd1 ;
  assign CAN_FIRE_addEntry = 1'd1 ;
  assign WILL_FIRE_addEntry = EN_addEntry ;

  // action method flush
  assign RDY_flush = 1'd1 ;
  assign CAN_FIRE_flush = 1'd1 ;
  assign WILL_FIRE_flush = EN_flush ;

  // value method flush_done
  assign flush_done = 1'd1 ;
  assign RDY_flush_done = 1'd1 ;

  // submodule reqQ_deqP_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_deqP_dummy2_0(.CLK(CLK),
							     .D_IN(reqQ_deqP_dummy2_0$D_IN),
							     .EN(reqQ_deqP_dummy2_0$EN),
							     .Q_OUT());

  // submodule reqQ_deqP_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_deqP_dummy2_1(.CLK(CLK),
							     .D_IN(reqQ_deqP_dummy2_1$D_IN),
							     .EN(reqQ_deqP_dummy2_1$EN),
							     .Q_OUT());

  // submodule reqQ_empty_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_empty_dummy2_0(.CLK(CLK),
							      .D_IN(reqQ_empty_dummy2_0$D_IN),
							      .EN(reqQ_empty_dummy2_0$EN),
							      .Q_OUT(reqQ_empty_dummy2_0$Q_OUT));

  // submodule reqQ_empty_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_empty_dummy2_1(.CLK(CLK),
							      .D_IN(reqQ_empty_dummy2_1$D_IN),
							      .EN(reqQ_empty_dummy2_1$EN),
							      .Q_OUT(reqQ_empty_dummy2_1$Q_OUT));

  // submodule reqQ_empty_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_empty_dummy2_2(.CLK(CLK),
							      .D_IN(reqQ_empty_dummy2_2$D_IN),
							      .EN(reqQ_empty_dummy2_2$EN),
							      .Q_OUT(reqQ_empty_dummy2_2$Q_OUT));

  // submodule reqQ_enqP_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_enqP_dummy2_0(.CLK(CLK),
							     .D_IN(reqQ_enqP_dummy2_0$D_IN),
							     .EN(reqQ_enqP_dummy2_0$EN),
							     .Q_OUT());

  // submodule reqQ_enqP_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_enqP_dummy2_1(.CLK(CLK),
							     .D_IN(reqQ_enqP_dummy2_1$D_IN),
							     .EN(reqQ_enqP_dummy2_1$EN),
							     .Q_OUT());

  // submodule reqQ_full_dummy2_0
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_full_dummy2_0(.CLK(CLK),
							     .D_IN(reqQ_full_dummy2_0$D_IN),
							     .EN(reqQ_full_dummy2_0$EN),
							     .Q_OUT());

  // submodule reqQ_full_dummy2_1
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_full_dummy2_1(.CLK(CLK),
							     .D_IN(reqQ_full_dummy2_1$D_IN),
							     .EN(reqQ_full_dummy2_1$EN),
							     .Q_OUT(reqQ_full_dummy2_1$Q_OUT));

  // submodule reqQ_full_dummy2_2
  RevertReg #(.width(32'd1), .init(1'd1)) reqQ_full_dummy2_2(.CLK(CLK),
							     .D_IN(reqQ_full_dummy2_2$D_IN),
							     .EN(reqQ_full_dummy2_2$EN),
							     .Q_OUT(reqQ_full_dummy2_2$Q_OUT));

  // rule RL_reqQ_empty_canon
  assign CAN_FIRE_RL_reqQ_empty_canon = 1'd1 ;
  assign WILL_FIRE_RL_reqQ_empty_canon = 1'd1 ;

  // rule RL_reqQ_full_canon
  assign CAN_FIRE_RL_reqQ_full_canon = 1'd1 ;
  assign WILL_FIRE_RL_reqQ_full_canon = 1'd1 ;

  // register reqQ_empty_rl
  assign reqQ_empty_rl$D_IN = !EN_req && (EN_deqResp || reqQ_empty_rl) ;
  assign reqQ_empty_rl$EN = 1'd1 ;

  // register reqQ_full_rl
  assign reqQ_full_rl$D_IN = EN_req || !EN_deqResp && reqQ_full_rl ;
  assign reqQ_full_rl$EN = 1'd1 ;

  // submodule reqQ_deqP_dummy2_0
  assign reqQ_deqP_dummy2_0$D_IN = 1'd1 ;
  assign reqQ_deqP_dummy2_0$EN = EN_deqResp ;

  // submodule reqQ_deqP_dummy2_1
  assign reqQ_deqP_dummy2_1$D_IN = 1'b0 ;
  assign reqQ_deqP_dummy2_1$EN = 1'b0 ;

  // submodule reqQ_empty_dummy2_0
  assign reqQ_empty_dummy2_0$D_IN = 1'd1 ;
  assign reqQ_empty_dummy2_0$EN = EN_deqResp ;

  // submodule reqQ_empty_dummy2_1
  assign reqQ_empty_dummy2_1$D_IN = 1'd1 ;
  assign reqQ_empty_dummy2_1$EN = EN_req ;

  // submodule reqQ_empty_dummy2_2
  assign reqQ_empty_dummy2_2$D_IN = 1'b0 ;
  assign reqQ_empty_dummy2_2$EN = 1'b0 ;

  // submodule reqQ_enqP_dummy2_0
  assign reqQ_enqP_dummy2_0$D_IN = 1'd1 ;
  assign reqQ_enqP_dummy2_0$EN = EN_req ;

  // submodule reqQ_enqP_dummy2_1
  assign reqQ_enqP_dummy2_1$D_IN = 1'b0 ;
  assign reqQ_enqP_dummy2_1$EN = 1'b0 ;

  // submodule reqQ_full_dummy2_0
  assign reqQ_full_dummy2_0$D_IN = 1'd1 ;
  assign reqQ_full_dummy2_0$EN = EN_deqResp ;

  // submodule reqQ_full_dummy2_1
  assign reqQ_full_dummy2_1$D_IN = 1'd1 ;
  assign reqQ_full_dummy2_1$EN = EN_req ;

  // submodule reqQ_full_dummy2_2
  assign reqQ_full_dummy2_2$D_IN = 1'b0 ;
  assign reqQ_full_dummy2_2$EN = 1'b0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        reqQ_empty_rl <= `BSV_ASSIGNMENT_DELAY 1'd1;
	reqQ_full_rl <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (reqQ_empty_rl$EN)
	  reqQ_empty_rl <= `BSV_ASSIGNMENT_DELAY reqQ_empty_rl$D_IN;
	if (reqQ_full_rl$EN)
	  reqQ_full_rl <= `BSV_ASSIGNMENT_DELAY reqQ_full_rl$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    reqQ_empty_rl = 1'h0;
    reqQ_full_rl = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkNullTransCache

