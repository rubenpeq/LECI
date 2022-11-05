-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/19/2022 14:44:36"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL SW : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TimerN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0)
	);
END TimerN_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_count[0]~32_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_count[2]~37\ : std_logic;
SIGNAL \inst|s_count[3]~41_combout\ : std_logic;
SIGNAL \inst|s_count[0]~39_combout\ : std_logic;
SIGNAL \inst|s_count[0]~40_combout\ : std_logic;
SIGNAL \inst|s_count[3]~42\ : std_logic;
SIGNAL \inst|s_count[4]~43_combout\ : std_logic;
SIGNAL \inst|s_count[4]~44\ : std_logic;
SIGNAL \inst|s_count[5]~45_combout\ : std_logic;
SIGNAL \inst|s_count[5]~46\ : std_logic;
SIGNAL \inst|s_count[6]~47_combout\ : std_logic;
SIGNAL \inst|s_count[6]~48\ : std_logic;
SIGNAL \inst|s_count[7]~49_combout\ : std_logic;
SIGNAL \inst|s_count[7]~50\ : std_logic;
SIGNAL \inst|s_count[8]~51_combout\ : std_logic;
SIGNAL \inst|s_count[8]~52\ : std_logic;
SIGNAL \inst|s_count[9]~53_combout\ : std_logic;
SIGNAL \inst|s_count[9]~54\ : std_logic;
SIGNAL \inst|s_count[10]~55_combout\ : std_logic;
SIGNAL \inst|s_count[10]~56\ : std_logic;
SIGNAL \inst|s_count[11]~57_combout\ : std_logic;
SIGNAL \inst|s_count[11]~58\ : std_logic;
SIGNAL \inst|s_count[12]~59_combout\ : std_logic;
SIGNAL \inst|s_count[12]~60\ : std_logic;
SIGNAL \inst|s_count[13]~61_combout\ : std_logic;
SIGNAL \inst|s_count[13]~62\ : std_logic;
SIGNAL \inst|s_count[14]~63_combout\ : std_logic;
SIGNAL \inst|s_count[14]~64\ : std_logic;
SIGNAL \inst|s_count[15]~65_combout\ : std_logic;
SIGNAL \inst|s_count[15]~66\ : std_logic;
SIGNAL \inst|s_count[16]~67_combout\ : std_logic;
SIGNAL \inst|s_count[16]~68\ : std_logic;
SIGNAL \inst|s_count[17]~69_combout\ : std_logic;
SIGNAL \inst|s_count[17]~70\ : std_logic;
SIGNAL \inst|s_count[18]~71_combout\ : std_logic;
SIGNAL \inst|s_count[18]~72\ : std_logic;
SIGNAL \inst|s_count[19]~73_combout\ : std_logic;
SIGNAL \inst|s_count[19]~74\ : std_logic;
SIGNAL \inst|s_count[20]~75_combout\ : std_logic;
SIGNAL \inst|s_count[20]~76\ : std_logic;
SIGNAL \inst|s_count[21]~77_combout\ : std_logic;
SIGNAL \inst|s_count[21]~78\ : std_logic;
SIGNAL \inst|s_count[22]~79_combout\ : std_logic;
SIGNAL \inst|s_count[22]~80\ : std_logic;
SIGNAL \inst|s_count[23]~81_combout\ : std_logic;
SIGNAL \inst|s_count[23]~82\ : std_logic;
SIGNAL \inst|s_count[24]~83_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|s_count[24]~84\ : std_logic;
SIGNAL \inst|s_count[25]~85_combout\ : std_logic;
SIGNAL \inst|s_count[25]~86\ : std_logic;
SIGNAL \inst|s_count[26]~87_combout\ : std_logic;
SIGNAL \inst|s_count[26]~88\ : std_logic;
SIGNAL \inst|s_count[27]~89_combout\ : std_logic;
SIGNAL \inst|s_count[27]~90\ : std_logic;
SIGNAL \inst|s_count[28]~91_combout\ : std_logic;
SIGNAL \inst|s_count[28]~92\ : std_logic;
SIGNAL \inst|s_count[29]~93_combout\ : std_logic;
SIGNAL \inst|s_count[29]~94\ : std_logic;
SIGNAL \inst|s_count[30]~95_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|s_count[30]~96\ : std_logic;
SIGNAL \inst|s_count[31]~97_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|s_count[0]~38_combout\ : std_logic;
SIGNAL \inst|s_count[0]~33\ : std_logic;
SIGNAL \inst|s_count[1]~34_combout\ : std_logic;
SIGNAL \inst|s_count[1]~35\ : std_logic;
SIGNAL \inst|s_count[2]~36_combout\ : std_logic;
SIGNAL \inst|timerOut~0_combout\ : std_logic;
SIGNAL \inst|timerOut~1_combout\ : std_logic;
SIGNAL \inst|timerOut~q\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|timerOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X110_Y64_N0
\inst|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~32_combout\ = \inst|s_count\(0) $ (VCC)
-- \inst|s_count[0]~33\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(0),
	datad => VCC,
	combout => \inst|s_count[0]~32_combout\,
	cout => \inst|s_count[0]~33\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X110_Y64_N4
\inst|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~36_combout\ = (\inst|s_count\(2) & (\inst|s_count[1]~35\ $ (GND))) # (!\inst|s_count\(2) & (!\inst|s_count[1]~35\ & VCC))
-- \inst|s_count[2]~37\ = CARRY((\inst|s_count\(2) & !\inst|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(2),
	datad => VCC,
	cin => \inst|s_count[1]~35\,
	combout => \inst|s_count[2]~36_combout\,
	cout => \inst|s_count[2]~37\);

-- Location: LCCOMB_X110_Y64_N6
\inst|s_count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~41_combout\ = (\inst|s_count\(3) & (!\inst|s_count[2]~37\)) # (!\inst|s_count\(3) & ((\inst|s_count[2]~37\) # (GND)))
-- \inst|s_count[3]~42\ = CARRY((!\inst|s_count[2]~37\) # (!\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(3),
	datad => VCC,
	cin => \inst|s_count[2]~37\,
	combout => \inst|s_count[3]~41_combout\,
	cout => \inst|s_count[3]~42\);

-- Location: LCCOMB_X111_Y63_N18
\inst|s_count[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~39_combout\ = (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & (!\inst|s_count\(2) & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(2),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|s_count[0]~39_combout\);

-- Location: LCCOMB_X111_Y63_N0
\inst|s_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~40_combout\ = (!\inst|s_count[0]~39_combout\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datad => \inst|s_count[0]~39_combout\,
	combout => \inst|s_count[0]~40_combout\);

-- Location: FF_X110_Y64_N7
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[3]~41_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X110_Y64_N8
\inst|s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[4]~43_combout\ = (\inst|s_count\(4) & (\inst|s_count[3]~42\ $ (GND))) # (!\inst|s_count\(4) & (!\inst|s_count[3]~42\ & VCC))
-- \inst|s_count[4]~44\ = CARRY((\inst|s_count\(4) & !\inst|s_count[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(4),
	datad => VCC,
	cin => \inst|s_count[3]~42\,
	combout => \inst|s_count[4]~43_combout\,
	cout => \inst|s_count[4]~44\);

-- Location: FF_X110_Y64_N9
\inst|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[4]~43_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(4));

-- Location: LCCOMB_X110_Y64_N10
\inst|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[5]~45_combout\ = (\inst|s_count\(5) & (!\inst|s_count[4]~44\)) # (!\inst|s_count\(5) & ((\inst|s_count[4]~44\) # (GND)))
-- \inst|s_count[5]~46\ = CARRY((!\inst|s_count[4]~44\) # (!\inst|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(5),
	datad => VCC,
	cin => \inst|s_count[4]~44\,
	combout => \inst|s_count[5]~45_combout\,
	cout => \inst|s_count[5]~46\);

-- Location: FF_X110_Y64_N11
\inst|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[5]~45_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(5));

-- Location: LCCOMB_X110_Y64_N12
\inst|s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[6]~47_combout\ = (\inst|s_count\(6) & (\inst|s_count[5]~46\ $ (GND))) # (!\inst|s_count\(6) & (!\inst|s_count[5]~46\ & VCC))
-- \inst|s_count[6]~48\ = CARRY((\inst|s_count\(6) & !\inst|s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(6),
	datad => VCC,
	cin => \inst|s_count[5]~46\,
	combout => \inst|s_count[6]~47_combout\,
	cout => \inst|s_count[6]~48\);

-- Location: FF_X110_Y64_N13
\inst|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[6]~47_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(6));

-- Location: LCCOMB_X110_Y64_N14
\inst|s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[7]~49_combout\ = (\inst|s_count\(7) & (!\inst|s_count[6]~48\)) # (!\inst|s_count\(7) & ((\inst|s_count[6]~48\) # (GND)))
-- \inst|s_count[7]~50\ = CARRY((!\inst|s_count[6]~48\) # (!\inst|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(7),
	datad => VCC,
	cin => \inst|s_count[6]~48\,
	combout => \inst|s_count[7]~49_combout\,
	cout => \inst|s_count[7]~50\);

-- Location: FF_X110_Y64_N15
\inst|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[7]~49_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(7));

-- Location: LCCOMB_X110_Y64_N16
\inst|s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[8]~51_combout\ = (\inst|s_count\(8) & (\inst|s_count[7]~50\ $ (GND))) # (!\inst|s_count\(8) & (!\inst|s_count[7]~50\ & VCC))
-- \inst|s_count[8]~52\ = CARRY((\inst|s_count\(8) & !\inst|s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(8),
	datad => VCC,
	cin => \inst|s_count[7]~50\,
	combout => \inst|s_count[8]~51_combout\,
	cout => \inst|s_count[8]~52\);

-- Location: FF_X110_Y64_N17
\inst|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[8]~51_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(8));

-- Location: LCCOMB_X110_Y64_N18
\inst|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[9]~53_combout\ = (\inst|s_count\(9) & (!\inst|s_count[8]~52\)) # (!\inst|s_count\(9) & ((\inst|s_count[8]~52\) # (GND)))
-- \inst|s_count[9]~54\ = CARRY((!\inst|s_count[8]~52\) # (!\inst|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(9),
	datad => VCC,
	cin => \inst|s_count[8]~52\,
	combout => \inst|s_count[9]~53_combout\,
	cout => \inst|s_count[9]~54\);

-- Location: FF_X110_Y64_N19
\inst|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[9]~53_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(9));

-- Location: LCCOMB_X110_Y64_N20
\inst|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[10]~55_combout\ = (\inst|s_count\(10) & (\inst|s_count[9]~54\ $ (GND))) # (!\inst|s_count\(10) & (!\inst|s_count[9]~54\ & VCC))
-- \inst|s_count[10]~56\ = CARRY((\inst|s_count\(10) & !\inst|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(10),
	datad => VCC,
	cin => \inst|s_count[9]~54\,
	combout => \inst|s_count[10]~55_combout\,
	cout => \inst|s_count[10]~56\);

-- Location: FF_X111_Y63_N17
\inst|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[10]~55_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	sload => VCC,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(10));

-- Location: LCCOMB_X110_Y64_N22
\inst|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[11]~57_combout\ = (\inst|s_count\(11) & (!\inst|s_count[10]~56\)) # (!\inst|s_count\(11) & ((\inst|s_count[10]~56\) # (GND)))
-- \inst|s_count[11]~58\ = CARRY((!\inst|s_count[10]~56\) # (!\inst|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(11),
	datad => VCC,
	cin => \inst|s_count[10]~56\,
	combout => \inst|s_count[11]~57_combout\,
	cout => \inst|s_count[11]~58\);

-- Location: FF_X111_Y63_N11
\inst|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[11]~57_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	sload => VCC,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(11));

-- Location: LCCOMB_X110_Y64_N24
\inst|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[12]~59_combout\ = (\inst|s_count\(12) & (\inst|s_count[11]~58\ $ (GND))) # (!\inst|s_count\(12) & (!\inst|s_count[11]~58\ & VCC))
-- \inst|s_count[12]~60\ = CARRY((\inst|s_count\(12) & !\inst|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(12),
	datad => VCC,
	cin => \inst|s_count[11]~58\,
	combout => \inst|s_count[12]~59_combout\,
	cout => \inst|s_count[12]~60\);

-- Location: FF_X110_Y64_N25
\inst|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[12]~59_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(12));

-- Location: LCCOMB_X110_Y64_N26
\inst|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[13]~61_combout\ = (\inst|s_count\(13) & (!\inst|s_count[12]~60\)) # (!\inst|s_count\(13) & ((\inst|s_count[12]~60\) # (GND)))
-- \inst|s_count[13]~62\ = CARRY((!\inst|s_count[12]~60\) # (!\inst|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(13),
	datad => VCC,
	cin => \inst|s_count[12]~60\,
	combout => \inst|s_count[13]~61_combout\,
	cout => \inst|s_count[13]~62\);

-- Location: FF_X111_Y63_N25
\inst|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[13]~61_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	sload => VCC,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(13));

-- Location: LCCOMB_X110_Y64_N28
\inst|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[14]~63_combout\ = (\inst|s_count\(14) & (\inst|s_count[13]~62\ $ (GND))) # (!\inst|s_count\(14) & (!\inst|s_count[13]~62\ & VCC))
-- \inst|s_count[14]~64\ = CARRY((\inst|s_count\(14) & !\inst|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(14),
	datad => VCC,
	cin => \inst|s_count[13]~62\,
	combout => \inst|s_count[14]~63_combout\,
	cout => \inst|s_count[14]~64\);

-- Location: FF_X111_Y63_N7
\inst|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[14]~63_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	sload => VCC,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(14));

-- Location: LCCOMB_X110_Y64_N30
\inst|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[15]~65_combout\ = (\inst|s_count\(15) & (!\inst|s_count[14]~64\)) # (!\inst|s_count\(15) & ((\inst|s_count[14]~64\) # (GND)))
-- \inst|s_count[15]~66\ = CARRY((!\inst|s_count[14]~64\) # (!\inst|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(15),
	datad => VCC,
	cin => \inst|s_count[14]~64\,
	combout => \inst|s_count[15]~65_combout\,
	cout => \inst|s_count[15]~66\);

-- Location: FF_X111_Y63_N1
\inst|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[15]~65_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	sload => VCC,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(15));

-- Location: LCCOMB_X110_Y63_N0
\inst|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[16]~67_combout\ = (\inst|s_count\(16) & (\inst|s_count[15]~66\ $ (GND))) # (!\inst|s_count\(16) & (!\inst|s_count[15]~66\ & VCC))
-- \inst|s_count[16]~68\ = CARRY((\inst|s_count\(16) & !\inst|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(16),
	datad => VCC,
	cin => \inst|s_count[15]~66\,
	combout => \inst|s_count[16]~67_combout\,
	cout => \inst|s_count[16]~68\);

-- Location: FF_X110_Y63_N1
\inst|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[16]~67_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(16));

-- Location: LCCOMB_X110_Y63_N2
\inst|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[17]~69_combout\ = (\inst|s_count\(17) & (!\inst|s_count[16]~68\)) # (!\inst|s_count\(17) & ((\inst|s_count[16]~68\) # (GND)))
-- \inst|s_count[17]~70\ = CARRY((!\inst|s_count[16]~68\) # (!\inst|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(17),
	datad => VCC,
	cin => \inst|s_count[16]~68\,
	combout => \inst|s_count[17]~69_combout\,
	cout => \inst|s_count[17]~70\);

-- Location: FF_X110_Y63_N3
\inst|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[17]~69_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(17));

-- Location: LCCOMB_X110_Y63_N4
\inst|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[18]~71_combout\ = (\inst|s_count\(18) & (\inst|s_count[17]~70\ $ (GND))) # (!\inst|s_count\(18) & (!\inst|s_count[17]~70\ & VCC))
-- \inst|s_count[18]~72\ = CARRY((\inst|s_count\(18) & !\inst|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(18),
	datad => VCC,
	cin => \inst|s_count[17]~70\,
	combout => \inst|s_count[18]~71_combout\,
	cout => \inst|s_count[18]~72\);

-- Location: FF_X110_Y63_N5
\inst|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[18]~71_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(18));

-- Location: LCCOMB_X110_Y63_N6
\inst|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[19]~73_combout\ = (\inst|s_count\(19) & (!\inst|s_count[18]~72\)) # (!\inst|s_count\(19) & ((\inst|s_count[18]~72\) # (GND)))
-- \inst|s_count[19]~74\ = CARRY((!\inst|s_count[18]~72\) # (!\inst|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datad => VCC,
	cin => \inst|s_count[18]~72\,
	combout => \inst|s_count[19]~73_combout\,
	cout => \inst|s_count[19]~74\);

-- Location: FF_X110_Y63_N7
\inst|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[19]~73_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(19));

-- Location: LCCOMB_X110_Y63_N8
\inst|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[20]~75_combout\ = (\inst|s_count\(20) & (\inst|s_count[19]~74\ $ (GND))) # (!\inst|s_count\(20) & (!\inst|s_count[19]~74\ & VCC))
-- \inst|s_count[20]~76\ = CARRY((\inst|s_count\(20) & !\inst|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(20),
	datad => VCC,
	cin => \inst|s_count[19]~74\,
	combout => \inst|s_count[20]~75_combout\,
	cout => \inst|s_count[20]~76\);

-- Location: FF_X110_Y63_N9
\inst|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[20]~75_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(20));

-- Location: LCCOMB_X110_Y63_N10
\inst|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[21]~77_combout\ = (\inst|s_count\(21) & (!\inst|s_count[20]~76\)) # (!\inst|s_count\(21) & ((\inst|s_count[20]~76\) # (GND)))
-- \inst|s_count[21]~78\ = CARRY((!\inst|s_count[20]~76\) # (!\inst|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(21),
	datad => VCC,
	cin => \inst|s_count[20]~76\,
	combout => \inst|s_count[21]~77_combout\,
	cout => \inst|s_count[21]~78\);

-- Location: FF_X110_Y63_N11
\inst|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[21]~77_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(21));

-- Location: LCCOMB_X110_Y63_N12
\inst|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[22]~79_combout\ = (\inst|s_count\(22) & (\inst|s_count[21]~78\ $ (GND))) # (!\inst|s_count\(22) & (!\inst|s_count[21]~78\ & VCC))
-- \inst|s_count[22]~80\ = CARRY((\inst|s_count\(22) & !\inst|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(22),
	datad => VCC,
	cin => \inst|s_count[21]~78\,
	combout => \inst|s_count[22]~79_combout\,
	cout => \inst|s_count[22]~80\);

-- Location: FF_X110_Y63_N13
\inst|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[22]~79_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(22));

-- Location: LCCOMB_X110_Y63_N14
\inst|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[23]~81_combout\ = (\inst|s_count\(23) & (!\inst|s_count[22]~80\)) # (!\inst|s_count\(23) & ((\inst|s_count[22]~80\) # (GND)))
-- \inst|s_count[23]~82\ = CARRY((!\inst|s_count[22]~80\) # (!\inst|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(23),
	datad => VCC,
	cin => \inst|s_count[22]~80\,
	combout => \inst|s_count[23]~81_combout\,
	cout => \inst|s_count[23]~82\);

-- Location: FF_X110_Y63_N15
\inst|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[23]~81_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(23));

-- Location: LCCOMB_X110_Y63_N16
\inst|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[24]~83_combout\ = (\inst|s_count\(24) & (\inst|s_count[23]~82\ $ (GND))) # (!\inst|s_count\(24) & (!\inst|s_count[23]~82\ & VCC))
-- \inst|s_count[24]~84\ = CARRY((\inst|s_count\(24) & !\inst|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(24),
	datad => VCC,
	cin => \inst|s_count[23]~82\,
	combout => \inst|s_count[24]~83_combout\,
	cout => \inst|s_count[24]~84\);

-- Location: FF_X110_Y63_N17
\inst|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[24]~83_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(24));

-- Location: LCCOMB_X111_Y63_N26
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|s_count\(23) & (!\inst|s_count\(22) & (!\inst|s_count\(24) & !\inst|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(23),
	datab => \inst|s_count\(22),
	datac => \inst|s_count\(24),
	datad => \inst|s_count\(21),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y63_N20
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|s_count\(20) & (!\inst|s_count\(19) & (!\inst|s_count\(17) & !\inst|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(20),
	datab => \inst|s_count\(19),
	datac => \inst|s_count\(17),
	datad => \inst|s_count\(18),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y63_N18
\inst|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[25]~85_combout\ = (\inst|s_count\(25) & (!\inst|s_count[24]~84\)) # (!\inst|s_count\(25) & ((\inst|s_count[24]~84\) # (GND)))
-- \inst|s_count[25]~86\ = CARRY((!\inst|s_count[24]~84\) # (!\inst|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(25),
	datad => VCC,
	cin => \inst|s_count[24]~84\,
	combout => \inst|s_count[25]~85_combout\,
	cout => \inst|s_count[25]~86\);

-- Location: FF_X110_Y63_N19
\inst|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[25]~85_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(25));

-- Location: LCCOMB_X110_Y63_N20
\inst|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[26]~87_combout\ = (\inst|s_count\(26) & (\inst|s_count[25]~86\ $ (GND))) # (!\inst|s_count\(26) & (!\inst|s_count[25]~86\ & VCC))
-- \inst|s_count[26]~88\ = CARRY((\inst|s_count\(26) & !\inst|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(26),
	datad => VCC,
	cin => \inst|s_count[25]~86\,
	combout => \inst|s_count[26]~87_combout\,
	cout => \inst|s_count[26]~88\);

-- Location: FF_X110_Y63_N21
\inst|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[26]~87_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(26));

-- Location: LCCOMB_X110_Y63_N22
\inst|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[27]~89_combout\ = (\inst|s_count\(27) & (!\inst|s_count[26]~88\)) # (!\inst|s_count\(27) & ((\inst|s_count[26]~88\) # (GND)))
-- \inst|s_count[27]~90\ = CARRY((!\inst|s_count[26]~88\) # (!\inst|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(27),
	datad => VCC,
	cin => \inst|s_count[26]~88\,
	combout => \inst|s_count[27]~89_combout\,
	cout => \inst|s_count[27]~90\);

-- Location: FF_X110_Y63_N23
\inst|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[27]~89_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(27));

-- Location: LCCOMB_X110_Y63_N24
\inst|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[28]~91_combout\ = (\inst|s_count\(28) & (\inst|s_count[27]~90\ $ (GND))) # (!\inst|s_count\(28) & (!\inst|s_count[27]~90\ & VCC))
-- \inst|s_count[28]~92\ = CARRY((\inst|s_count\(28) & !\inst|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(28),
	datad => VCC,
	cin => \inst|s_count[27]~90\,
	combout => \inst|s_count[28]~91_combout\,
	cout => \inst|s_count[28]~92\);

-- Location: FF_X110_Y63_N25
\inst|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[28]~91_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(28));

-- Location: LCCOMB_X110_Y63_N26
\inst|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[29]~93_combout\ = (\inst|s_count\(29) & (!\inst|s_count[28]~92\)) # (!\inst|s_count\(29) & ((\inst|s_count[28]~92\) # (GND)))
-- \inst|s_count[29]~94\ = CARRY((!\inst|s_count[28]~92\) # (!\inst|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(29),
	datad => VCC,
	cin => \inst|s_count[28]~92\,
	combout => \inst|s_count[29]~93_combout\,
	cout => \inst|s_count[29]~94\);

-- Location: FF_X110_Y63_N27
\inst|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[29]~93_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(29));

-- Location: LCCOMB_X110_Y63_N28
\inst|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[30]~95_combout\ = (\inst|s_count\(30) & (\inst|s_count[29]~94\ $ (GND))) # (!\inst|s_count\(30) & (!\inst|s_count[29]~94\ & VCC))
-- \inst|s_count[30]~96\ = CARRY((\inst|s_count\(30) & !\inst|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(30),
	datad => VCC,
	cin => \inst|s_count[29]~94\,
	combout => \inst|s_count[30]~95_combout\,
	cout => \inst|s_count[30]~96\);

-- Location: FF_X110_Y63_N29
\inst|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[30]~95_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(30));

-- Location: LCCOMB_X111_Y63_N4
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|s_count\(28) & (!\inst|s_count\(26) & (!\inst|s_count\(25) & !\inst|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(28),
	datab => \inst|s_count\(26),
	datac => \inst|s_count\(25),
	datad => \inst|s_count\(27),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y63_N30
\inst|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[31]~97_combout\ = \inst|s_count\(31) $ (\inst|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(31),
	cin => \inst|s_count[30]~96\,
	combout => \inst|s_count[31]~97_combout\);

-- Location: FF_X110_Y63_N31
\inst|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[31]~97_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(31));

-- Location: LCCOMB_X111_Y63_N22
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|s_count\(29) & (!\inst|s_count\(30) & (\inst|Equal0~7_combout\ & !\inst|s_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(29),
	datab => \inst|s_count\(30),
	datac => \inst|Equal0~7_combout\,
	datad => \inst|s_count\(31),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y63_N6
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|s_count\(16) & (!\inst|s_count\(13) & (!\inst|s_count\(14) & !\inst|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datab => \inst|s_count\(13),
	datac => \inst|s_count\(14),
	datad => \inst|s_count\(15),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y63_N8
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|s_count\(5) & (!\inst|s_count\(7) & (!\inst|s_count\(8) & !\inst|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(5),
	datab => \inst|s_count\(7),
	datac => \inst|s_count\(8),
	datad => \inst|s_count\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y63_N30
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|s_count\(0) & (!\inst|s_count\(4) & (!\inst|s_count\(3) & !\inst|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(4),
	datac => \inst|s_count\(3),
	datad => \inst|s_count\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y63_N10
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|s_count\(12) & (!\inst|s_count\(10) & (!\inst|s_count\(11) & !\inst|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(12),
	datab => \inst|s_count\(10),
	datac => \inst|s_count\(11),
	datad => \inst|s_count\(9),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y63_N2
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y63_N28
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~8_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~8_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X111_Y63_N12
\inst|s_count[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~38_combout\ = (\SW[0]~input_o\) # ((\inst|Equal0~9_combout\ & ((\inst|s_count\(2)) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(2),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|s_count[0]~38_combout\);

-- Location: FF_X110_Y64_N1
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[0]~32_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LCCOMB_X110_Y64_N2
\inst|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~34_combout\ = (\inst|s_count\(1) & (!\inst|s_count[0]~33\)) # (!\inst|s_count\(1) & ((\inst|s_count[0]~33\) # (GND)))
-- \inst|s_count[1]~35\ = CARRY((!\inst|s_count[0]~33\) # (!\inst|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|s_count[0]~33\,
	combout => \inst|s_count[1]~34_combout\,
	cout => \inst|s_count[1]~35\);

-- Location: FF_X110_Y64_N3
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[1]~34_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: FF_X110_Y64_N5
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[2]~36_combout\,
	sclr => \inst|s_count[0]~38_combout\,
	ena => \inst|s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X111_Y63_N14
\inst|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~0_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\inst|s_count\(2) & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst|s_count\(2),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|timerOut~0_combout\);

-- Location: LCCOMB_X112_Y63_N4
\inst|timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~1_combout\ = (\inst|timerOut~0_combout\) # ((!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \inst|timerOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst|timerOut~q\,
	datad => \inst|timerOut~0_combout\,
	combout => \inst|timerOut~1_combout\);

-- Location: FF_X112_Y63_N5
\inst|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|timerOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|timerOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


