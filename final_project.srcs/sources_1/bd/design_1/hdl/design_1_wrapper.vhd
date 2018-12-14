--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Thu Dec 13 22:59:47 2018
--Host        : ece46 running 64-bit Ubuntu 16.04.5 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    AXI_STR_TXD_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_0_tlast : out STD_LOGIC;
    AXI_STR_TXD_0_tready : in STD_LOGIC;
    AXI_STR_TXD_0_tvalid : out STD_LOGIC;
    Addr_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LDATA_RDY_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    LDATA_tri_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SWITCHES_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : out STD_LOGIC;
    clk_audio_master : out STD_LOGIC;
    data_tri_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_0 : in STD_LOGIC;
    reset_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    timer_gpio_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    LDATA_RDY_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    LDATA_tri_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Addr_tri_o : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_tri_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ready_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SWITCHES_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    timer_gpio_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_rtl_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    AXI_STR_TXD_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXD_0_tlast : out STD_LOGIC;
    AXI_STR_TXD_0_tready : in STD_LOGIC;
    AXI_STR_TXD_0_tvalid : out STD_LOGIC;
    clk_audio_master : out STD_LOGIC;
    reset_0 : in STD_LOGIC;
    clk : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      AXI_STR_TXD_0_tdata(31 downto 0) => AXI_STR_TXD_0_tdata(31 downto 0),
      AXI_STR_TXD_0_tlast => AXI_STR_TXD_0_tlast,
      AXI_STR_TXD_0_tready => AXI_STR_TXD_0_tready,
      AXI_STR_TXD_0_tvalid => AXI_STR_TXD_0_tvalid,
      Addr_tri_o(6 downto 0) => Addr_tri_o(6 downto 0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LDATA_RDY_tri_i(0) => LDATA_RDY_tri_i(0),
      LDATA_tri_i(23 downto 0) => LDATA_tri_i(23 downto 0),
      SWITCHES_tri_o(3 downto 0) => SWITCHES_tri_o(3 downto 0),
      clk => clk,
      clk_audio_master => clk_audio_master,
      data_tri_o(8 downto 0) => data_tri_o(8 downto 0),
      gpio_rtl_tri_o(0) => gpio_rtl_tri_o(0),
      ready_tri_i(0) => ready_tri_i(0),
      reset_0 => reset_0,
      reset_tri_o(0) => reset_tri_o(0),
      timer_gpio_tri_o(0) => timer_gpio_tri_o(0)
    );
end STRUCTURE;
