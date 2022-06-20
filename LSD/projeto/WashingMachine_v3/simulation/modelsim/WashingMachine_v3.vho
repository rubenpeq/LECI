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

-- DATE "06/20/2022 01:08:33"

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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

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

ENTITY 	WashingMachine_v3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END WashingMachine_v3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WashingMachine_v3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_level|Selector12~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_level|display_out[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_level|Selector26~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \top_level|Selector24~0_combout\ : std_logic;
SIGNAL \top_level|Selector25~0_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \divisor|clkOut~2_combout\ : std_logic;
SIGNAL \divisor|clkOut~0_combout\ : std_logic;
SIGNAL \divisor|clkOut~1_combout\ : std_logic;
SIGNAL \divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \divisor|LessThan0~6_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[0]~27\ : std_logic;
SIGNAL \divisor|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[1]~29\ : std_logic;
SIGNAL \divisor|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[2]~31\ : std_logic;
SIGNAL \divisor|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[3]~33\ : std_logic;
SIGNAL \divisor|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[4]~35\ : std_logic;
SIGNAL \divisor|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[5]~37\ : std_logic;
SIGNAL \divisor|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[6]~39\ : std_logic;
SIGNAL \divisor|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[7]~41\ : std_logic;
SIGNAL \divisor|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[8]~43\ : std_logic;
SIGNAL \divisor|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[9]~45\ : std_logic;
SIGNAL \divisor|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[10]~47\ : std_logic;
SIGNAL \divisor|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[11]~49\ : std_logic;
SIGNAL \divisor|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[12]~51\ : std_logic;
SIGNAL \divisor|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[13]~53\ : std_logic;
SIGNAL \divisor|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[14]~55\ : std_logic;
SIGNAL \divisor|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[15]~57\ : std_logic;
SIGNAL \divisor|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[16]~59\ : std_logic;
SIGNAL \divisor|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[17]~61\ : std_logic;
SIGNAL \divisor|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[18]~63\ : std_logic;
SIGNAL \divisor|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[19]~65\ : std_logic;
SIGNAL \divisor|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[20]~67\ : std_logic;
SIGNAL \divisor|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[21]~69\ : std_logic;
SIGNAL \divisor|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[22]~71\ : std_logic;
SIGNAL \divisor|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[23]~73\ : std_logic;
SIGNAL \divisor|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[24]~75\ : std_logic;
SIGNAL \divisor|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \divisor|clkOut~3_combout\ : std_logic;
SIGNAL \divisor|LessThan0~4_combout\ : std_logic;
SIGNAL \divisor|LessThan0~5_combout\ : std_logic;
SIGNAL \divisor|clkOut~4_combout\ : std_logic;
SIGNAL \divisor|clkOut~5_combout\ : std_logic;
SIGNAL \divisor|clkOut~6_combout\ : std_logic;
SIGNAL \divisor|clkOut~7_combout\ : std_logic;
SIGNAL \divisor|clkOut~8_combout\ : std_logic;
SIGNAL \divisor|clkOut~9_combout\ : std_logic;
SIGNAL \divisor|clkOut~q\ : std_logic;
SIGNAL \top_level|s_currentState~14_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tsoak~q\ : std_logic;
SIGNAL \top_level|Selector22~0_combout\ : std_logic;
SIGNAL \top_level|Selector12~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \top_level|Selector12~0_combout\ : std_logic;
SIGNAL \top_level|Selector12~2_combout\ : std_logic;
SIGNAL \top_level|Selector12~2clkctrl_outclk\ : std_logic;
SIGNAL \top_level|s_nextState.Tp2_551~combout\ : std_logic;
SIGNAL \top_level|s_currentState~12_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tp2~q\ : std_logic;
SIGNAL \top_level|Selector19~0_combout\ : std_logic;
SIGNAL \top_level|Selector2~0_combout\ : std_logic;
SIGNAL \top_level|Selector19~1_combout\ : std_logic;
SIGNAL \top_level|Selector19~2_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tsoak_515~combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~2_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~3_combout\ : std_logic;
SIGNAL \top_level|Selector17~0_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Trinse_497~combout\ : std_logic;
SIGNAL \top_level|s_currentState~15_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Trinse~q\ : std_logic;
SIGNAL \top_level|sync_proc~8_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~0_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~1_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~4_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~q\ : std_logic;
SIGNAL \divisor|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \top_level|Selector6~0_combout\ : std_logic;
SIGNAL \top_level|Selector6~1_combout\ : std_logic;
SIGNAL \top_level|Selector5~0_combout\ : std_logic;
SIGNAL \top_level|Selector5~1_combout\ : std_logic;
SIGNAL \top_level|s_timeEnable~combout\ : std_logic;
SIGNAL \timer_aux|s_counter[1]~1_combout\ : std_logic;
SIGNAL \top_level|WideOr9~0_combout\ : std_logic;
SIGNAL \top_level|display_out[1]~1_combout\ : std_logic;
SIGNAL \top_level|display_out[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \timer_aux|Add0~2_combout\ : std_logic;
SIGNAL \top_level|WideOr13~0_combout\ : std_logic;
SIGNAL \timer_aux|s_counter~4_combout\ : std_logic;
SIGNAL \timer_aux|s_counter~5_combout\ : std_logic;
SIGNAL \timer_aux|Add0~0_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[1]~0_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[1]~2_combout\ : std_logic;
SIGNAL \top_level|WideOr12~combout\ : std_logic;
SIGNAL \timer_aux|Add0~1_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[2]~6_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[2]~7_combout\ : std_logic;
SIGNAL \top_level|WideOr7~combout\ : std_logic;
SIGNAL \timer_aux|Add0~3_combout\ : std_logic;
SIGNAL \timer_aux|Add0~4_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[3]~3_combout\ : std_logic;
SIGNAL \timer_aux|Equal0~3_combout\ : std_logic;
SIGNAL \timer_aux|s_cntZero~0_combout\ : std_logic;
SIGNAL \timer_aux|s_cntZero~q\ : std_logic;
SIGNAL \top_level|Selector26~0_combout\ : std_logic;
SIGNAL \top_level|Selector26~1_combout\ : std_logic;
SIGNAL \top_level|Selector26~1clkctrl_outclk\ : std_logic;
SIGNAL \top_level|Selector13~0_combout\ : std_logic;
SIGNAL \top_level|Selector13~1_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tspin_461~combout\ : std_logic;
SIGNAL \top_level|s_currentState~16_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tspin~q\ : std_logic;
SIGNAL \top_level|Selector15~0_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Trm_water_479~combout\ : std_logic;
SIGNAL \top_level|s_currentState~17_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Trm_water~q\ : std_logic;
SIGNAL \top_level|Selector11~0_combout\ : std_logic;
SIGNAL \top_level|Selector11~1_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tfinished_443~combout\ : std_logic;
SIGNAL \top_level|s_currentState~18_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tfinished~q\ : std_logic;
SIGNAL \top_level|Selector24~1_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tidle_587~combout\ : std_logic;
SIGNAL \top_level|s_currentState~13_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tidle~q\ : std_logic;
SIGNAL \top_level|Selector23~0_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tp1_569~combout\ : std_logic;
SIGNAL \top_level|s_currentState~11_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tp1~q\ : std_logic;
SIGNAL \top_level|WideOr2~combout\ : std_logic;
SIGNAL \top_level|display_out[1]~0_combout\ : std_logic;
SIGNAL \top_level|display_out[0]~2_combout\ : std_logic;
SIGNAL \display_decoder|mode_out[1]~0_combout\ : std_logic;
SIGNAL \display_decoder|Equal1~0_combout\ : std_logic;
SIGNAL \display_decoder|Equal1~1_combout\ : std_logic;
SIGNAL \display_decoder|time0[0]~0_combout\ : std_logic;
SIGNAL \display_decoder|time0[1]~1_combout\ : std_logic;
SIGNAL \timer_aux|Equal0~0_combout\ : std_logic;
SIGNAL \display_decoder|time0[3]~2_combout\ : std_logic;
SIGNAL \display_decoder|time0[4]~3_combout\ : std_logic;
SIGNAL \display_decoder|time0[5]~4_combout\ : std_logic;
SIGNAL \display_decoder|time0[6]~5_combout\ : std_logic;
SIGNAL \timer_aux|Equal0~1_combout\ : std_logic;
SIGNAL \timer_aux|Equal0~2_combout\ : std_logic;
SIGNAL \display_decoder|time1[6]~0_combout\ : std_logic;
SIGNAL \divisor|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \timer_aux|s_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_level|display_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \top_level|s_mode\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \top_level|time_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_level|s_nextStateAUX\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \divisor|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \top_level|ALT_INV_display_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \divisor|ALT_INV_clkOut~q\ : std_logic;
SIGNAL \display_decoder|ALT_INV_time1[6]~0_combout\ : std_logic;
SIGNAL \display_decoder|ALT_INV_time0[6]~5_combout\ : std_logic;
SIGNAL \display_decoder|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \display_decoder|ALT_INV_mode_out[1]~0_combout\ : std_logic;
SIGNAL \top_level|ALT_INV_WideOr2~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\top_level|Selector12~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \top_level|Selector12~2_combout\);

\divisor|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor|clkOut~q\);

\top_level|display_out[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \top_level|display_out[1]~1_combout\);

\top_level|Selector26~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \top_level|Selector26~1_combout\);
\divisor|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \divisor|clkOut~clkctrl_outclk\;
\top_level|ALT_INV_display_out\(0) <= NOT \top_level|display_out\(0);
\top_level|ALT_INV_display_out\(1) <= NOT \top_level|display_out\(1);
\divisor|ALT_INV_clkOut~q\ <= NOT \divisor|clkOut~q\;
\display_decoder|ALT_INV_time1[6]~0_combout\ <= NOT \display_decoder|time1[6]~0_combout\;
\display_decoder|ALT_INV_time0[6]~5_combout\ <= NOT \display_decoder|time0[6]~5_combout\;
\display_decoder|ALT_INV_Equal1~1_combout\ <= NOT \display_decoder|Equal1~1_combout\;
\display_decoder|ALT_INV_mode_out[1]~0_combout\ <= NOT \display_decoder|mode_out[1]~0_combout\;
\top_level|ALT_INV_WideOr2~combout\ <= NOT \top_level|WideOr2~combout\;
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
	i => \top_level|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_currentState.Tsoak~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_currentState.Trinse~q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_currentState.Tspin~q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_currentState.Trm_water~q\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|ALT_INV_display_out\(1),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|ALT_INV_mode_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|ALT_INV_display_out\(0),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|ALT_INV_display_out\(1),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|time0[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|time0[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_aux|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|time0[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|time0[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|time0[5]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|ALT_INV_time0[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_aux|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_aux|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_aux|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_aux|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_aux|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_decoder|ALT_INV_time1[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_timeEnable~combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_timeEnable~combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

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

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

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

-- Location: LCCOMB_X100_Y40_N30
\top_level|s_mode[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_mode\(1) = (\top_level|s_currentState.Tidle~q\ & ((\top_level|s_mode\(1)))) # (!\top_level|s_currentState.Tidle~q\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|s_mode\(1),
	combout => \top_level|s_mode\(1));

-- Location: LCCOMB_X100_Y40_N10
\top_level|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector24~0_combout\ = \top_level|s_mode\(0) $ (!\top_level|s_mode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_mode\(0),
	datad => \top_level|s_mode\(1),
	combout => \top_level|Selector24~0_combout\);

-- Location: LCCOMB_X99_Y40_N14
\top_level|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector25~0_combout\ = (\top_level|s_currentState.Trm_water~q\ & !\top_level|s_nextStateAUX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_level|s_currentState.Trm_water~q\,
	datad => \top_level|s_nextStateAUX\(0),
	combout => \top_level|Selector25~0_combout\);

-- Location: LCCOMB_X73_Y14_N6
\divisor|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[0]~26_combout\ = \divisor|s_divCounter\(0) $ (VCC)
-- \divisor|s_divCounter[0]~27\ = CARRY(\divisor|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(0),
	datad => VCC,
	combout => \divisor|s_divCounter[0]~26_combout\,
	cout => \divisor|s_divCounter[0]~27\);

-- Location: LCCOMB_X74_Y13_N6
\divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~2_combout\ = (((!\divisor|s_divCounter\(14)) # (!\divisor|s_divCounter\(15))) # (!\divisor|s_divCounter\(12))) # (!\divisor|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(13),
	datab => \divisor|s_divCounter\(12),
	datac => \divisor|s_divCounter\(15),
	datad => \divisor|s_divCounter\(14),
	combout => \divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X74_Y13_N18
\divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~3_combout\ = (!\divisor|s_divCounter\(18) & (!\divisor|s_divCounter\(24) & (!\divisor|s_divCounter\(16) & \divisor|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(18),
	datab => \divisor|s_divCounter\(24),
	datac => \divisor|s_divCounter\(16),
	datad => \divisor|LessThan0~2_combout\,
	combout => \divisor|LessThan0~3_combout\);

-- Location: LCCOMB_X74_Y13_N22
\divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~0_combout\ = (!\divisor|s_divCounter\(18) & (!\divisor|s_divCounter\(11) & (!\divisor|s_divCounter\(16) & !\divisor|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(18),
	datab => \divisor|s_divCounter\(11),
	datac => \divisor|s_divCounter\(16),
	datad => \divisor|s_divCounter\(24),
	combout => \divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X73_Y14_N4
\divisor|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~2_combout\ = (!\divisor|s_divCounter\(8) & (!\divisor|s_divCounter\(7) & (!\divisor|s_divCounter\(10) & !\divisor|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(8),
	datab => \divisor|s_divCounter\(7),
	datac => \divisor|s_divCounter\(10),
	datad => \divisor|s_divCounter\(9),
	combout => \divisor|clkOut~2_combout\);

-- Location: LCCOMB_X73_Y14_N0
\divisor|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~0_combout\ = (\divisor|s_divCounter\(3) & (\divisor|s_divCounter\(0) & (\divisor|s_divCounter\(1) & \divisor|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(3),
	datab => \divisor|s_divCounter\(0),
	datac => \divisor|s_divCounter\(1),
	datad => \divisor|s_divCounter\(2),
	combout => \divisor|clkOut~0_combout\);

-- Location: LCCOMB_X73_Y14_N2
\divisor|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~1_combout\ = (\divisor|s_divCounter\(5) & (\divisor|s_divCounter\(4) & \divisor|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(5),
	datac => \divisor|s_divCounter\(4),
	datad => \divisor|clkOut~0_combout\,
	combout => \divisor|clkOut~1_combout\);

-- Location: LCCOMB_X74_Y13_N2
\divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~1_combout\ = (\divisor|LessThan0~0_combout\ & (\divisor|clkOut~2_combout\ & ((!\divisor|clkOut~1_combout\) # (!\divisor|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~0_combout\,
	datab => \divisor|s_divCounter\(6),
	datac => \divisor|clkOut~2_combout\,
	datad => \divisor|clkOut~1_combout\,
	combout => \divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X74_Y13_N0
\divisor|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~6_combout\ = (!\divisor|LessThan0~3_combout\ & (!\divisor|LessThan0~5_combout\ & !\divisor|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|LessThan0~3_combout\,
	datac => \divisor|LessThan0~5_combout\,
	datad => \divisor|LessThan0~1_combout\,
	combout => \divisor|LessThan0~6_combout\);

-- Location: FF_X73_Y14_N7
\divisor|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[0]~26_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(0));

-- Location: LCCOMB_X73_Y14_N8
\divisor|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[1]~28_combout\ = (\divisor|s_divCounter\(1) & (!\divisor|s_divCounter[0]~27\)) # (!\divisor|s_divCounter\(1) & ((\divisor|s_divCounter[0]~27\) # (GND)))
-- \divisor|s_divCounter[1]~29\ = CARRY((!\divisor|s_divCounter[0]~27\) # (!\divisor|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(1),
	datad => VCC,
	cin => \divisor|s_divCounter[0]~27\,
	combout => \divisor|s_divCounter[1]~28_combout\,
	cout => \divisor|s_divCounter[1]~29\);

-- Location: FF_X73_Y14_N9
\divisor|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[1]~28_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(1));

-- Location: LCCOMB_X73_Y14_N10
\divisor|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[2]~30_combout\ = (\divisor|s_divCounter\(2) & (\divisor|s_divCounter[1]~29\ $ (GND))) # (!\divisor|s_divCounter\(2) & (!\divisor|s_divCounter[1]~29\ & VCC))
-- \divisor|s_divCounter[2]~31\ = CARRY((\divisor|s_divCounter\(2) & !\divisor|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(2),
	datad => VCC,
	cin => \divisor|s_divCounter[1]~29\,
	combout => \divisor|s_divCounter[2]~30_combout\,
	cout => \divisor|s_divCounter[2]~31\);

-- Location: FF_X73_Y14_N11
\divisor|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[2]~30_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(2));

-- Location: LCCOMB_X73_Y14_N12
\divisor|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[3]~32_combout\ = (\divisor|s_divCounter\(3) & (!\divisor|s_divCounter[2]~31\)) # (!\divisor|s_divCounter\(3) & ((\divisor|s_divCounter[2]~31\) # (GND)))
-- \divisor|s_divCounter[3]~33\ = CARRY((!\divisor|s_divCounter[2]~31\) # (!\divisor|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(3),
	datad => VCC,
	cin => \divisor|s_divCounter[2]~31\,
	combout => \divisor|s_divCounter[3]~32_combout\,
	cout => \divisor|s_divCounter[3]~33\);

-- Location: FF_X73_Y14_N13
\divisor|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[3]~32_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(3));

-- Location: LCCOMB_X73_Y14_N14
\divisor|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[4]~34_combout\ = (\divisor|s_divCounter\(4) & (\divisor|s_divCounter[3]~33\ $ (GND))) # (!\divisor|s_divCounter\(4) & (!\divisor|s_divCounter[3]~33\ & VCC))
-- \divisor|s_divCounter[4]~35\ = CARRY((\divisor|s_divCounter\(4) & !\divisor|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(4),
	datad => VCC,
	cin => \divisor|s_divCounter[3]~33\,
	combout => \divisor|s_divCounter[4]~34_combout\,
	cout => \divisor|s_divCounter[4]~35\);

-- Location: FF_X73_Y14_N15
\divisor|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[4]~34_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(4));

-- Location: LCCOMB_X73_Y14_N16
\divisor|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[5]~36_combout\ = (\divisor|s_divCounter\(5) & (!\divisor|s_divCounter[4]~35\)) # (!\divisor|s_divCounter\(5) & ((\divisor|s_divCounter[4]~35\) # (GND)))
-- \divisor|s_divCounter[5]~37\ = CARRY((!\divisor|s_divCounter[4]~35\) # (!\divisor|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(5),
	datad => VCC,
	cin => \divisor|s_divCounter[4]~35\,
	combout => \divisor|s_divCounter[5]~36_combout\,
	cout => \divisor|s_divCounter[5]~37\);

-- Location: FF_X73_Y14_N17
\divisor|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[5]~36_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(5));

-- Location: LCCOMB_X73_Y14_N18
\divisor|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[6]~38_combout\ = (\divisor|s_divCounter\(6) & (\divisor|s_divCounter[5]~37\ $ (GND))) # (!\divisor|s_divCounter\(6) & (!\divisor|s_divCounter[5]~37\ & VCC))
-- \divisor|s_divCounter[6]~39\ = CARRY((\divisor|s_divCounter\(6) & !\divisor|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(6),
	datad => VCC,
	cin => \divisor|s_divCounter[5]~37\,
	combout => \divisor|s_divCounter[6]~38_combout\,
	cout => \divisor|s_divCounter[6]~39\);

-- Location: FF_X73_Y14_N19
\divisor|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[6]~38_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(6));

-- Location: LCCOMB_X73_Y14_N20
\divisor|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[7]~40_combout\ = (\divisor|s_divCounter\(7) & (!\divisor|s_divCounter[6]~39\)) # (!\divisor|s_divCounter\(7) & ((\divisor|s_divCounter[6]~39\) # (GND)))
-- \divisor|s_divCounter[7]~41\ = CARRY((!\divisor|s_divCounter[6]~39\) # (!\divisor|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(7),
	datad => VCC,
	cin => \divisor|s_divCounter[6]~39\,
	combout => \divisor|s_divCounter[7]~40_combout\,
	cout => \divisor|s_divCounter[7]~41\);

-- Location: FF_X73_Y14_N21
\divisor|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[7]~40_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(7));

-- Location: LCCOMB_X73_Y14_N22
\divisor|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[8]~42_combout\ = (\divisor|s_divCounter\(8) & (\divisor|s_divCounter[7]~41\ $ (GND))) # (!\divisor|s_divCounter\(8) & (!\divisor|s_divCounter[7]~41\ & VCC))
-- \divisor|s_divCounter[8]~43\ = CARRY((\divisor|s_divCounter\(8) & !\divisor|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(8),
	datad => VCC,
	cin => \divisor|s_divCounter[7]~41\,
	combout => \divisor|s_divCounter[8]~42_combout\,
	cout => \divisor|s_divCounter[8]~43\);

-- Location: FF_X73_Y14_N23
\divisor|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[8]~42_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(8));

-- Location: LCCOMB_X73_Y14_N24
\divisor|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[9]~44_combout\ = (\divisor|s_divCounter\(9) & (!\divisor|s_divCounter[8]~43\)) # (!\divisor|s_divCounter\(9) & ((\divisor|s_divCounter[8]~43\) # (GND)))
-- \divisor|s_divCounter[9]~45\ = CARRY((!\divisor|s_divCounter[8]~43\) # (!\divisor|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(9),
	datad => VCC,
	cin => \divisor|s_divCounter[8]~43\,
	combout => \divisor|s_divCounter[9]~44_combout\,
	cout => \divisor|s_divCounter[9]~45\);

-- Location: FF_X73_Y14_N25
\divisor|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[9]~44_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(9));

-- Location: LCCOMB_X73_Y14_N26
\divisor|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[10]~46_combout\ = (\divisor|s_divCounter\(10) & (\divisor|s_divCounter[9]~45\ $ (GND))) # (!\divisor|s_divCounter\(10) & (!\divisor|s_divCounter[9]~45\ & VCC))
-- \divisor|s_divCounter[10]~47\ = CARRY((\divisor|s_divCounter\(10) & !\divisor|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(10),
	datad => VCC,
	cin => \divisor|s_divCounter[9]~45\,
	combout => \divisor|s_divCounter[10]~46_combout\,
	cout => \divisor|s_divCounter[10]~47\);

-- Location: FF_X73_Y14_N27
\divisor|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[10]~46_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(10));

-- Location: LCCOMB_X73_Y14_N28
\divisor|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[11]~48_combout\ = (\divisor|s_divCounter\(11) & (!\divisor|s_divCounter[10]~47\)) # (!\divisor|s_divCounter\(11) & ((\divisor|s_divCounter[10]~47\) # (GND)))
-- \divisor|s_divCounter[11]~49\ = CARRY((!\divisor|s_divCounter[10]~47\) # (!\divisor|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(11),
	datad => VCC,
	cin => \divisor|s_divCounter[10]~47\,
	combout => \divisor|s_divCounter[11]~48_combout\,
	cout => \divisor|s_divCounter[11]~49\);

-- Location: FF_X74_Y13_N25
\divisor|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \divisor|s_divCounter[11]~48_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(11));

-- Location: LCCOMB_X73_Y14_N30
\divisor|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[12]~50_combout\ = (\divisor|s_divCounter\(12) & (\divisor|s_divCounter[11]~49\ $ (GND))) # (!\divisor|s_divCounter\(12) & (!\divisor|s_divCounter[11]~49\ & VCC))
-- \divisor|s_divCounter[12]~51\ = CARRY((\divisor|s_divCounter\(12) & !\divisor|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(12),
	datad => VCC,
	cin => \divisor|s_divCounter[11]~49\,
	combout => \divisor|s_divCounter[12]~50_combout\,
	cout => \divisor|s_divCounter[12]~51\);

-- Location: FF_X74_Y13_N15
\divisor|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \divisor|s_divCounter[12]~50_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(12));

-- Location: LCCOMB_X73_Y13_N0
\divisor|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[13]~52_combout\ = (\divisor|s_divCounter\(13) & (!\divisor|s_divCounter[12]~51\)) # (!\divisor|s_divCounter\(13) & ((\divisor|s_divCounter[12]~51\) # (GND)))
-- \divisor|s_divCounter[13]~53\ = CARRY((!\divisor|s_divCounter[12]~51\) # (!\divisor|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(13),
	datad => VCC,
	cin => \divisor|s_divCounter[12]~51\,
	combout => \divisor|s_divCounter[13]~52_combout\,
	cout => \divisor|s_divCounter[13]~53\);

-- Location: FF_X73_Y13_N1
\divisor|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[13]~52_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(13));

-- Location: LCCOMB_X73_Y13_N2
\divisor|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[14]~54_combout\ = (\divisor|s_divCounter\(14) & (\divisor|s_divCounter[13]~53\ $ (GND))) # (!\divisor|s_divCounter\(14) & (!\divisor|s_divCounter[13]~53\ & VCC))
-- \divisor|s_divCounter[14]~55\ = CARRY((\divisor|s_divCounter\(14) & !\divisor|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(14),
	datad => VCC,
	cin => \divisor|s_divCounter[13]~53\,
	combout => \divisor|s_divCounter[14]~54_combout\,
	cout => \divisor|s_divCounter[14]~55\);

-- Location: FF_X73_Y13_N3
\divisor|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[14]~54_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(14));

-- Location: LCCOMB_X73_Y13_N4
\divisor|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[15]~56_combout\ = (\divisor|s_divCounter\(15) & (!\divisor|s_divCounter[14]~55\)) # (!\divisor|s_divCounter\(15) & ((\divisor|s_divCounter[14]~55\) # (GND)))
-- \divisor|s_divCounter[15]~57\ = CARRY((!\divisor|s_divCounter[14]~55\) # (!\divisor|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(15),
	datad => VCC,
	cin => \divisor|s_divCounter[14]~55\,
	combout => \divisor|s_divCounter[15]~56_combout\,
	cout => \divisor|s_divCounter[15]~57\);

-- Location: FF_X73_Y13_N5
\divisor|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[15]~56_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(15));

-- Location: LCCOMB_X73_Y13_N6
\divisor|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[16]~58_combout\ = (\divisor|s_divCounter\(16) & (\divisor|s_divCounter[15]~57\ $ (GND))) # (!\divisor|s_divCounter\(16) & (!\divisor|s_divCounter[15]~57\ & VCC))
-- \divisor|s_divCounter[16]~59\ = CARRY((\divisor|s_divCounter\(16) & !\divisor|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(16),
	datad => VCC,
	cin => \divisor|s_divCounter[15]~57\,
	combout => \divisor|s_divCounter[16]~58_combout\,
	cout => \divisor|s_divCounter[16]~59\);

-- Location: FF_X73_Y13_N7
\divisor|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[16]~58_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(16));

-- Location: LCCOMB_X73_Y13_N8
\divisor|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[17]~60_combout\ = (\divisor|s_divCounter\(17) & (!\divisor|s_divCounter[16]~59\)) # (!\divisor|s_divCounter\(17) & ((\divisor|s_divCounter[16]~59\) # (GND)))
-- \divisor|s_divCounter[17]~61\ = CARRY((!\divisor|s_divCounter[16]~59\) # (!\divisor|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(17),
	datad => VCC,
	cin => \divisor|s_divCounter[16]~59\,
	combout => \divisor|s_divCounter[17]~60_combout\,
	cout => \divisor|s_divCounter[17]~61\);

-- Location: FF_X73_Y13_N9
\divisor|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[17]~60_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(17));

-- Location: LCCOMB_X73_Y13_N10
\divisor|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[18]~62_combout\ = (\divisor|s_divCounter\(18) & (\divisor|s_divCounter[17]~61\ $ (GND))) # (!\divisor|s_divCounter\(18) & (!\divisor|s_divCounter[17]~61\ & VCC))
-- \divisor|s_divCounter[18]~63\ = CARRY((\divisor|s_divCounter\(18) & !\divisor|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(18),
	datad => VCC,
	cin => \divisor|s_divCounter[17]~61\,
	combout => \divisor|s_divCounter[18]~62_combout\,
	cout => \divisor|s_divCounter[18]~63\);

-- Location: FF_X73_Y13_N11
\divisor|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[18]~62_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(18));

-- Location: LCCOMB_X73_Y13_N12
\divisor|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[19]~64_combout\ = (\divisor|s_divCounter\(19) & (!\divisor|s_divCounter[18]~63\)) # (!\divisor|s_divCounter\(19) & ((\divisor|s_divCounter[18]~63\) # (GND)))
-- \divisor|s_divCounter[19]~65\ = CARRY((!\divisor|s_divCounter[18]~63\) # (!\divisor|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datad => VCC,
	cin => \divisor|s_divCounter[18]~63\,
	combout => \divisor|s_divCounter[19]~64_combout\,
	cout => \divisor|s_divCounter[19]~65\);

-- Location: FF_X73_Y13_N13
\divisor|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[19]~64_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(19));

-- Location: LCCOMB_X73_Y13_N14
\divisor|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[20]~66_combout\ = (\divisor|s_divCounter\(20) & (\divisor|s_divCounter[19]~65\ $ (GND))) # (!\divisor|s_divCounter\(20) & (!\divisor|s_divCounter[19]~65\ & VCC))
-- \divisor|s_divCounter[20]~67\ = CARRY((\divisor|s_divCounter\(20) & !\divisor|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(20),
	datad => VCC,
	cin => \divisor|s_divCounter[19]~65\,
	combout => \divisor|s_divCounter[20]~66_combout\,
	cout => \divisor|s_divCounter[20]~67\);

-- Location: FF_X73_Y13_N15
\divisor|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[20]~66_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(20));

-- Location: LCCOMB_X73_Y13_N16
\divisor|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[21]~68_combout\ = (\divisor|s_divCounter\(21) & (!\divisor|s_divCounter[20]~67\)) # (!\divisor|s_divCounter\(21) & ((\divisor|s_divCounter[20]~67\) # (GND)))
-- \divisor|s_divCounter[21]~69\ = CARRY((!\divisor|s_divCounter[20]~67\) # (!\divisor|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(21),
	datad => VCC,
	cin => \divisor|s_divCounter[20]~67\,
	combout => \divisor|s_divCounter[21]~68_combout\,
	cout => \divisor|s_divCounter[21]~69\);

-- Location: FF_X73_Y13_N17
\divisor|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[21]~68_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(21));

-- Location: LCCOMB_X73_Y13_N18
\divisor|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[22]~70_combout\ = (\divisor|s_divCounter\(22) & (\divisor|s_divCounter[21]~69\ $ (GND))) # (!\divisor|s_divCounter\(22) & (!\divisor|s_divCounter[21]~69\ & VCC))
-- \divisor|s_divCounter[22]~71\ = CARRY((\divisor|s_divCounter\(22) & !\divisor|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(22),
	datad => VCC,
	cin => \divisor|s_divCounter[21]~69\,
	combout => \divisor|s_divCounter[22]~70_combout\,
	cout => \divisor|s_divCounter[22]~71\);

-- Location: FF_X73_Y13_N19
\divisor|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[22]~70_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(22));

-- Location: LCCOMB_X73_Y13_N20
\divisor|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[23]~72_combout\ = (\divisor|s_divCounter\(23) & (!\divisor|s_divCounter[22]~71\)) # (!\divisor|s_divCounter\(23) & ((\divisor|s_divCounter[22]~71\) # (GND)))
-- \divisor|s_divCounter[23]~73\ = CARRY((!\divisor|s_divCounter[22]~71\) # (!\divisor|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(23),
	datad => VCC,
	cin => \divisor|s_divCounter[22]~71\,
	combout => \divisor|s_divCounter[23]~72_combout\,
	cout => \divisor|s_divCounter[23]~73\);

-- Location: FF_X73_Y13_N21
\divisor|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[23]~72_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(23));

-- Location: LCCOMB_X73_Y13_N22
\divisor|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[24]~74_combout\ = (\divisor|s_divCounter\(24) & (\divisor|s_divCounter[23]~73\ $ (GND))) # (!\divisor|s_divCounter\(24) & (!\divisor|s_divCounter[23]~73\ & VCC))
-- \divisor|s_divCounter[24]~75\ = CARRY((\divisor|s_divCounter\(24) & !\divisor|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(24),
	datad => VCC,
	cin => \divisor|s_divCounter[23]~73\,
	combout => \divisor|s_divCounter[24]~74_combout\,
	cout => \divisor|s_divCounter[24]~75\);

-- Location: FF_X73_Y13_N23
\divisor|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[24]~74_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(24));

-- Location: LCCOMB_X73_Y13_N24
\divisor|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[25]~76_combout\ = \divisor|s_divCounter[24]~75\ $ (\divisor|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor|s_divCounter\(25),
	cin => \divisor|s_divCounter[24]~75\,
	combout => \divisor|s_divCounter[25]~76_combout\);

-- Location: FF_X73_Y13_N25
\divisor|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[25]~76_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(25));

-- Location: LCCOMB_X73_Y13_N26
\divisor|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~3_combout\ = (\divisor|s_divCounter\(19) & (\divisor|s_divCounter\(22) & (\divisor|s_divCounter\(20) & \divisor|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datab => \divisor|s_divCounter\(22),
	datac => \divisor|s_divCounter\(20),
	datad => \divisor|s_divCounter\(21),
	combout => \divisor|clkOut~3_combout\);

-- Location: LCCOMB_X73_Y13_N28
\divisor|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~4_combout\ = ((!\divisor|s_divCounter\(17) & !\divisor|s_divCounter\(18))) # (!\divisor|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(23),
	datac => \divisor|s_divCounter\(17),
	datad => \divisor|s_divCounter\(18),
	combout => \divisor|LessThan0~4_combout\);

-- Location: LCCOMB_X74_Y13_N26
\divisor|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~5_combout\ = ((!\divisor|s_divCounter\(24) & ((\divisor|LessThan0~4_combout\) # (!\divisor|clkOut~3_combout\)))) # (!\divisor|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(25),
	datab => \divisor|s_divCounter\(24),
	datac => \divisor|clkOut~3_combout\,
	datad => \divisor|LessThan0~4_combout\,
	combout => \divisor|LessThan0~5_combout\);

-- Location: LCCOMB_X74_Y13_N30
\divisor|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~4_combout\ = (\divisor|s_divCounter\(13) & (\divisor|s_divCounter\(12) & (!\divisor|s_divCounter\(6) & \divisor|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(13),
	datab => \divisor|s_divCounter\(12),
	datac => \divisor|s_divCounter\(6),
	datad => \divisor|s_divCounter\(14),
	combout => \divisor|clkOut~4_combout\);

-- Location: LCCOMB_X74_Y13_N8
\divisor|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~5_combout\ = (!\divisor|s_divCounter\(17) & (\divisor|s_divCounter\(16) & (!\divisor|s_divCounter\(15) & \divisor|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(17),
	datab => \divisor|s_divCounter\(16),
	datac => \divisor|s_divCounter\(15),
	datad => \divisor|s_divCounter\(11),
	combout => \divisor|clkOut~5_combout\);

-- Location: LCCOMB_X74_Y13_N20
\divisor|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~6_combout\ = (!\divisor|s_divCounter\(23) & (\divisor|s_divCounter\(24) & (\divisor|clkOut~5_combout\ & !\divisor|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(23),
	datab => \divisor|s_divCounter\(24),
	datac => \divisor|clkOut~5_combout\,
	datad => \divisor|s_divCounter\(25),
	combout => \divisor|clkOut~6_combout\);

-- Location: LCCOMB_X74_Y13_N28
\divisor|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~7_combout\ = (\divisor|clkOut~3_combout\ & (\divisor|s_divCounter\(18) & (\divisor|clkOut~4_combout\ & \divisor|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|clkOut~3_combout\,
	datab => \divisor|s_divCounter\(18),
	datac => \divisor|clkOut~4_combout\,
	datad => \divisor|clkOut~6_combout\,
	combout => \divisor|clkOut~7_combout\);

-- Location: LCCOMB_X74_Y13_N10
\divisor|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~8_combout\ = (\divisor|clkOut~q\) # ((\divisor|clkOut~2_combout\ & (\divisor|clkOut~1_combout\ & \divisor|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|clkOut~2_combout\,
	datab => \divisor|clkOut~1_combout\,
	datac => \divisor|clkOut~q\,
	datad => \divisor|clkOut~7_combout\,
	combout => \divisor|clkOut~8_combout\);

-- Location: LCCOMB_X74_Y13_N4
\divisor|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~9_combout\ = (\divisor|clkOut~8_combout\ & ((\divisor|LessThan0~5_combout\) # ((\divisor|LessThan0~3_combout\) # (\divisor|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~5_combout\,
	datab => \divisor|LessThan0~3_combout\,
	datac => \divisor|clkOut~8_combout\,
	datad => \divisor|LessThan0~1_combout\,
	combout => \divisor|clkOut~9_combout\);

-- Location: FF_X74_Y13_N5
\divisor|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clkOut~q\);

-- Location: LCCOMB_X97_Y40_N14
\top_level|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~14_combout\ = (!\SW[3]~input_o\ & \top_level|s_nextState.Tsoak_515~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \top_level|s_nextState.Tsoak_515~combout\,
	combout => \top_level|s_currentState~14_combout\);

-- Location: FF_X97_Y40_N15
\top_level|s_currentState.Tsoak\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tsoak~q\);

-- Location: LCCOMB_X100_Y40_N22
\top_level|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector22~0_combout\ = (!\top_level|s_mode\(0) & (!\top_level|s_currentState.Tidle~q\ & \top_level|s_mode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_mode\(0),
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|s_mode\(1),
	combout => \top_level|Selector22~0_combout\);

-- Location: LCCOMB_X99_Y40_N24
\top_level|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector12~1_combout\ = (\top_level|s_currentState.Tidle~q\) # ((!\top_level|s_mode\(0)) # (!\top_level|s_mode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tidle~q\,
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_mode\(0),
	combout => \top_level|Selector12~1_combout\);

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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X97_Y40_N6
\top_level|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector12~0_combout\ = (\SW[2]~input_o\ & (!\top_level|s_currentState.Tp2~q\ & ((!\top_level|s_currentState.Tp1~q\)))) # (!\SW[2]~input_o\ & ((\KEY[0]~input_o\) # ((!\top_level|s_currentState.Tp2~q\ & !\top_level|s_currentState.Tp1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \top_level|s_currentState.Tp2~q\,
	datac => \KEY[0]~input_o\,
	datad => \top_level|s_currentState.Tp1~q\,
	combout => \top_level|Selector12~0_combout\);

-- Location: LCCOMB_X98_Y40_N12
\top_level|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector12~2_combout\ = (\top_level|Selector12~1_combout\ & (\top_level|Selector12~0_combout\ & ((\timer_aux|s_cntZero~q\) # (!\top_level|s_currentState.Trm_water~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|Selector12~1_combout\,
	datac => \top_level|Selector12~0_combout\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector12~2_combout\);

-- Location: CLKCTRL_G8
\top_level|Selector12~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \top_level|Selector12~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \top_level|Selector12~2clkctrl_outclk\);

-- Location: LCCOMB_X97_Y40_N26
\top_level|s_nextState.Tp2_551\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tp2_551~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector22~0_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Tp2_551~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tp2_551~combout\,
	datac => \top_level|Selector22~0_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Tp2_551~combout\);

-- Location: LCCOMB_X97_Y40_N8
\top_level|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~12_combout\ = (!\SW[3]~input_o\ & \top_level|s_nextState.Tp2_551~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \top_level|s_nextState.Tp2_551~combout\,
	combout => \top_level|s_currentState~12_combout\);

-- Location: FF_X97_Y40_N9
\top_level|s_currentState.Tp2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tp2~q\);

-- Location: LCCOMB_X97_Y40_N28
\top_level|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector19~0_combout\ = (\top_level|s_currentState.Tp2~q\) # ((\top_level|s_currentState.Tp1~q\) # ((\top_level|s_currentState.Tsoak~q\ & !\timer_aux|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tsoak~q\,
	datab => \timer_aux|s_cntZero~q\,
	datac => \top_level|s_currentState.Tp2~q\,
	datad => \top_level|s_currentState.Tp1~q\,
	combout => \top_level|Selector19~0_combout\);

-- Location: LCCOMB_X99_Y40_N18
\top_level|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector2~0_combout\ = (\top_level|s_currentState.Trm_water~q\ & (\top_level|s_nextStateAUX\(1) $ (\top_level|s_nextStateAUX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_nextStateAUX\(1),
	datac => \top_level|s_currentState.Trm_water~q\,
	datad => \top_level|s_nextStateAUX\(0),
	combout => \top_level|Selector2~0_combout\);

-- Location: LCCOMB_X99_Y40_N20
\top_level|s_nextStateAUX[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextStateAUX\(1) = (GLOBAL(\top_level|Selector26~1clkctrl_outclk\) & (\top_level|Selector2~0_combout\)) # (!GLOBAL(\top_level|Selector26~1clkctrl_outclk\) & ((\top_level|s_nextStateAUX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|Selector2~0_combout\,
	datac => \top_level|Selector26~1clkctrl_outclk\,
	datad => \top_level|s_nextStateAUX\(1),
	combout => \top_level|s_nextStateAUX\(1));

-- Location: LCCOMB_X99_Y40_N0
\top_level|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector19~1_combout\ = (!\top_level|s_mode\(1) & (\top_level|s_mode\(0) & (\top_level|s_nextStateAUX\(0) $ (!\top_level|s_nextStateAUX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datab => \top_level|s_mode\(0),
	datac => \top_level|s_nextStateAUX\(0),
	datad => \top_level|s_nextStateAUX\(1),
	combout => \top_level|Selector19~1_combout\);

-- Location: LCCOMB_X97_Y40_N4
\top_level|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector19~2_combout\ = (\top_level|Selector19~0_combout\) # ((\top_level|s_currentState.Trm_water~q\ & \top_level|Selector19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datac => \top_level|Selector19~0_combout\,
	datad => \top_level|Selector19~1_combout\,
	combout => \top_level|Selector19~2_combout\);

-- Location: LCCOMB_X97_Y40_N10
\top_level|s_nextState.Tsoak_515\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tsoak_515~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector19~2_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Tsoak_515~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tsoak_515~combout\,
	datac => \top_level|Selector19~2_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Tsoak_515~combout\);

-- Location: LCCOMB_X97_Y40_N20
\top_level|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~2_combout\ = (\top_level|s_nextState.Tsoak_515~combout\ & ((\top_level|s_currentState.Tp2~q\ $ (\top_level|s_nextState.Tp2_551~combout\)) # (!\top_level|s_currentState.Tsoak~q\))) # (!\top_level|s_nextState.Tsoak_515~combout\ & 
-- ((\top_level|s_currentState.Tsoak~q\) # (\top_level|s_currentState.Tp2~q\ $ (\top_level|s_nextState.Tp2_551~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tsoak_515~combout\,
	datab => \top_level|s_currentState.Tp2~q\,
	datac => \top_level|s_nextState.Tp2_551~combout\,
	datad => \top_level|s_currentState.Tsoak~q\,
	combout => \top_level|s_stateChanged~2_combout\);

-- Location: LCCOMB_X100_Y40_N8
\top_level|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~3_combout\ = (\top_level|s_nextState.Tidle_587~combout\ & ((\top_level|s_currentState.Tidle~q\) # (\top_level|s_currentState.Tp1~q\ $ (\top_level|s_nextState.Tp1_569~combout\)))) # (!\top_level|s_nextState.Tidle_587~combout\ & 
-- ((\top_level|s_currentState.Tp1~q\ $ (\top_level|s_nextState.Tp1_569~combout\)) # (!\top_level|s_currentState.Tidle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tidle_587~combout\,
	datab => \top_level|s_currentState.Tp1~q\,
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|s_nextState.Tp1_569~combout\,
	combout => \top_level|s_stateChanged~3_combout\);

-- Location: LCCOMB_X98_Y40_N28
\top_level|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector17~0_combout\ = (\timer_aux|s_cntZero~q\ & (\top_level|s_currentState.Tsoak~q\)) # (!\timer_aux|s_cntZero~q\ & ((\top_level|s_currentState.Trinse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_currentState.Tsoak~q\,
	datac => \top_level|s_currentState.Trinse~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector17~0_combout\);

-- Location: LCCOMB_X98_Y40_N16
\top_level|s_nextState.Trinse_497\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Trinse_497~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector17~0_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Trinse_497~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Trinse_497~combout\,
	datac => \top_level|Selector17~0_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Trinse_497~combout\);

-- Location: LCCOMB_X98_Y40_N20
\top_level|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~15_combout\ = (\top_level|s_nextState.Trinse_497~combout\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Trinse_497~combout\,
	datac => \SW[3]~input_o\,
	combout => \top_level|s_currentState~15_combout\);

-- Location: FF_X98_Y40_N21
\top_level|s_currentState.Trinse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Trinse~q\);

-- Location: LCCOMB_X98_Y40_N22
\top_level|sync_proc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|sync_proc~8_combout\ = \top_level|s_currentState.Trinse~q\ $ (\top_level|s_nextState.Trinse_497~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_currentState.Trinse~q\,
	datac => \top_level|s_nextState.Trinse_497~combout\,
	combout => \top_level|sync_proc~8_combout\);

-- Location: LCCOMB_X98_Y40_N6
\top_level|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~0_combout\ = (\top_level|s_nextState.Tfinished_443~combout\ & ((\top_level|s_currentState.Tspin~q\ $ (\top_level|s_nextState.Tspin_461~combout\)) # (!\top_level|s_currentState.Tfinished~q\))) # 
-- (!\top_level|s_nextState.Tfinished_443~combout\ & ((\top_level|s_currentState.Tfinished~q\) # (\top_level|s_currentState.Tspin~q\ $ (\top_level|s_nextState.Tspin_461~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tfinished_443~combout\,
	datab => \top_level|s_currentState.Tfinished~q\,
	datac => \top_level|s_currentState.Tspin~q\,
	datad => \top_level|s_nextState.Tspin_461~combout\,
	combout => \top_level|s_stateChanged~0_combout\);

-- Location: LCCOMB_X98_Y40_N26
\top_level|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~1_combout\ = (\top_level|sync_proc~8_combout\) # ((\top_level|s_stateChanged~0_combout\) # (\top_level|s_nextState.Trm_water_479~combout\ $ (\top_level|s_currentState.Trm_water~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Trm_water_479~combout\,
	datab => \top_level|s_currentState.Trm_water~q\,
	datac => \top_level|sync_proc~8_combout\,
	datad => \top_level|s_stateChanged~0_combout\,
	combout => \top_level|s_stateChanged~1_combout\);

-- Location: LCCOMB_X97_Y40_N30
\top_level|s_stateChanged~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~4_combout\ = (!\SW[3]~input_o\ & (!\top_level|s_stateChanged~2_combout\ & (!\top_level|s_stateChanged~3_combout\ & !\top_level|s_stateChanged~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \top_level|s_stateChanged~2_combout\,
	datac => \top_level|s_stateChanged~3_combout\,
	datad => \top_level|s_stateChanged~1_combout\,
	combout => \top_level|s_stateChanged~4_combout\);

-- Location: FF_X97_Y40_N31
\top_level|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top_level|s_stateChanged~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_stateChanged~q\);

-- Location: CLKCTRL_G17
\divisor|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X98_Y40_N14
\top_level|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector6~0_combout\ = (!\top_level|s_currentState.Trm_water~q\ & (!\top_level|s_currentState.Trinse~q\ & (!\top_level|s_currentState.Tfinished~q\ & !\top_level|s_currentState.Tsoak~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|s_currentState.Trinse~q\,
	datac => \top_level|s_currentState.Tfinished~q\,
	datad => \top_level|s_currentState.Tsoak~q\,
	combout => \top_level|Selector6~0_combout\);

-- Location: LCCOMB_X98_Y40_N18
\top_level|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector6~1_combout\ = (\top_level|s_currentState.Tidle~q\ & (((!\top_level|s_currentState.Tspin~q\ & \top_level|Selector6~0_combout\)) # (!\top_level|s_timeEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tspin~q\,
	datab => \top_level|s_currentState.Tidle~q\,
	datac => \top_level|Selector6~0_combout\,
	datad => \top_level|s_timeEnable~combout\,
	combout => \top_level|Selector6~1_combout\);

-- Location: LCCOMB_X97_Y40_N12
\top_level|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector5~0_combout\ = (!\SW[2]~input_o\ & ((\top_level|s_currentState.Tp2~q\) # (\top_level|s_currentState.Tp1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \top_level|s_currentState.Tp2~q\,
	datad => \top_level|s_currentState.Tp1~q\,
	combout => \top_level|Selector5~0_combout\);

-- Location: LCCOMB_X98_Y40_N10
\top_level|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector5~1_combout\ = (\KEY[0]~input_o\ & ((\top_level|s_currentState.Tspin~q\) # ((\top_level|Selector5~0_combout\) # (!\top_level|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tspin~q\,
	datab => \top_level|Selector6~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \top_level|Selector5~0_combout\,
	combout => \top_level|Selector5~1_combout\);

-- Location: LCCOMB_X98_Y40_N2
\top_level|s_timeEnable\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_timeEnable~combout\ = (\top_level|Selector5~1_combout\ & ((\top_level|Selector6~1_combout\))) # (!\top_level|Selector5~1_combout\ & (\top_level|s_timeEnable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_timeEnable~combout\,
	datac => \top_level|Selector6~1_combout\,
	datad => \top_level|Selector5~1_combout\,
	combout => \top_level|s_timeEnable~combout\);

-- Location: LCCOMB_X96_Y40_N26
\timer_aux|s_counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[1]~1_combout\ = (!\SW[3]~input_o\ & (\top_level|s_stateChanged~q\ & ((\timer_aux|Equal0~3_combout\) # (!\top_level|s_timeEnable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \timer_aux|Equal0~3_combout\,
	datac => \top_level|s_timeEnable~combout\,
	datad => \top_level|s_stateChanged~q\,
	combout => \timer_aux|s_counter[1]~1_combout\);

-- Location: LCCOMB_X98_Y40_N30
\top_level|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|WideOr9~0_combout\ = ((\top_level|s_currentState.Trinse~q\) # ((\top_level|s_currentState.Tfinished~q\) # (\top_level|s_currentState.Trm_water~q\))) # (!\top_level|s_currentState.Tidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tidle~q\,
	datab => \top_level|s_currentState.Trinse~q\,
	datac => \top_level|s_currentState.Tfinished~q\,
	datad => \top_level|s_currentState.Trm_water~q\,
	combout => \top_level|WideOr9~0_combout\);

-- Location: LCCOMB_X100_Y40_N16
\top_level|display_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|display_out[1]~1_combout\ = (\top_level|s_currentState.Tidle~q\) # ((!\top_level|s_mode\(1) & !\top_level|s_mode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|s_mode\(0),
	combout => \top_level|display_out[1]~1_combout\);

-- Location: CLKCTRL_G6
\top_level|display_out[1]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \top_level|display_out[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \top_level|display_out[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X97_Y40_N24
\top_level|time_value[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|time_value\(2) = (GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & (!\top_level|WideOr9~0_combout\)) # (!GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & ((\top_level|time_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|WideOr9~0_combout\,
	datac => \top_level|display_out[1]~1clkctrl_outclk\,
	datad => \top_level|time_value\(2),
	combout => \top_level|time_value\(2));

-- Location: LCCOMB_X97_Y40_N18
\timer_aux|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~2_combout\ = (\top_level|s_stateChanged~q\ & (!\timer_aux|s_counter\(2))) # (!\top_level|s_stateChanged~q\ & ((\top_level|time_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_stateChanged~q\,
	datac => \timer_aux|s_counter\(2),
	datad => \top_level|time_value\(2),
	combout => \timer_aux|Add0~2_combout\);

-- Location: LCCOMB_X97_Y40_N0
\top_level|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|WideOr13~0_combout\ = (\top_level|s_currentState.Tsoak~q\) # ((\top_level|s_currentState.Trinse~q\) # (\top_level|s_currentState.Tp1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_currentState.Tsoak~q\,
	datac => \top_level|s_currentState.Trinse~q\,
	datad => \top_level|s_currentState.Tp1~q\,
	combout => \top_level|WideOr13~0_combout\);

-- Location: LCCOMB_X97_Y40_N2
\top_level|time_value[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|time_value\(0) = (GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & ((\top_level|WideOr13~0_combout\))) # (!GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & (\top_level|time_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|time_value\(0),
	datac => \top_level|display_out[1]~1clkctrl_outclk\,
	datad => \top_level|WideOr13~0_combout\,
	combout => \top_level|time_value\(0));

-- Location: LCCOMB_X96_Y40_N22
\timer_aux|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter~4_combout\ = (\top_level|s_stateChanged~q\ & (\timer_aux|s_counter\(0) $ (((\timer_aux|Equal0~3_combout\) # (!\top_level|s_timeEnable~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(0),
	datab => \timer_aux|Equal0~3_combout\,
	datac => \top_level|s_timeEnable~combout\,
	datad => \top_level|s_stateChanged~q\,
	combout => \timer_aux|s_counter~4_combout\);

-- Location: LCCOMB_X96_Y40_N10
\timer_aux|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter~5_combout\ = (!\SW[3]~input_o\ & (!\timer_aux|s_counter~4_combout\ & ((\top_level|time_value\(0)) # (\top_level|s_stateChanged~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|time_value\(0),
	datab => \SW[3]~input_o\,
	datac => \timer_aux|s_counter~4_combout\,
	datad => \top_level|s_stateChanged~q\,
	combout => \timer_aux|s_counter~5_combout\);

-- Location: FF_X96_Y40_N11
\timer_aux|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_aux|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(0));

-- Location: LCCOMB_X96_Y40_N2
\timer_aux|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~0_combout\ = (\top_level|s_stateChanged~q\ & (!\timer_aux|s_counter\(0))) # (!\top_level|s_stateChanged~q\ & ((\top_level|time_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(0),
	datac => \top_level|s_stateChanged~q\,
	datad => \top_level|time_value\(0),
	combout => \timer_aux|Add0~0_combout\);

-- Location: LCCOMB_X96_Y40_N16
\timer_aux|s_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[1]~0_combout\ = (\SW[3]~input_o\) # (\timer_aux|Add0~1_combout\ $ (!\timer_aux|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \timer_aux|Add0~1_combout\,
	datad => \timer_aux|Add0~0_combout\,
	combout => \timer_aux|s_counter[1]~0_combout\);

-- Location: LCCOMB_X96_Y40_N8
\timer_aux|s_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[1]~2_combout\ = (\timer_aux|s_counter[1]~1_combout\ & (\timer_aux|s_counter\(1))) # (!\timer_aux|s_counter[1]~1_combout\ & ((!\timer_aux|s_counter[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_aux|s_counter[1]~1_combout\,
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter[1]~0_combout\,
	combout => \timer_aux|s_counter[1]~2_combout\);

-- Location: FF_X96_Y40_N9
\timer_aux|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_aux|s_counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(1));

-- Location: LCCOMB_X96_Y40_N20
\top_level|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|WideOr12~combout\ = (\top_level|s_currentState.Tp2~q\) # ((\top_level|s_currentState.Trm_water~q\) # (\top_level|s_currentState.Tfinished~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_currentState.Tp2~q\,
	datac => \top_level|s_currentState.Trm_water~q\,
	datad => \top_level|s_currentState.Tfinished~q\,
	combout => \top_level|WideOr12~combout\);

-- Location: LCCOMB_X96_Y40_N28
\top_level|time_value[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|time_value\(1) = (GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & ((\top_level|WideOr12~combout\))) # (!GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & (\top_level|time_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|time_value\(1),
	datac => \top_level|display_out[1]~1clkctrl_outclk\,
	datad => \top_level|WideOr12~combout\,
	combout => \top_level|time_value\(1));

-- Location: LCCOMB_X96_Y40_N14
\timer_aux|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~1_combout\ = (\top_level|s_stateChanged~q\ & (!\timer_aux|s_counter\(1))) # (!\top_level|s_stateChanged~q\ & ((\top_level|time_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_aux|s_counter\(1),
	datac => \top_level|s_stateChanged~q\,
	datad => \top_level|time_value\(1),
	combout => \timer_aux|Add0~1_combout\);

-- Location: LCCOMB_X96_Y40_N0
\timer_aux|s_counter[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[2]~6_combout\ = (\SW[3]~input_o\) # (\timer_aux|Add0~2_combout\ $ (((!\timer_aux|Add0~1_combout\ & !\timer_aux|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \timer_aux|Add0~2_combout\,
	datac => \timer_aux|Add0~1_combout\,
	datad => \timer_aux|Add0~0_combout\,
	combout => \timer_aux|s_counter[2]~6_combout\);

-- Location: LCCOMB_X96_Y40_N6
\timer_aux|s_counter[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[2]~7_combout\ = (\timer_aux|s_counter[1]~1_combout\ & (\timer_aux|s_counter\(2))) # (!\timer_aux|s_counter[1]~1_combout\ & ((!\timer_aux|s_counter[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_aux|s_counter[1]~1_combout\,
	datac => \timer_aux|s_counter\(2),
	datad => \timer_aux|s_counter[2]~6_combout\,
	combout => \timer_aux|s_counter[2]~7_combout\);

-- Location: FF_X96_Y40_N7
\timer_aux|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_aux|s_counter[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(2));

-- Location: LCCOMB_X97_Y40_N16
\top_level|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|WideOr7~combout\ = (\top_level|s_currentState.Tp2~q\) # ((\top_level|s_currentState.Trinse~q\) # (\top_level|s_currentState.Tp1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_currentState.Tp2~q\,
	datac => \top_level|s_currentState.Trinse~q\,
	datad => \top_level|s_currentState.Tp1~q\,
	combout => \top_level|WideOr7~combout\);

-- Location: LCCOMB_X97_Y40_N22
\top_level|time_value[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|time_value\(3) = (GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & ((\top_level|WideOr7~combout\))) # (!GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & (\top_level|time_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|time_value\(3),
	datac => \top_level|display_out[1]~1clkctrl_outclk\,
	datad => \top_level|WideOr7~combout\,
	combout => \top_level|time_value\(3));

-- Location: LCCOMB_X96_Y40_N4
\timer_aux|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~3_combout\ = (\top_level|s_stateChanged~q\ & (!\timer_aux|s_counter\(3))) # (!\top_level|s_stateChanged~q\ & ((\top_level|time_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datac => \top_level|s_stateChanged~q\,
	datad => \top_level|time_value\(3),
	combout => \timer_aux|Add0~3_combout\);

-- Location: LCCOMB_X96_Y40_N24
\timer_aux|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~4_combout\ = \timer_aux|Add0~3_combout\ $ (((\timer_aux|Add0~1_combout\) # ((\timer_aux|Add0~0_combout\) # (\timer_aux|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Add0~1_combout\,
	datab => \timer_aux|Add0~0_combout\,
	datac => \timer_aux|Add0~3_combout\,
	datad => \timer_aux|Add0~2_combout\,
	combout => \timer_aux|Add0~4_combout\);

-- Location: LCCOMB_X96_Y40_N30
\timer_aux|s_counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[3]~3_combout\ = (!\SW[3]~input_o\ & ((\timer_aux|s_counter[1]~1_combout\ & (\timer_aux|s_counter\(3))) # (!\timer_aux|s_counter[1]~1_combout\ & ((\timer_aux|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \timer_aux|s_counter[1]~1_combout\,
	datac => \timer_aux|s_counter\(3),
	datad => \timer_aux|Add0~4_combout\,
	combout => \timer_aux|s_counter[3]~3_combout\);

-- Location: FF_X96_Y40_N31
\timer_aux|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|ALT_INV_clkOut~clkctrl_outclk\,
	d => \timer_aux|s_counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(3));

-- Location: LCCOMB_X96_Y40_N18
\timer_aux|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~3_combout\ = (\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(1) & (\timer_aux|s_counter\(3) & \timer_aux|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(2),
	datab => \timer_aux|s_counter\(1),
	datac => \timer_aux|s_counter\(3),
	datad => \timer_aux|s_counter\(0),
	combout => \timer_aux|Equal0~3_combout\);

-- Location: LCCOMB_X96_Y40_N12
\timer_aux|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_cntZero~0_combout\ = (!\SW[3]~input_o\ & (\top_level|s_stateChanged~q\ & \timer_aux|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \top_level|s_stateChanged~q\,
	datad => \timer_aux|Equal0~3_combout\,
	combout => \timer_aux|s_cntZero~0_combout\);

-- Location: FF_X96_Y40_N13
\timer_aux|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|ALT_INV_clkOut~q\,
	d => \timer_aux|s_cntZero~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_cntZero~q\);

-- Location: LCCOMB_X99_Y40_N8
\top_level|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector26~0_combout\ = (\top_level|s_mode\(1) & (!\top_level|s_mode\(0) & ((\top_level|s_nextStateAUX\(1)) # (!\top_level|s_nextStateAUX\(0))))) # (!\top_level|s_mode\(1) & (\top_level|s_mode\(0) & ((\top_level|s_nextStateAUX\(0)) # 
-- (!\top_level|s_nextStateAUX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextStateAUX\(0),
	datab => \top_level|s_nextStateAUX\(1),
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_mode\(0),
	combout => \top_level|Selector26~0_combout\);

-- Location: LCCOMB_X99_Y40_N26
\top_level|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector26~1_combout\ = ((\timer_aux|s_cntZero~q\ & (\top_level|Selector26~0_combout\ & \top_level|s_currentState.Trm_water~q\))) # (!\top_level|s_currentState.Tidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_cntZero~q\,
	datab => \top_level|Selector26~0_combout\,
	datac => \top_level|s_currentState.Trm_water~q\,
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|Selector26~1_combout\);

-- Location: CLKCTRL_G5
\top_level|Selector26~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \top_level|Selector26~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \top_level|Selector26~1clkctrl_outclk\);

-- Location: LCCOMB_X99_Y40_N4
\top_level|s_nextStateAUX[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextStateAUX\(0) = (GLOBAL(\top_level|Selector26~1clkctrl_outclk\) & (\top_level|Selector25~0_combout\)) # (!GLOBAL(\top_level|Selector26~1clkctrl_outclk\) & ((\top_level|s_nextStateAUX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|Selector25~0_combout\,
	datab => \top_level|s_nextStateAUX\(0),
	datac => \top_level|Selector26~1clkctrl_outclk\,
	combout => \top_level|s_nextStateAUX\(0));

-- Location: LCCOMB_X99_Y40_N10
\top_level|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector13~0_combout\ = (\top_level|s_mode\(0) & (!\top_level|s_mode\(1) & (\top_level|s_nextStateAUX\(0) & !\top_level|s_nextStateAUX\(1)))) # (!\top_level|s_mode\(0) & (\top_level|s_mode\(1) & ((\top_level|s_nextStateAUX\(1)) # 
-- (!\top_level|s_nextStateAUX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(0),
	datab => \top_level|s_mode\(1),
	datac => \top_level|s_nextStateAUX\(0),
	datad => \top_level|s_nextStateAUX\(1),
	combout => \top_level|Selector13~0_combout\);

-- Location: LCCOMB_X95_Y40_N4
\top_level|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector13~1_combout\ = (\top_level|s_currentState.Trm_water~q\ & ((\top_level|Selector13~0_combout\) # ((\top_level|s_currentState.Tspin~q\ & !\timer_aux|s_cntZero~q\)))) # (!\top_level|s_currentState.Trm_water~q\ & 
-- (\top_level|s_currentState.Tspin~q\ & ((!\timer_aux|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|s_currentState.Tspin~q\,
	datac => \top_level|Selector13~0_combout\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector13~1_combout\);

-- Location: LCCOMB_X95_Y40_N30
\top_level|s_nextState.Tspin_461\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tspin_461~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|Selector13~1_combout\)) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|s_nextState.Tspin_461~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector13~1_combout\,
	datac => \top_level|s_nextState.Tspin_461~combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Tspin_461~combout\);

-- Location: LCCOMB_X95_Y40_N28
\top_level|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~16_combout\ = (!\SW[3]~input_o\ & \top_level|s_nextState.Tspin_461~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \top_level|s_nextState.Tspin_461~combout\,
	combout => \top_level|s_currentState~16_combout\);

-- Location: FF_X95_Y40_N29
\top_level|s_currentState.Tspin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tspin~q\);

-- Location: LCCOMB_X98_Y40_N24
\top_level|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector15~0_combout\ = (\timer_aux|s_cntZero~q\ & ((\top_level|s_currentState.Tspin~q\) # (\top_level|s_currentState.Trinse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tspin~q\,
	datac => \top_level|s_currentState.Trinse~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector15~0_combout\);

-- Location: LCCOMB_X98_Y40_N8
\top_level|s_nextState.Trm_water_479\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Trm_water_479~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector15~0_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Trm_water_479~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Trm_water_479~combout\,
	datac => \top_level|Selector15~0_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Trm_water_479~combout\);

-- Location: LCCOMB_X98_Y40_N4
\top_level|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~17_combout\ = (!\SW[3]~input_o\ & \top_level|s_nextState.Trm_water_479~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \top_level|s_nextState.Trm_water_479~combout\,
	combout => \top_level|s_currentState~17_combout\);

-- Location: FF_X98_Y40_N5
\top_level|s_currentState.Trm_water\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Trm_water~q\);

-- Location: LCCOMB_X99_Y40_N6
\top_level|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector11~0_combout\ = (\top_level|s_mode\(1) & ((\top_level|s_mode\(0)) # ((\top_level|s_nextStateAUX\(0) & !\top_level|s_nextStateAUX\(1))))) # (!\top_level|s_mode\(1) & (((!\top_level|s_nextStateAUX\(0) & \top_level|s_nextStateAUX\(1))) # 
-- (!\top_level|s_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datab => \top_level|s_nextStateAUX\(0),
	datac => \top_level|s_mode\(0),
	datad => \top_level|s_nextStateAUX\(1),
	combout => \top_level|Selector11~0_combout\);

-- Location: LCCOMB_X99_Y40_N22
\top_level|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector11~1_combout\ = (\top_level|s_currentState.Trm_water~q\ & ((\top_level|Selector11~0_combout\) # ((\top_level|s_currentState.Tfinished~q\ & !\timer_aux|s_cntZero~q\)))) # (!\top_level|s_currentState.Trm_water~q\ & 
-- (((\top_level|s_currentState.Tfinished~q\ & !\timer_aux|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|Selector11~0_combout\,
	datac => \top_level|s_currentState.Tfinished~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector11~1_combout\);

-- Location: LCCOMB_X99_Y40_N30
\top_level|s_nextState.Tfinished_443\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tfinished_443~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector11~1_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Tfinished_443~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tfinished_443~combout\,
	datac => \top_level|Selector11~1_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Tfinished_443~combout\);

-- Location: LCCOMB_X98_Y40_N0
\top_level|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~18_combout\ = (!\SW[3]~input_o\ & \top_level|s_nextState.Tfinished_443~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \top_level|s_nextState.Tfinished_443~combout\,
	combout => \top_level|s_currentState~18_combout\);

-- Location: FF_X98_Y40_N1
\top_level|s_currentState.Tfinished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tfinished~q\);

-- Location: LCCOMB_X100_Y40_N26
\top_level|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector24~1_combout\ = (\top_level|Selector24~0_combout\ & (((\top_level|s_currentState.Tfinished~q\ & \timer_aux|s_cntZero~q\)) # (!\top_level|s_currentState.Tidle~q\))) # (!\top_level|Selector24~0_combout\ & 
-- (\top_level|s_currentState.Tfinished~q\ & ((\timer_aux|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|Selector24~0_combout\,
	datab => \top_level|s_currentState.Tfinished~q\,
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector24~1_combout\);

-- Location: LCCOMB_X100_Y40_N20
\top_level|s_nextState.Tidle_587\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tidle_587~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector24~1_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Tidle_587~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_nextState.Tidle_587~combout\,
	datac => \top_level|Selector24~1_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Tidle_587~combout\);

-- Location: LCCOMB_X100_Y40_N4
\top_level|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~13_combout\ = (!\SW[3]~input_o\ & !\top_level|s_nextState.Tidle_587~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \top_level|s_nextState.Tidle_587~combout\,
	combout => \top_level|s_currentState~13_combout\);

-- Location: FF_X100_Y40_N5
\top_level|s_currentState.Tidle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top_level|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tidle~q\);

-- Location: LCCOMB_X99_Y40_N28
\top_level|s_mode[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_mode\(0) = (\top_level|s_currentState.Tidle~q\ & (\top_level|s_mode\(0))) # (!\top_level|s_currentState.Tidle~q\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_mode\(0),
	datac => \SW[0]~input_o\,
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|s_mode\(0));

-- Location: LCCOMB_X100_Y40_N24
\top_level|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector23~0_combout\ = (\top_level|s_mode\(0) & (!\top_level|s_currentState.Tidle~q\ & !\top_level|s_mode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_mode\(0),
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|s_mode\(1),
	combout => \top_level|Selector23~0_combout\);

-- Location: LCCOMB_X100_Y40_N2
\top_level|s_nextState.Tp1_569\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tp1_569~combout\ = (GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & ((\top_level|Selector23~0_combout\))) # (!GLOBAL(\top_level|Selector12~2clkctrl_outclk\) & (\top_level|s_nextState.Tp1_569~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_nextState.Tp1_569~combout\,
	datac => \top_level|Selector23~0_combout\,
	datad => \top_level|Selector12~2clkctrl_outclk\,
	combout => \top_level|s_nextState.Tp1_569~combout\);

-- Location: LCCOMB_X100_Y40_N14
\top_level|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~11_combout\ = (!\SW[3]~input_o\ & \top_level|s_nextState.Tp1_569~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \top_level|s_nextState.Tp1_569~combout\,
	combout => \top_level|s_currentState~11_combout\);

-- Location: FF_X100_Y40_N15
\top_level|s_currentState.Tp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tp1~q\);

-- Location: LCCOMB_X99_Y40_N16
\top_level|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|WideOr2~combout\ = (\top_level|s_currentState.Tp1~q\) # ((\top_level|s_currentState.Tp2~q\) # (!\top_level|s_currentState.Tidle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tp1~q\,
	datac => \top_level|s_currentState.Tp2~q\,
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|WideOr2~combout\);

-- Location: LCCOMB_X100_Y40_N6
\top_level|display_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|display_out[1]~0_combout\ = (\top_level|s_mode\(1) & \top_level|s_currentState.Tidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|display_out[1]~0_combout\);

-- Location: LCCOMB_X100_Y40_N18
\top_level|display_out[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|display_out\(1) = (GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & ((\top_level|display_out[1]~0_combout\))) # (!GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & (\top_level|display_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|display_out\(1),
	datac => \top_level|display_out[1]~0_combout\,
	datad => \top_level|display_out[1]~1clkctrl_outclk\,
	combout => \top_level|display_out\(1));

-- Location: LCCOMB_X100_Y40_N28
\top_level|display_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|display_out[0]~2_combout\ = (\top_level|s_mode\(0) & \top_level|s_currentState.Tidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_level|s_mode\(0),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|display_out[0]~2_combout\);

-- Location: LCCOMB_X100_Y40_N12
\top_level|display_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|display_out\(0) = (GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & ((\top_level|display_out[0]~2_combout\))) # (!GLOBAL(\top_level|display_out[1]~1clkctrl_outclk\) & (\top_level|display_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|display_out\(0),
	datac => \top_level|display_out[0]~2_combout\,
	datad => \top_level|display_out[1]~1clkctrl_outclk\,
	combout => \top_level|display_out\(0));

-- Location: LCCOMB_X107_Y72_N0
\display_decoder|mode_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|mode_out[1]~0_combout\ = (\top_level|display_out\(0)) # (\top_level|display_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_level|display_out\(0),
	datad => \top_level|display_out\(1),
	combout => \display_decoder|mode_out[1]~0_combout\);

-- Location: LCCOMB_X100_Y40_N0
\display_decoder|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|Equal1~0_combout\ = (!\top_level|display_out\(1) & \top_level|display_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|display_out\(1),
	datad => \top_level|display_out\(0),
	combout => \display_decoder|Equal1~0_combout\);

-- Location: LCCOMB_X107_Y72_N6
\display_decoder|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|Equal1~1_combout\ = (!\top_level|display_out\(0) & \top_level|display_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_level|display_out\(0),
	datad => \top_level|display_out\(1),
	combout => \display_decoder|Equal1~1_combout\);

-- Location: LCCOMB_X95_Y40_N26
\display_decoder|time0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[0]~0_combout\ = (\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(1) & (\timer_aux|s_counter\(2) $ (\timer_aux|s_counter\(0))))) # (!\timer_aux|s_counter\(3) & (!\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(1) & 
-- \timer_aux|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[0]~0_combout\);

-- Location: LCCOMB_X95_Y40_N10
\display_decoder|time0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[1]~1_combout\ = (\timer_aux|s_counter\(3) & (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(1) $ (\timer_aux|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[1]~1_combout\);

-- Location: LCCOMB_X95_Y40_N24
\timer_aux|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~0_combout\ = (\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(1) & \timer_aux|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \timer_aux|Equal0~0_combout\);

-- Location: LCCOMB_X95_Y40_N22
\display_decoder|time0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[3]~2_combout\ = (\timer_aux|s_counter\(1) & (\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(2) $ (\timer_aux|s_counter\(0))))) # (!\timer_aux|s_counter\(1) & (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(3) $ 
-- (\timer_aux|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[3]~2_combout\);

-- Location: LCCOMB_X95_Y40_N14
\display_decoder|time0[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[4]~3_combout\ = (\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(0) & ((\timer_aux|s_counter\(3)) # (\timer_aux|s_counter\(1))))) # (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(3) $ (((!\timer_aux|s_counter\(1) & 
-- \timer_aux|s_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[4]~3_combout\);

-- Location: LCCOMB_X95_Y40_N20
\display_decoder|time0[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[5]~4_combout\ = (\timer_aux|s_counter\(3) & ((\timer_aux|s_counter\(2) & ((!\timer_aux|s_counter\(0)) # (!\timer_aux|s_counter\(1)))) # (!\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(1) & !\timer_aux|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[5]~4_combout\);

-- Location: LCCOMB_X95_Y40_N16
\display_decoder|time0[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[6]~5_combout\ = (\timer_aux|s_counter\(3) & ((\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(1))) # (!\timer_aux|s_counter\(2) & ((\timer_aux|s_counter\(1)) # (\timer_aux|s_counter\(0)))))) # (!\timer_aux|s_counter\(3) & 
-- (\timer_aux|s_counter\(2) $ ((!\timer_aux|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[6]~5_combout\);

-- Location: LCCOMB_X95_Y40_N18
\timer_aux|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~1_combout\ = (!\timer_aux|s_counter\(3) & (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(1) & !\timer_aux|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \timer_aux|Equal0~1_combout\);

-- Location: LCCOMB_X95_Y40_N6
\timer_aux|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~2_combout\ = (!\timer_aux|s_counter\(3) & (!\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(1) & \timer_aux|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \timer_aux|Equal0~2_combout\);

-- Location: LCCOMB_X95_Y40_N12
\display_decoder|time1[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time1[6]~0_combout\ = (!\timer_aux|s_counter\(3) & (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(1) $ (\timer_aux|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(1),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time1[6]~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;
END structure;


