`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2018 03:21:00 PM
// Design Name: 
// Module Name: design_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module design_top(
/*AXI_STR_TXD_tdata,
    AXI_STR_TXD_tlast,
    AXI_STR_TXD_tready,
    AXI_STR_TXD_tvalid,*/
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ac_bclk,
    ac_mclk,
    ac_muten,
    ac_recdat,
    ac_reclrc,
    ac_pbdat,
    ac_pblrc,
    ac_scl,
    ac_sda,
    pmod_a,
    pmod_b,
    pmod_c,
    switches_tri_o,
    je
    /*addr_tri_o,
    clk,
    clk_out1,
    data_tri_o,
    gpio_rtl_tri_o,
    ldata_rdy_tri_i,
    ldata_tri_i,
    ready_tri_i,
    reset_rtl,
    reset_tri_o,
    switches_tri_o,
    timer_gpio_tri_o*/);
  /*output [31:0]AXI_STR_TXD_tdata;
  output AXI_STR_TXD_tlast;
  input AXI_STR_TXD_tready;
  output AXI_STR_TXD_tvalid;*/
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]switches_tri_o;
  /*output [6:0]addr_tri_o;
  output clk;
  output clk_out1;
  output [8:0]data_tri_o;
  output [0:0]gpio_rtl_tri_o;
  input [0:0]ldata_rdy_tri_i;
  input [23:0]ldata_tri_i;
  input [0:0]ready_tri_i;
  input reset_rtl;
  output [0:0]reset_tri_o;
  
  output [0:0]timer_gpio_tri_o;*/
    output ac_bclk;
  output ac_mclk;
  output ac_muten;
  input ac_recdat;
  output ac_reclrc;
  input ac_pbdat;
  output ac_pblrc;
  output ac_scl;
  inout ac_sda;
  output pmod_a;
  output pmod_b;
  output pmod_c;
  output [7:0]je;

  wire [31:0]AXI_STR_TXD_tdata;
  wire AXI_STR_TXD_tlast;
  wire AXI_STR_TXD_tready;
  wire AXI_STR_TXD_tvalid;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [6:0]addr_tri_o;
  wire clk;
  wire clk_out1;
  wire [8:0]data_tri_o;
  wire [0:0]gpio_rtl_tri_o;
  wire [0:0]ldata_rdy_tri_i;
  wire [23:0]ldata_tri_i;
  wire [0:0]ready_tri_i;
  wire reset_rtl;
  wire [0:0]reset_tri_o;
  wire [3:0]switches_tri_o;
  wire [0:0]timer_gpio_tri_o;
  wire ac_bclk;
  wire ac_mclk;
  wire ac_muten;
  wire ac_recdat;
  wire ac_reclrc;
  wire ac_pbdat;
  wire ac_pblrc;
  wire ac_scl;
  wire ac_sda;
  wire pmod_a;
  wire pmod_b;
  wire pmod_c;
  wire [7:0]je;

fsm fsm_i(
      .clock(clk),
      .ledBits(AXI_STR_TXD_tdata),
      .tvalid(AXI_STR_TXD_tvalid),
      .tready(AXI_STR_TXD_tready),
      .tlast(AXI_STR_TXD_tlast),
      .je(je)
      );
      
  AudioSetup AudioCodecSetup(
           .clk(clk),
           .regAddress(addr_tri_o),
           .data(data_tri_o),
           .reset(reset_tri_o),
           .sdin(ac_sda),
           .sclk(ac_scl),
           .ready(ready_tri_i));
           
    AudioCodec AudioCodec
                    (.CLK(clk_out1),
                     .rec_data(ac_recdat),
                     .muten(ac_muten),
                     .mclk(ac_mclk),
                     .bclk(ac_bclk),
                     .lrclk(ac_reclrc),
                     .pblrc(ac_pblrc),
                     .pbdata(ac_pbdat),
                     .left_data_rdy(ldata_rdy_tri_i),
                     //.right_data_rdy(rdata_rdy_tri_i),
                     .left_data(ldata_tri_i),
                     //.right_data(rdata_tri_i),
                     //.rdata_read(rdata_read_tri_o),
                     //.ldata_read(ldata_read_tri_o),
                     .reset_rtl(reset_rtl));
                     
design_1 design_1_i
       (.AXI_STR_TXD_tdata(AXI_STR_TXD_tdata),
        .AXI_STR_TXD_tlast(AXI_STR_TXD_tlast),
        .AXI_STR_TXD_tready(AXI_STR_TXD_tready),
        .AXI_STR_TXD_tvalid(AXI_STR_TXD_tvalid),
        .Addr_tri_o(addr_tri_o),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LDATA_RDY_tri_i(ldata_rdy_tri_i),
        .LDATA_tri_i(ldata_tri_i),
        .SWITCHES_tri_o(switches_tri_o),
        .clk(clk),
        .clk_out1(clk_out1),
        .data_tri_o(data_tri_o),
        .gpio_rtl_tri_o(gpio_rtl_tri_o),
        .ready_tri_i(ready_tri_i),
        .reset_rtl(reset_rtl),
        .reset_tri_o(reset_tri_o),
        .timer_gpio_tri_o(timer_gpio_tri_o));
      
endmodule
