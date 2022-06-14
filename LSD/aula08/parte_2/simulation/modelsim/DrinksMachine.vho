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

-- DATE "05/24/2022 15:57:08"

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

ENTITY 	DrinksMachine IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst8|LessThan1~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|LessThan1~4_combout\ : std_logic;
SIGNAL \inst8|LessThan1~2_combout\ : std_logic;
SIGNAL \inst8|LessThan1~3_combout\ : std_logic;
SIGNAL \inst8|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|LessThan0~3_combout\ : std_logic;
SIGNAL \inst8|LessThan0~4_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst8|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst8|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst8|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst8|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst8|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst8|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst8|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst8|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst8|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst8|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst8|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst8|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst8|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst8|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst8|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst8|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst8|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst8|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst8|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst8|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst8|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst8|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst8|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst8|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst8|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst8|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst8|LessThan1~1_combout\ : std_logic;
SIGNAL \inst8|LessThan1~5_combout\ : std_logic;
SIGNAL \inst8|LessThan1~6_combout\ : std_logic;
SIGNAL \inst8|LessThan1~7_combout\ : std_logic;
SIGNAL \inst8|LessThan1~8_combout\ : std_logic;
SIGNAL \inst8|clkOut~q\ : std_logic;
SIGNAL \inst8|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|s_count[0]~32_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst1|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1|s_previousIn~q\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~7_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_dirtyIn~q\ : std_logic;
SIGNAL \inst|s_previousIn~q\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~0_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~q\ : std_logic;
SIGNAL \inst3|s_currentState~17_combout\ : std_logic;
SIGNAL \inst3|s_currentState~18_combout\ : std_logic;
SIGNAL \inst3|s_currentState.ST0~q\ : std_logic;
SIGNAL \inst3|s_currentState~16_combout\ : std_logic;
SIGNAL \inst3|s_currentState~13_combout\ : std_logic;
SIGNAL \inst3|s_currentState.ST1~q\ : std_logic;
SIGNAL \inst3|s_currentState~12_combout\ : std_logic;
SIGNAL \inst3|s_currentState.ST2~q\ : std_logic;
SIGNAL \inst3|s_currentState~14_combout\ : std_logic;
SIGNAL \inst3|s_currentState~15_combout\ : std_logic;
SIGNAL \inst3|s_currentState.ST3~q\ : std_logic;
SIGNAL \inst3|s_currentState~10_combout\ : std_logic;
SIGNAL \inst3|s_currentState~11_combout\ : std_logic;
SIGNAL \inst3|s_currentState.ST4~q\ : std_logic;
SIGNAL \inst3|s_currentState~8_combout\ : std_logic;
SIGNAL \inst3|s_currentState~9_combout\ : std_logic;
SIGNAL \inst3|s_currentState.ST5~q\ : std_logic;
SIGNAL \inst11|s_count~38_combout\ : std_logic;
SIGNAL \inst11|s_count[0]~33\ : std_logic;
SIGNAL \inst11|s_count[1]~34_combout\ : std_logic;
SIGNAL \inst11|s_count[1]~35\ : std_logic;
SIGNAL \inst11|s_count[2]~36_combout\ : std_logic;
SIGNAL \inst11|s_count[2]~37\ : std_logic;
SIGNAL \inst11|s_count[3]~39_combout\ : std_logic;
SIGNAL \inst11|s_count[3]~40\ : std_logic;
SIGNAL \inst11|s_count[4]~41_combout\ : std_logic;
SIGNAL \inst11|s_count[4]~42\ : std_logic;
SIGNAL \inst11|s_count[5]~43_combout\ : std_logic;
SIGNAL \inst11|s_count[5]~44\ : std_logic;
SIGNAL \inst11|s_count[6]~45_combout\ : std_logic;
SIGNAL \inst11|s_count[6]~46\ : std_logic;
SIGNAL \inst11|s_count[7]~47_combout\ : std_logic;
SIGNAL \inst11|s_count[7]~48\ : std_logic;
SIGNAL \inst11|s_count[8]~49_combout\ : std_logic;
SIGNAL \inst11|s_count[8]~50\ : std_logic;
SIGNAL \inst11|s_count[9]~51_combout\ : std_logic;
SIGNAL \inst11|s_count[9]~52\ : std_logic;
SIGNAL \inst11|s_count[10]~53_combout\ : std_logic;
SIGNAL \inst11|s_count[10]~54\ : std_logic;
SIGNAL \inst11|s_count[11]~55_combout\ : std_logic;
SIGNAL \inst11|s_count[11]~56\ : std_logic;
SIGNAL \inst11|s_count[12]~57_combout\ : std_logic;
SIGNAL \inst11|s_count[12]~58\ : std_logic;
SIGNAL \inst11|s_count[13]~59_combout\ : std_logic;
SIGNAL \inst11|s_count[13]~60\ : std_logic;
SIGNAL \inst11|s_count[14]~61_combout\ : std_logic;
SIGNAL \inst11|s_count[14]~62\ : std_logic;
SIGNAL \inst11|s_count[15]~63_combout\ : std_logic;
SIGNAL \inst11|s_count[15]~64\ : std_logic;
SIGNAL \inst11|s_count[16]~65_combout\ : std_logic;
SIGNAL \inst11|s_count[16]~66\ : std_logic;
SIGNAL \inst11|s_count[17]~67_combout\ : std_logic;
SIGNAL \inst11|s_count[17]~68\ : std_logic;
SIGNAL \inst11|s_count[18]~69_combout\ : std_logic;
SIGNAL \inst11|s_count[18]~70\ : std_logic;
SIGNAL \inst11|s_count[19]~71_combout\ : std_logic;
SIGNAL \inst11|s_count[19]~72\ : std_logic;
SIGNAL \inst11|s_count[20]~73_combout\ : std_logic;
SIGNAL \inst11|s_count[20]~74\ : std_logic;
SIGNAL \inst11|s_count[21]~75_combout\ : std_logic;
SIGNAL \inst11|s_count[21]~76\ : std_logic;
SIGNAL \inst11|s_count[22]~77_combout\ : std_logic;
SIGNAL \inst11|s_count[22]~78\ : std_logic;
SIGNAL \inst11|s_count[23]~79_combout\ : std_logic;
SIGNAL \inst11|s_count[23]~80\ : std_logic;
SIGNAL \inst11|s_count[24]~81_combout\ : std_logic;
SIGNAL \inst11|Equal0~6_combout\ : std_logic;
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
SIGNAL \inst11|s_count[24]~82\ : std_logic;
SIGNAL \inst11|s_count[25]~83_combout\ : std_logic;
SIGNAL \inst11|s_count[25]~84\ : std_logic;
SIGNAL \inst11|s_count[26]~85_combout\ : std_logic;
SIGNAL \inst11|s_count[26]~86\ : std_logic;
SIGNAL \inst11|s_count[27]~87_combout\ : std_logic;
SIGNAL \inst11|s_count[27]~88\ : std_logic;
SIGNAL \inst11|s_count[28]~89_combout\ : std_logic;
SIGNAL \inst11|Equal0~7_combout\ : std_logic;
SIGNAL \inst11|s_count[28]~90\ : std_logic;
SIGNAL \inst11|s_count[29]~91_combout\ : std_logic;
SIGNAL \inst11|s_count[29]~92\ : std_logic;
SIGNAL \inst11|s_count[30]~93_combout\ : std_logic;
SIGNAL \inst11|s_count[30]~94\ : std_logic;
SIGNAL \inst11|s_count[31]~95_combout\ : std_logic;
SIGNAL \inst11|Equal0~8_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~9_combout\ : std_logic;
SIGNAL \inst11|Equal1~0_combout\ : std_logic;
SIGNAL \inst11|timerOut~q\ : std_logic;
SIGNAL \inst11|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst8|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|timerOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X60_Y6_N6
\inst8|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[0]~26_combout\ = \inst8|s_divCounter\(0) $ (VCC)
-- \inst8|s_divCounter[0]~27\ = CARRY(\inst8|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(0),
	datad => VCC,
	combout => \inst8|s_divCounter[0]~26_combout\,
	cout => \inst8|s_divCounter[0]~27\);

-- Location: LCCOMB_X60_Y5_N30
\inst8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~0_combout\ = (\inst8|s_divCounter\(19) & (\inst8|s_divCounter\(21) & (\inst8|s_divCounter\(20) & \inst8|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(19),
	datab => \inst8|s_divCounter\(21),
	datac => \inst8|s_divCounter\(20),
	datad => \inst8|s_divCounter\(22),
	combout => \inst8|LessThan1~0_combout\);

-- Location: LCCOMB_X59_Y6_N8
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = (((!\inst8|s_divCounter\(17) & !\inst8|s_divCounter\(18))) # (!\inst8|LessThan1~0_combout\)) # (!\inst8|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(17),
	datab => \inst8|s_divCounter\(18),
	datac => \inst8|s_divCounter\(23),
	datad => \inst8|LessThan1~0_combout\,
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y6_N22
\inst8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_combout\ = (((!\inst8|s_divCounter\(14)) # (!\inst8|s_divCounter\(12))) # (!\inst8|s_divCounter\(13))) # (!\inst8|s_divCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(15),
	datab => \inst8|s_divCounter\(13),
	datac => \inst8|s_divCounter\(12),
	datad => \inst8|s_divCounter\(14),
	combout => \inst8|LessThan0~1_combout\);

-- Location: LCCOMB_X60_Y6_N4
\inst8|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~4_combout\ = (!\inst8|s_divCounter\(10) & (!\inst8|s_divCounter\(7) & (!\inst8|s_divCounter\(8) & !\inst8|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(10),
	datab => \inst8|s_divCounter\(7),
	datac => \inst8|s_divCounter\(8),
	datad => \inst8|s_divCounter\(9),
	combout => \inst8|LessThan1~4_combout\);

-- Location: LCCOMB_X60_Y6_N0
\inst8|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~2_combout\ = (((!\inst8|s_divCounter\(2)) # (!\inst8|s_divCounter\(0))) # (!\inst8|s_divCounter\(1))) # (!\inst8|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(3),
	datab => \inst8|s_divCounter\(1),
	datac => \inst8|s_divCounter\(0),
	datad => \inst8|s_divCounter\(2),
	combout => \inst8|LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y6_N2
\inst8|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~3_combout\ = ((\inst8|LessThan1~2_combout\) # (!\inst8|s_divCounter\(4))) # (!\inst8|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(5),
	datac => \inst8|s_divCounter\(4),
	datad => \inst8|LessThan1~2_combout\,
	combout => \inst8|LessThan1~3_combout\);

-- Location: LCCOMB_X59_Y6_N12
\inst8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~2_combout\ = (\inst8|LessThan1~4_combout\ & (!\inst8|s_divCounter\(11) & ((\inst8|LessThan1~3_combout\) # (!\inst8|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~4_combout\,
	datab => \inst8|s_divCounter\(6),
	datac => \inst8|s_divCounter\(11),
	datad => \inst8|LessThan1~3_combout\,
	combout => \inst8|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y6_N28
\inst8|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~3_combout\ = (!\inst8|s_divCounter\(16) & (!\inst8|s_divCounter\(18) & ((\inst8|LessThan0~1_combout\) # (\inst8|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan0~1_combout\,
	datab => \inst8|s_divCounter\(16),
	datac => \inst8|s_divCounter\(18),
	datad => \inst8|LessThan0~2_combout\,
	combout => \inst8|LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y6_N30
\inst8|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~4_combout\ = (\inst8|s_divCounter\(25) & ((\inst8|s_divCounter\(24)) # ((!\inst8|LessThan0~0_combout\ & !\inst8|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(25),
	datab => \inst8|s_divCounter\(24),
	datac => \inst8|LessThan0~0_combout\,
	datad => \inst8|LessThan0~3_combout\,
	combout => \inst8|LessThan0~4_combout\);

-- Location: FF_X60_Y6_N7
\inst8|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[0]~26_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(0));

-- Location: LCCOMB_X60_Y6_N8
\inst8|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[1]~28_combout\ = (\inst8|s_divCounter\(1) & (!\inst8|s_divCounter[0]~27\)) # (!\inst8|s_divCounter\(1) & ((\inst8|s_divCounter[0]~27\) # (GND)))
-- \inst8|s_divCounter[1]~29\ = CARRY((!\inst8|s_divCounter[0]~27\) # (!\inst8|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(1),
	datad => VCC,
	cin => \inst8|s_divCounter[0]~27\,
	combout => \inst8|s_divCounter[1]~28_combout\,
	cout => \inst8|s_divCounter[1]~29\);

-- Location: FF_X60_Y6_N9
\inst8|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[1]~28_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(1));

-- Location: LCCOMB_X60_Y6_N10
\inst8|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[2]~30_combout\ = (\inst8|s_divCounter\(2) & (\inst8|s_divCounter[1]~29\ $ (GND))) # (!\inst8|s_divCounter\(2) & (!\inst8|s_divCounter[1]~29\ & VCC))
-- \inst8|s_divCounter[2]~31\ = CARRY((\inst8|s_divCounter\(2) & !\inst8|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(2),
	datad => VCC,
	cin => \inst8|s_divCounter[1]~29\,
	combout => \inst8|s_divCounter[2]~30_combout\,
	cout => \inst8|s_divCounter[2]~31\);

-- Location: FF_X60_Y6_N11
\inst8|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[2]~30_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(2));

-- Location: LCCOMB_X60_Y6_N12
\inst8|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[3]~32_combout\ = (\inst8|s_divCounter\(3) & (!\inst8|s_divCounter[2]~31\)) # (!\inst8|s_divCounter\(3) & ((\inst8|s_divCounter[2]~31\) # (GND)))
-- \inst8|s_divCounter[3]~33\ = CARRY((!\inst8|s_divCounter[2]~31\) # (!\inst8|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(3),
	datad => VCC,
	cin => \inst8|s_divCounter[2]~31\,
	combout => \inst8|s_divCounter[3]~32_combout\,
	cout => \inst8|s_divCounter[3]~33\);

-- Location: FF_X60_Y6_N13
\inst8|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[3]~32_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(3));

-- Location: LCCOMB_X60_Y6_N14
\inst8|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[4]~34_combout\ = (\inst8|s_divCounter\(4) & (\inst8|s_divCounter[3]~33\ $ (GND))) # (!\inst8|s_divCounter\(4) & (!\inst8|s_divCounter[3]~33\ & VCC))
-- \inst8|s_divCounter[4]~35\ = CARRY((\inst8|s_divCounter\(4) & !\inst8|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(4),
	datad => VCC,
	cin => \inst8|s_divCounter[3]~33\,
	combout => \inst8|s_divCounter[4]~34_combout\,
	cout => \inst8|s_divCounter[4]~35\);

-- Location: FF_X60_Y6_N15
\inst8|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[4]~34_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(4));

-- Location: LCCOMB_X60_Y6_N16
\inst8|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[5]~36_combout\ = (\inst8|s_divCounter\(5) & (!\inst8|s_divCounter[4]~35\)) # (!\inst8|s_divCounter\(5) & ((\inst8|s_divCounter[4]~35\) # (GND)))
-- \inst8|s_divCounter[5]~37\ = CARRY((!\inst8|s_divCounter[4]~35\) # (!\inst8|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(5),
	datad => VCC,
	cin => \inst8|s_divCounter[4]~35\,
	combout => \inst8|s_divCounter[5]~36_combout\,
	cout => \inst8|s_divCounter[5]~37\);

-- Location: FF_X60_Y6_N17
\inst8|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[5]~36_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(5));

-- Location: LCCOMB_X60_Y6_N18
\inst8|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[6]~38_combout\ = (\inst8|s_divCounter\(6) & (\inst8|s_divCounter[5]~37\ $ (GND))) # (!\inst8|s_divCounter\(6) & (!\inst8|s_divCounter[5]~37\ & VCC))
-- \inst8|s_divCounter[6]~39\ = CARRY((\inst8|s_divCounter\(6) & !\inst8|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(6),
	datad => VCC,
	cin => \inst8|s_divCounter[5]~37\,
	combout => \inst8|s_divCounter[6]~38_combout\,
	cout => \inst8|s_divCounter[6]~39\);

-- Location: FF_X60_Y6_N19
\inst8|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[6]~38_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(6));

-- Location: LCCOMB_X60_Y6_N20
\inst8|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[7]~40_combout\ = (\inst8|s_divCounter\(7) & (!\inst8|s_divCounter[6]~39\)) # (!\inst8|s_divCounter\(7) & ((\inst8|s_divCounter[6]~39\) # (GND)))
-- \inst8|s_divCounter[7]~41\ = CARRY((!\inst8|s_divCounter[6]~39\) # (!\inst8|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(7),
	datad => VCC,
	cin => \inst8|s_divCounter[6]~39\,
	combout => \inst8|s_divCounter[7]~40_combout\,
	cout => \inst8|s_divCounter[7]~41\);

-- Location: FF_X60_Y6_N21
\inst8|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[7]~40_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(7));

-- Location: LCCOMB_X60_Y6_N22
\inst8|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[8]~42_combout\ = (\inst8|s_divCounter\(8) & (\inst8|s_divCounter[7]~41\ $ (GND))) # (!\inst8|s_divCounter\(8) & (!\inst8|s_divCounter[7]~41\ & VCC))
-- \inst8|s_divCounter[8]~43\ = CARRY((\inst8|s_divCounter\(8) & !\inst8|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(8),
	datad => VCC,
	cin => \inst8|s_divCounter[7]~41\,
	combout => \inst8|s_divCounter[8]~42_combout\,
	cout => \inst8|s_divCounter[8]~43\);

-- Location: FF_X60_Y6_N23
\inst8|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[8]~42_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(8));

-- Location: LCCOMB_X60_Y6_N24
\inst8|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[9]~44_combout\ = (\inst8|s_divCounter\(9) & (!\inst8|s_divCounter[8]~43\)) # (!\inst8|s_divCounter\(9) & ((\inst8|s_divCounter[8]~43\) # (GND)))
-- \inst8|s_divCounter[9]~45\ = CARRY((!\inst8|s_divCounter[8]~43\) # (!\inst8|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(9),
	datad => VCC,
	cin => \inst8|s_divCounter[8]~43\,
	combout => \inst8|s_divCounter[9]~44_combout\,
	cout => \inst8|s_divCounter[9]~45\);

-- Location: FF_X60_Y6_N25
\inst8|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[9]~44_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(9));

-- Location: LCCOMB_X60_Y6_N26
\inst8|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[10]~46_combout\ = (\inst8|s_divCounter\(10) & (\inst8|s_divCounter[9]~45\ $ (GND))) # (!\inst8|s_divCounter\(10) & (!\inst8|s_divCounter[9]~45\ & VCC))
-- \inst8|s_divCounter[10]~47\ = CARRY((\inst8|s_divCounter\(10) & !\inst8|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(10),
	datad => VCC,
	cin => \inst8|s_divCounter[9]~45\,
	combout => \inst8|s_divCounter[10]~46_combout\,
	cout => \inst8|s_divCounter[10]~47\);

-- Location: FF_X60_Y6_N27
\inst8|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[10]~46_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(10));

-- Location: LCCOMB_X60_Y6_N28
\inst8|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[11]~48_combout\ = (\inst8|s_divCounter\(11) & (!\inst8|s_divCounter[10]~47\)) # (!\inst8|s_divCounter\(11) & ((\inst8|s_divCounter[10]~47\) # (GND)))
-- \inst8|s_divCounter[11]~49\ = CARRY((!\inst8|s_divCounter[10]~47\) # (!\inst8|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(11),
	datad => VCC,
	cin => \inst8|s_divCounter[10]~47\,
	combout => \inst8|s_divCounter[11]~48_combout\,
	cout => \inst8|s_divCounter[11]~49\);

-- Location: FF_X60_Y6_N29
\inst8|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[11]~48_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(11));

-- Location: LCCOMB_X60_Y6_N30
\inst8|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[12]~50_combout\ = (\inst8|s_divCounter\(12) & (\inst8|s_divCounter[11]~49\ $ (GND))) # (!\inst8|s_divCounter\(12) & (!\inst8|s_divCounter[11]~49\ & VCC))
-- \inst8|s_divCounter[12]~51\ = CARRY((\inst8|s_divCounter\(12) & !\inst8|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(12),
	datad => VCC,
	cin => \inst8|s_divCounter[11]~49\,
	combout => \inst8|s_divCounter[12]~50_combout\,
	cout => \inst8|s_divCounter[12]~51\);

-- Location: FF_X60_Y6_N31
\inst8|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[12]~50_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(12));

-- Location: LCCOMB_X60_Y5_N0
\inst8|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[13]~52_combout\ = (\inst8|s_divCounter\(13) & (!\inst8|s_divCounter[12]~51\)) # (!\inst8|s_divCounter\(13) & ((\inst8|s_divCounter[12]~51\) # (GND)))
-- \inst8|s_divCounter[13]~53\ = CARRY((!\inst8|s_divCounter[12]~51\) # (!\inst8|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(13),
	datad => VCC,
	cin => \inst8|s_divCounter[12]~51\,
	combout => \inst8|s_divCounter[13]~52_combout\,
	cout => \inst8|s_divCounter[13]~53\);

-- Location: FF_X59_Y6_N21
\inst8|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst8|s_divCounter[13]~52_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(13));

-- Location: LCCOMB_X60_Y5_N2
\inst8|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[14]~54_combout\ = (\inst8|s_divCounter\(14) & (\inst8|s_divCounter[13]~53\ $ (GND))) # (!\inst8|s_divCounter\(14) & (!\inst8|s_divCounter[13]~53\ & VCC))
-- \inst8|s_divCounter[14]~55\ = CARRY((\inst8|s_divCounter\(14) & !\inst8|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(14),
	datad => VCC,
	cin => \inst8|s_divCounter[13]~53\,
	combout => \inst8|s_divCounter[14]~54_combout\,
	cout => \inst8|s_divCounter[14]~55\);

-- Location: FF_X59_Y6_N11
\inst8|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst8|s_divCounter[14]~54_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(14));

-- Location: LCCOMB_X60_Y5_N4
\inst8|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[15]~56_combout\ = (\inst8|s_divCounter\(15) & (!\inst8|s_divCounter[14]~55\)) # (!\inst8|s_divCounter\(15) & ((\inst8|s_divCounter[14]~55\) # (GND)))
-- \inst8|s_divCounter[15]~57\ = CARRY((!\inst8|s_divCounter[14]~55\) # (!\inst8|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(15),
	datad => VCC,
	cin => \inst8|s_divCounter[14]~55\,
	combout => \inst8|s_divCounter[15]~56_combout\,
	cout => \inst8|s_divCounter[15]~57\);

-- Location: FF_X59_Y6_N27
\inst8|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst8|s_divCounter[15]~56_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(15));

-- Location: LCCOMB_X60_Y5_N6
\inst8|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[16]~58_combout\ = (\inst8|s_divCounter\(16) & (\inst8|s_divCounter[15]~57\ $ (GND))) # (!\inst8|s_divCounter\(16) & (!\inst8|s_divCounter[15]~57\ & VCC))
-- \inst8|s_divCounter[16]~59\ = CARRY((\inst8|s_divCounter\(16) & !\inst8|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(16),
	datad => VCC,
	cin => \inst8|s_divCounter[15]~57\,
	combout => \inst8|s_divCounter[16]~58_combout\,
	cout => \inst8|s_divCounter[16]~59\);

-- Location: FF_X59_Y6_N3
\inst8|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst8|s_divCounter[16]~58_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(16));

-- Location: LCCOMB_X60_Y5_N8
\inst8|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[17]~60_combout\ = (\inst8|s_divCounter\(17) & (!\inst8|s_divCounter[16]~59\)) # (!\inst8|s_divCounter\(17) & ((\inst8|s_divCounter[16]~59\) # (GND)))
-- \inst8|s_divCounter[17]~61\ = CARRY((!\inst8|s_divCounter[16]~59\) # (!\inst8|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(17),
	datad => VCC,
	cin => \inst8|s_divCounter[16]~59\,
	combout => \inst8|s_divCounter[17]~60_combout\,
	cout => \inst8|s_divCounter[17]~61\);

-- Location: FF_X60_Y5_N9
\inst8|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[17]~60_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(17));

-- Location: LCCOMB_X60_Y5_N10
\inst8|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[18]~62_combout\ = (\inst8|s_divCounter\(18) & (\inst8|s_divCounter[17]~61\ $ (GND))) # (!\inst8|s_divCounter\(18) & (!\inst8|s_divCounter[17]~61\ & VCC))
-- \inst8|s_divCounter[18]~63\ = CARRY((\inst8|s_divCounter\(18) & !\inst8|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(18),
	datad => VCC,
	cin => \inst8|s_divCounter[17]~61\,
	combout => \inst8|s_divCounter[18]~62_combout\,
	cout => \inst8|s_divCounter[18]~63\);

-- Location: FF_X60_Y5_N11
\inst8|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[18]~62_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(18));

-- Location: LCCOMB_X60_Y5_N12
\inst8|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[19]~64_combout\ = (\inst8|s_divCounter\(19) & (!\inst8|s_divCounter[18]~63\)) # (!\inst8|s_divCounter\(19) & ((\inst8|s_divCounter[18]~63\) # (GND)))
-- \inst8|s_divCounter[19]~65\ = CARRY((!\inst8|s_divCounter[18]~63\) # (!\inst8|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(19),
	datad => VCC,
	cin => \inst8|s_divCounter[18]~63\,
	combout => \inst8|s_divCounter[19]~64_combout\,
	cout => \inst8|s_divCounter[19]~65\);

-- Location: FF_X60_Y5_N13
\inst8|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[19]~64_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(19));

-- Location: LCCOMB_X60_Y5_N14
\inst8|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[20]~66_combout\ = (\inst8|s_divCounter\(20) & (\inst8|s_divCounter[19]~65\ $ (GND))) # (!\inst8|s_divCounter\(20) & (!\inst8|s_divCounter[19]~65\ & VCC))
-- \inst8|s_divCounter[20]~67\ = CARRY((\inst8|s_divCounter\(20) & !\inst8|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(20),
	datad => VCC,
	cin => \inst8|s_divCounter[19]~65\,
	combout => \inst8|s_divCounter[20]~66_combout\,
	cout => \inst8|s_divCounter[20]~67\);

-- Location: FF_X60_Y5_N15
\inst8|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[20]~66_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(20));

-- Location: LCCOMB_X60_Y5_N16
\inst8|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[21]~68_combout\ = (\inst8|s_divCounter\(21) & (!\inst8|s_divCounter[20]~67\)) # (!\inst8|s_divCounter\(21) & ((\inst8|s_divCounter[20]~67\) # (GND)))
-- \inst8|s_divCounter[21]~69\ = CARRY((!\inst8|s_divCounter[20]~67\) # (!\inst8|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(21),
	datad => VCC,
	cin => \inst8|s_divCounter[20]~67\,
	combout => \inst8|s_divCounter[21]~68_combout\,
	cout => \inst8|s_divCounter[21]~69\);

-- Location: FF_X60_Y5_N17
\inst8|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[21]~68_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(21));

-- Location: LCCOMB_X60_Y5_N18
\inst8|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[22]~70_combout\ = (\inst8|s_divCounter\(22) & (\inst8|s_divCounter[21]~69\ $ (GND))) # (!\inst8|s_divCounter\(22) & (!\inst8|s_divCounter[21]~69\ & VCC))
-- \inst8|s_divCounter[22]~71\ = CARRY((\inst8|s_divCounter\(22) & !\inst8|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(22),
	datad => VCC,
	cin => \inst8|s_divCounter[21]~69\,
	combout => \inst8|s_divCounter[22]~70_combout\,
	cout => \inst8|s_divCounter[22]~71\);

-- Location: FF_X60_Y5_N19
\inst8|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[22]~70_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(22));

-- Location: LCCOMB_X60_Y5_N20
\inst8|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[23]~72_combout\ = (\inst8|s_divCounter\(23) & (!\inst8|s_divCounter[22]~71\)) # (!\inst8|s_divCounter\(23) & ((\inst8|s_divCounter[22]~71\) # (GND)))
-- \inst8|s_divCounter[23]~73\ = CARRY((!\inst8|s_divCounter[22]~71\) # (!\inst8|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(23),
	datad => VCC,
	cin => \inst8|s_divCounter[22]~71\,
	combout => \inst8|s_divCounter[23]~72_combout\,
	cout => \inst8|s_divCounter[23]~73\);

-- Location: FF_X60_Y5_N21
\inst8|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[23]~72_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(23));

-- Location: LCCOMB_X60_Y5_N22
\inst8|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[24]~74_combout\ = (\inst8|s_divCounter\(24) & (\inst8|s_divCounter[23]~73\ $ (GND))) # (!\inst8|s_divCounter\(24) & (!\inst8|s_divCounter[23]~73\ & VCC))
-- \inst8|s_divCounter[24]~75\ = CARRY((\inst8|s_divCounter\(24) & !\inst8|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(24),
	datad => VCC,
	cin => \inst8|s_divCounter[23]~73\,
	combout => \inst8|s_divCounter[24]~74_combout\,
	cout => \inst8|s_divCounter[24]~75\);

-- Location: FF_X60_Y5_N23
\inst8|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[24]~74_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(24));

-- Location: LCCOMB_X60_Y5_N24
\inst8|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|s_divCounter[25]~76_combout\ = \inst8|s_divCounter[24]~75\ $ (\inst8|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|s_divCounter\(25),
	cin => \inst8|s_divCounter[24]~75\,
	combout => \inst8|s_divCounter[25]~76_combout\);

-- Location: FF_X60_Y5_N25
\inst8|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|s_divCounter[25]~76_combout\,
	sclr => \inst8|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|s_divCounter\(25));

-- Location: LCCOMB_X59_Y6_N14
\inst8|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~1_combout\ = (((!\inst8|s_divCounter\(11)) # (!\inst8|s_divCounter\(12))) # (!\inst8|s_divCounter\(13))) # (!\inst8|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(14),
	datab => \inst8|s_divCounter\(13),
	datac => \inst8|s_divCounter\(12),
	datad => \inst8|s_divCounter\(11),
	combout => \inst8|LessThan1~1_combout\);

-- Location: LCCOMB_X59_Y6_N0
\inst8|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~5_combout\ = (\inst8|LessThan1~1_combout\) # ((\inst8|LessThan1~4_combout\ & (!\inst8|s_divCounter\(6) & \inst8|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~4_combout\,
	datab => \inst8|s_divCounter\(6),
	datac => \inst8|LessThan1~1_combout\,
	datad => \inst8|LessThan1~3_combout\,
	combout => \inst8|LessThan1~5_combout\);

-- Location: LCCOMB_X59_Y6_N24
\inst8|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~6_combout\ = (\inst8|s_divCounter\(16) & ((\inst8|s_divCounter\(15)) # (!\inst8|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|s_divCounter\(16),
	datac => \inst8|s_divCounter\(15),
	datad => \inst8|LessThan1~5_combout\,
	combout => \inst8|LessThan1~6_combout\);

-- Location: LCCOMB_X59_Y6_N6
\inst8|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~7_combout\ = (\inst8|LessThan1~0_combout\ & (\inst8|s_divCounter\(18) & ((\inst8|s_divCounter\(17)) # (\inst8|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~0_combout\,
	datab => \inst8|s_divCounter\(18),
	datac => \inst8|s_divCounter\(17),
	datad => \inst8|LessThan1~6_combout\,
	combout => \inst8|LessThan1~7_combout\);

-- Location: LCCOMB_X59_Y6_N16
\inst8|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~8_combout\ = (\inst8|s_divCounter\(25)) # ((\inst8|s_divCounter\(24) & ((\inst8|s_divCounter\(23)) # (\inst8|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|s_divCounter\(25),
	datab => \inst8|s_divCounter\(24),
	datac => \inst8|s_divCounter\(23),
	datad => \inst8|LessThan1~7_combout\,
	combout => \inst8|LessThan1~8_combout\);

-- Location: FF_X59_Y6_N17
\inst8|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clkOut~q\);

-- Location: CLKCTRL_G15
\inst8|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X106_Y48_N0
\inst11|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[0]~32_combout\ = \inst11|s_count\(0) $ (VCC)
-- \inst11|s_count[0]~33\ = CARRY(\inst11|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(0),
	datad => VCC,
	combout => \inst11|s_count[0]~32_combout\,
	cout => \inst11|s_count[0]~33\);

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

-- Location: FF_X107_Y26_N11
\inst1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_dirtyIn~q\);

-- Location: FF_X107_Y26_N5
\inst1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_previousIn~q\);

-- Location: LCCOMB_X108_Y27_N10
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_debounceCnt\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X107_Y26_N0
\inst1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~23_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|s_previousIn~q\ & \inst1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|s_debounceCnt~23_combout\);

-- Location: FF_X107_Y26_N1
\inst1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~23_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(0));

-- Location: LCCOMB_X108_Y27_N12
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_debounceCnt\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|s_debounceCnt\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|s_debounceCnt\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X108_Y27_N8
\inst1|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~19_combout\ = (\inst1|Add0~2_combout\ & (\inst1|s_previousIn~q\ & \inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~19_combout\);

-- Location: FF_X108_Y27_N9
\inst1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~19_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(1));

-- Location: LCCOMB_X108_Y27_N14
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_debounceCnt\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|s_debounceCnt\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|s_debounceCnt\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X108_Y27_N2
\inst1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~20_combout\ = (\inst1|s_previousIn~q\ & (\inst1|Add0~4_combout\ & \inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y27_N3
\inst1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~20_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y27_N16
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_debounceCnt\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|s_debounceCnt\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|s_debounceCnt\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X108_Y27_N4
\inst1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~21_combout\ = (\inst1|Add0~6_combout\ & (\inst1|s_previousIn~q\ & \inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~6_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y27_N5
\inst1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~21_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(3));

-- Location: LCCOMB_X108_Y27_N18
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_debounceCnt\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|s_debounceCnt\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|s_debounceCnt\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X108_Y27_N6
\inst1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~22_combout\ = (\inst1|Add0~8_combout\ & (\inst1|s_previousIn~q\ & \inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y27_N7
\inst1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~22_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(4));

-- Location: LCCOMB_X108_Y27_N0
\inst1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~5_combout\ = (!\inst1|s_debounceCnt\(4) & (!\inst1|s_debounceCnt\(3) & (!\inst1|s_debounceCnt\(1) & !\inst1|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(4),
	datab => \inst1|s_debounceCnt\(3),
	datac => \inst1|s_debounceCnt\(1),
	datad => \inst1|s_debounceCnt\(2),
	combout => \inst1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X108_Y27_N20
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_debounceCnt\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|s_debounceCnt\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|s_debounceCnt\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X108_Y27_N22
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_debounceCnt\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|s_debounceCnt\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|s_debounceCnt\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X107_Y26_N22
\inst1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~1_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datab => \inst1|s_previousIn~q\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|s_debounceCnt~1_combout\);

-- Location: FF_X107_Y26_N23
\inst1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~1_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y27_N24
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_debounceCnt\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|s_debounceCnt\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|s_debounceCnt\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X106_Y26_N20
\inst1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~11_combout\ = (\inst1|s_previousIn~q\ & (\inst1|s_debounceCnt[18]~0_combout\ & \inst1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|s_debounceCnt~11_combout\);

-- Location: FF_X106_Y26_N21
\inst1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~11_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y27_N26
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|s_debounceCnt\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|s_debounceCnt\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|s_debounceCnt\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X106_Y26_N26
\inst1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~12_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~16_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~12_combout\);

-- Location: FF_X106_Y26_N27
\inst1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~12_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(8));

-- Location: LCCOMB_X108_Y27_N28
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_debounceCnt\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|s_debounceCnt\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|s_debounceCnt\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X106_Y26_N0
\inst1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~13_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~18_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~18_combout\,
	combout => \inst1|s_debounceCnt~13_combout\);

-- Location: FF_X106_Y26_N1
\inst1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~13_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(9));

-- Location: LCCOMB_X108_Y27_N30
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|s_debounceCnt\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|s_debounceCnt\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|s_debounceCnt\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X106_Y26_N10
\inst1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~14_combout\ = (\inst1|s_previousIn~q\ & (\inst1|s_debounceCnt[18]~0_combout\ & \inst1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|s_debounceCnt~14_combout\);

-- Location: FF_X106_Y26_N11
\inst1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~14_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(10));

-- Location: LCCOMB_X106_Y26_N16
\inst1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~2_combout\ = (!\inst1|s_debounceCnt\(10) & (!\inst1|s_debounceCnt\(9) & (!\inst1|s_debounceCnt\(8) & !\inst1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(10),
	datab => \inst1|s_debounceCnt\(9),
	datac => \inst1|s_debounceCnt\(8),
	datad => \inst1|s_debounceCnt\(7),
	combout => \inst1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X108_Y26_N0
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|s_debounceCnt\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|s_debounceCnt\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|s_debounceCnt\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X108_Y26_N26
\inst1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~15_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~22_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~22_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~15_combout\);

-- Location: FF_X108_Y26_N27
\inst1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~15_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(11));

-- Location: LCCOMB_X108_Y26_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|s_debounceCnt\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|s_debounceCnt\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|s_debounceCnt\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X108_Y26_N24
\inst1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~7_combout\ = (\inst1|Add0~24_combout\ & (\inst1|s_previousIn~q\ & \inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~24_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~7_combout\);

-- Location: FF_X108_Y26_N25
\inst1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~7_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(12));

-- Location: LCCOMB_X108_Y26_N4
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|s_debounceCnt\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|s_debounceCnt\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|s_debounceCnt\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X108_Y26_N30
\inst1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~8_combout\ = (\inst1|s_previousIn~q\ & (\inst1|Add0~26_combout\ & \inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|s_debounceCnt[18]~0_combout\,
	combout => \inst1|s_debounceCnt~8_combout\);

-- Location: FF_X108_Y26_N31
\inst1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~8_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(13));

-- Location: LCCOMB_X108_Y26_N6
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|s_debounceCnt\(14) & ((GND) # (!\inst1|Add0~27\))) # (!\inst1|s_debounceCnt\(14) & (\inst1|Add0~27\ $ (GND)))
-- \inst1|Add0~29\ = CARRY((\inst1|s_debounceCnt\(14)) # (!\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X106_Y26_N14
\inst1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~16_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~28_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|s_debounceCnt~16_combout\);

-- Location: FF_X106_Y26_N15
\inst1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~16_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(14));

-- Location: LCCOMB_X108_Y26_N8
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|s_debounceCnt\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|s_debounceCnt\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|s_debounceCnt\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X107_Y26_N8
\inst1|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~4_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|s_previousIn~q\ & \inst1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|s_debounceCnt~4_combout\);

-- Location: FF_X107_Y26_N9
\inst1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~4_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(15));

-- Location: LCCOMB_X108_Y26_N10
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|s_debounceCnt\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|s_debounceCnt\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|s_debounceCnt\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X107_Y26_N20
\inst1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~5_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|s_previousIn~q\ & \inst1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|Add0~32_combout\,
	combout => \inst1|s_debounceCnt~5_combout\);

-- Location: FF_X107_Y26_N21
\inst1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~5_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(16));

-- Location: LCCOMB_X108_Y26_N12
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|s_debounceCnt\(17) & (\inst1|Add0~33\ & VCC)) # (!\inst1|s_debounceCnt\(17) & (!\inst1|Add0~33\))
-- \inst1|Add0~35\ = CARRY((!\inst1|s_debounceCnt\(17) & !\inst1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X107_Y26_N14
\inst1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~6_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|Add0~34_combout\ & \inst1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datab => \inst1|Add0~34_combout\,
	datac => \inst1|s_previousIn~q\,
	combout => \inst1|s_debounceCnt~6_combout\);

-- Location: FF_X107_Y26_N15
\inst1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~6_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(17));

-- Location: LCCOMB_X107_Y26_N18
\inst1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~0_combout\ = (!\inst1|s_debounceCnt\(6) & (!\inst1|s_debounceCnt\(15) & (!\inst1|s_debounceCnt\(17) & !\inst1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(6),
	datab => \inst1|s_debounceCnt\(15),
	datac => \inst1|s_debounceCnt\(17),
	datad => \inst1|s_debounceCnt\(16),
	combout => \inst1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X108_Y26_N14
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|s_debounceCnt\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|s_debounceCnt\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|s_debounceCnt\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X106_Y26_N24
\inst1|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~17_combout\ = (\inst1|s_debounceCnt[18]~3_combout\ & (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~36_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[18]~3_combout\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~36_combout\,
	combout => \inst1|s_debounceCnt[18]~17_combout\);

-- Location: FF_X106_Y26_N25
\inst1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(18));

-- Location: LCCOMB_X108_Y26_N16
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|s_debounceCnt\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|s_debounceCnt\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X106_Y26_N18
\inst1|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[19]~18_combout\ = (\inst1|s_debounceCnt[18]~3_combout\ & (\inst1|s_debounceCnt[18]~0_combout\ & ((\inst1|Add0~38_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[18]~3_combout\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~38_combout\,
	combout => \inst1|s_debounceCnt[19]~18_combout\);

-- Location: FF_X106_Y26_N19
\inst1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(19));

-- Location: LCCOMB_X107_Y26_N30
\inst1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~3_combout\ = (!\inst1|s_debounceCnt\(18) & (!\inst1|s_debounceCnt\(19) & (!\inst1|s_debounceCnt\(11) & !\inst1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(18),
	datab => \inst1|s_debounceCnt\(19),
	datac => \inst1|s_debounceCnt\(11),
	datad => \inst1|s_debounceCnt\(14),
	combout => \inst1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X108_Y26_N18
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|s_debounceCnt\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|s_debounceCnt\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|s_debounceCnt\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X108_Y26_N20
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|s_debounceCnt\(21) & (\inst1|Add0~41\ & VCC)) # (!\inst1|s_debounceCnt\(21) & (!\inst1|Add0~41\))
-- \inst1|Add0~43\ = CARRY((!\inst1|s_debounceCnt\(21) & !\inst1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X107_Y26_N6
\inst1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[21]~10_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|s_previousIn~q\ & (\inst1|Add0~42_combout\ & \inst1|s_debounceCnt[18]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~42_combout\,
	datad => \inst1|s_debounceCnt[18]~3_combout\,
	combout => \inst1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X107_Y26_N7
\inst1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(21));

-- Location: LCCOMB_X108_Y26_N28
\inst1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~1_combout\ = (!\inst1|s_debounceCnt\(13) & (!\inst1|s_debounceCnt\(12) & (!\inst1|s_debounceCnt\(21) & !\inst1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(13),
	datab => \inst1|s_debounceCnt\(12),
	datac => \inst1|s_debounceCnt\(21),
	datad => \inst1|s_debounceCnt\(20),
	combout => \inst1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X107_Y26_N16
\inst1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~4_combout\ = (\inst1|s_pulsedOut~2_combout\ & (\inst1|s_pulsedOut~0_combout\ & (\inst1|s_pulsedOut~3_combout\ & \inst1|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~2_combout\,
	datab => \inst1|s_pulsedOut~0_combout\,
	datac => \inst1|s_pulsedOut~3_combout\,
	datad => \inst1|s_pulsedOut~1_combout\,
	combout => \inst1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X107_Y26_N28
\inst1|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~2_combout\ = (\inst1|s_debounceCnt\(5)) # ((\inst1|s_debounceCnt\(0)) # ((!\inst1|s_pulsedOut~4_combout\) # (!\inst1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(5),
	datab => \inst1|s_debounceCnt\(0),
	datac => \inst1|s_pulsedOut~5_combout\,
	datad => \inst1|s_pulsedOut~4_combout\,
	combout => \inst1|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X106_Y26_N4
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (\inst1|s_debounceCnt\(8) & (\inst1|s_debounceCnt\(19) & (\inst1|s_debounceCnt\(14) & \inst1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datab => \inst1|s_debounceCnt\(19),
	datac => \inst1|s_debounceCnt\(14),
	datad => \inst1|s_debounceCnt\(18),
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X106_Y26_N22
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (\inst1|s_debounceCnt\(9) & (\inst1|LessThan0~4_combout\ & \inst1|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(9),
	datac => \inst1|LessThan0~4_combout\,
	datad => \inst1|s_debounceCnt\(11),
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X106_Y26_N8
\inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = (\inst1|s_debounceCnt\(6) & ((\inst1|s_debounceCnt\(5)) # ((\inst1|s_debounceCnt\(0)) # (!\inst1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(6),
	datab => \inst1|s_debounceCnt\(5),
	datac => \inst1|s_debounceCnt\(0),
	datad => \inst1|s_pulsedOut~5_combout\,
	combout => \inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X106_Y26_N6
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|s_debounceCnt\(13)) # ((\inst1|s_debounceCnt\(12)) # ((\inst1|s_debounceCnt\(10) & \inst1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(10),
	datab => \inst1|s_debounceCnt\(13),
	datac => \inst1|s_debounceCnt\(12),
	datad => \inst1|s_debounceCnt\(11),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X106_Y26_N12
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|s_debounceCnt\(16)) # ((\inst1|s_debounceCnt\(15)) # ((\inst1|s_debounceCnt\(14) & \inst1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(16),
	datab => \inst1|s_debounceCnt\(14),
	datac => \inst1|s_debounceCnt\(15),
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y26_N2
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|s_debounceCnt\(18) & ((\inst1|s_debounceCnt\(17)) # (\inst1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datab => \inst1|s_debounceCnt\(18),
	datac => \inst1|s_debounceCnt\(17),
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y26_N30
\inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_combout\ = (\inst1|LessThan0~3_combout\) # ((\inst1|LessThan0~5_combout\ & ((\inst1|s_debounceCnt\(7)) # (\inst1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~5_combout\,
	datab => \inst1|s_debounceCnt\(7),
	datac => \inst1|LessThan0~6_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|LessThan0~7_combout\);

-- Location: LCCOMB_X107_Y26_N24
\inst1|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~24_combout\ = (\inst1|s_debounceCnt\(22) & (\inst1|LessThan0~0_combout\ & ((!\inst1|LessThan0~7_combout\)))) # (!\inst1|s_debounceCnt\(22) & (((\inst1|s_debounceCnt[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|s_debounceCnt[18]~2_combout\,
	datac => \inst1|s_debounceCnt\(22),
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X107_Y26_N26
\inst1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~25_combout\ = (\inst1|s_dirtyIn~q\ & \inst1|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|s_debounceCnt[22]~24_combout\,
	combout => \inst1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X108_Y26_N22
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = \inst1|Add0~43\ $ (\inst1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_debounceCnt\(22),
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\);

-- Location: LCCOMB_X107_Y26_N2
\inst1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~26_combout\ = (\inst1|s_previousIn~q\ & (((\inst1|s_debounceCnt[22]~25_combout\ & \inst1|Add0~44_combout\)))) # (!\inst1|s_previousIn~q\ & (\inst1|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[22]~25_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X107_Y26_N3
\inst1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y26_N4
\inst1|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~3_combout\ = ((\inst1|s_debounceCnt\(22)) # ((\inst1|s_debounceCnt[18]~2_combout\) # (!\inst1|s_previousIn~q\))) # (!\inst1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[18]~2_combout\,
	combout => \inst1|s_debounceCnt[18]~3_combout\);

-- Location: LCCOMB_X109_Y26_N4
\inst1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[20]~9_combout\ = (\inst1|s_previousIn~q\ & (\inst1|s_debounceCnt[18]~3_combout\ & (\inst1|s_debounceCnt[18]~0_combout\ & \inst1|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[18]~3_combout\,
	datac => \inst1|s_debounceCnt[18]~0_combout\,
	datad => \inst1|Add0~40_combout\,
	combout => \inst1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X109_Y26_N5
\inst1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(20));

-- Location: LCCOMB_X109_Y26_N2
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|s_debounceCnt\(20) & !\inst1|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt\(20),
	datad => \inst1|s_debounceCnt\(21),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y26_N10
\inst1|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~0_combout\ = (\inst1|s_dirtyIn~q\ & (((\inst1|LessThan0~0_combout\ & !\inst1|LessThan0~7_combout\)) # (!\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|LessThan0~7_combout\,
	combout => \inst1|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X107_Y26_N12
\inst1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~27_combout\ = (\inst1|s_debounceCnt[18]~0_combout\ & (\inst1|s_previousIn~q\ & \inst1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[18]~0_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|s_debounceCnt~27_combout\);

-- Location: FF_X107_Y26_N13
\inst1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~27_combout\,
	ena => \inst1|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(5));

-- Location: LCCOMB_X106_Y26_N28
\inst1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~6_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_debounceCnt\(0) & (!\inst1|s_debounceCnt\(22) & \inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt\(0),
	datac => \inst1|s_debounceCnt\(22),
	datad => \inst1|s_previousIn~q\,
	combout => \inst1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X107_Y27_N8
\inst1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~7_combout\ = (!\inst1|s_debounceCnt\(5) & (\inst1|s_pulsedOut~5_combout\ & (\inst1|s_pulsedOut~4_combout\ & \inst1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(5),
	datab => \inst1|s_pulsedOut~5_combout\,
	datac => \inst1|s_pulsedOut~4_combout\,
	datad => \inst1|s_pulsedOut~6_combout\,
	combout => \inst1|s_pulsedOut~7_combout\);

-- Location: FF_X107_Y27_N9
\inst1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_pulsedOut~q\);

-- Location: LCCOMB_X113_Y28_N10
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|s_debounceCnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

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

-- Location: FF_X114_Y27_N25
\inst|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dirtyIn~q\);

-- Location: FF_X111_Y27_N31
\inst|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_previousIn~q\);

-- Location: LCCOMB_X113_Y28_N18
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|s_debounceCnt\(4) & ((GND) # (!\inst|Add0~7\))) # (!\inst|s_debounceCnt\(4) & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((\inst|s_debounceCnt\(4)) # (!\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X113_Y28_N20
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|s_debounceCnt\(5) & (\inst|Add0~9\ & VCC)) # (!\inst|s_debounceCnt\(5) & (!\inst|Add0~9\))
-- \inst|Add0~11\ = CARRY((!\inst|s_debounceCnt\(5) & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X111_Y27_N0
\inst|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~27_combout\ = (\inst|Add0~10_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~10_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~27_combout\);

-- Location: FF_X111_Y27_N1
\inst|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~27_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(5));

-- Location: LCCOMB_X113_Y28_N22
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|s_debounceCnt\(6) & ((GND) # (!\inst|Add0~11\))) # (!\inst|s_debounceCnt\(6) & (\inst|Add0~11\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\inst|s_debounceCnt\(6)) # (!\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X112_Y28_N28
\inst|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~1_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & ((\inst|Add0~12_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datac => \inst|s_previousIn~q\,
	datad => \inst|s_debounceCnt[20]~0_combout\,
	combout => \inst|s_debounceCnt~1_combout\);

-- Location: FF_X112_Y28_N29
\inst|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~1_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(6));

-- Location: LCCOMB_X113_Y28_N24
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|s_debounceCnt\(7) & (\inst|Add0~13\ & VCC)) # (!\inst|s_debounceCnt\(7) & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\inst|s_debounceCnt\(7) & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X112_Y27_N0
\inst|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~12_combout\ = (\inst|Add0~14_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~14_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~12_combout\);

-- Location: FF_X112_Y27_N1
\inst|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~12_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(7));

-- Location: LCCOMB_X113_Y28_N26
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|s_debounceCnt\(8) & ((GND) # (!\inst|Add0~15\))) # (!\inst|s_debounceCnt\(8) & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\inst|s_debounceCnt\(8)) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X112_Y27_N6
\inst|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~13_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & ((\inst|Add0~16_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|Add0~16_combout\,
	datad => \inst|s_debounceCnt[20]~0_combout\,
	combout => \inst|s_debounceCnt~13_combout\);

-- Location: FF_X112_Y27_N7
\inst|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~13_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(8));

-- Location: LCCOMB_X113_Y28_N28
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|s_debounceCnt\(9) & (\inst|Add0~17\ & VCC)) # (!\inst|s_debounceCnt\(9) & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\inst|s_debounceCnt\(9) & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X112_Y27_N12
\inst|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~14_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & ((\inst|Add0~18_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_previousIn~q\,
	datac => \inst|Add0~18_combout\,
	datad => \inst|s_debounceCnt[20]~0_combout\,
	combout => \inst|s_debounceCnt~14_combout\);

-- Location: FF_X112_Y27_N13
\inst|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~14_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(9));

-- Location: LCCOMB_X113_Y28_N30
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|s_debounceCnt\(10) & ((GND) # (!\inst|Add0~19\))) # (!\inst|s_debounceCnt\(10) & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\inst|s_debounceCnt\(10)) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X112_Y27_N30
\inst|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~15_combout\ = (\inst|Add0~20_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~20_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~15_combout\);

-- Location: FF_X112_Y27_N31
\inst|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~15_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(10));

-- Location: LCCOMB_X113_Y27_N0
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|s_debounceCnt\(11) & (\inst|Add0~21\ & VCC)) # (!\inst|s_debounceCnt\(11) & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\inst|s_debounceCnt\(11) & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X111_Y27_N24
\inst|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~16_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & ((\inst|Add0~22_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_previousIn~q\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|s_debounceCnt[20]~0_combout\,
	combout => \inst|s_debounceCnt~16_combout\);

-- Location: FF_X111_Y27_N25
\inst|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~16_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(11));

-- Location: LCCOMB_X113_Y27_N2
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|s_debounceCnt\(12) & ((GND) # (!\inst|Add0~23\))) # (!\inst|s_debounceCnt\(12) & (\inst|Add0~23\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\inst|s_debounceCnt\(12)) # (!\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X111_Y27_N26
\inst|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~8_combout\ = (\inst|Add0~24_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~24_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~8_combout\);

-- Location: FF_X111_Y27_N27
\inst|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~8_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(12));

-- Location: LCCOMB_X113_Y27_N4
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|s_debounceCnt\(13) & (\inst|Add0~25\ & VCC)) # (!\inst|s_debounceCnt\(13) & (!\inst|Add0~25\))
-- \inst|Add0~27\ = CARRY((!\inst|s_debounceCnt\(13) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X113_Y27_N28
\inst|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~9_combout\ = (\inst|Add0~26_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~26_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~9_combout\);

-- Location: FF_X113_Y27_N29
\inst|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~9_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(13));

-- Location: LCCOMB_X113_Y27_N6
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|s_debounceCnt\(14) & ((GND) # (!\inst|Add0~27\))) # (!\inst|s_debounceCnt\(14) & (\inst|Add0~27\ $ (GND)))
-- \inst|Add0~29\ = CARRY((\inst|s_debounceCnt\(14)) # (!\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X111_Y27_N18
\inst|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~17_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & ((\inst|Add0~28_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_previousIn~q\,
	datac => \inst|Add0~28_combout\,
	datad => \inst|s_debounceCnt[20]~0_combout\,
	combout => \inst|s_debounceCnt~17_combout\);

-- Location: FF_X111_Y27_N19
\inst|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~17_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(14));

-- Location: LCCOMB_X113_Y27_N8
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|s_debounceCnt\(15) & (\inst|Add0~29\ & VCC)) # (!\inst|s_debounceCnt\(15) & (!\inst|Add0~29\))
-- \inst|Add0~31\ = CARRY((!\inst|s_debounceCnt\(15) & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X113_Y27_N24
\inst|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~5_combout\ = (\inst|Add0~30_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~30_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~5_combout\);

-- Location: FF_X113_Y27_N25
\inst|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~5_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(15));

-- Location: LCCOMB_X113_Y27_N10
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|s_debounceCnt\(16) & ((GND) # (!\inst|Add0~31\))) # (!\inst|s_debounceCnt\(16) & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\inst|s_debounceCnt\(16)) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X113_Y27_N26
\inst|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~6_combout\ = (\inst|Add0~32_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~32_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~6_combout\);

-- Location: FF_X113_Y27_N27
\inst|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~6_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(16));

-- Location: LCCOMB_X113_Y27_N12
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|s_debounceCnt\(17) & (\inst|Add0~33\ & VCC)) # (!\inst|s_debounceCnt\(17) & (!\inst|Add0~33\))
-- \inst|Add0~35\ = CARRY((!\inst|s_debounceCnt\(17) & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X112_Y27_N8
\inst|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~7_combout\ = (\inst|Add0~34_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~34_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~7_combout\);

-- Location: FF_X112_Y27_N9
\inst|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~7_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(17));

-- Location: LCCOMB_X113_Y27_N14
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|s_debounceCnt\(18) & ((GND) # (!\inst|Add0~35\))) # (!\inst|s_debounceCnt\(18) & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|s_debounceCnt\(18)) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X111_Y27_N8
\inst|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[18]~18_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & (\inst|s_debounceCnt[20]~3_combout\ & ((\inst|Add0~36_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[20]~0_combout\,
	datac => \inst|s_debounceCnt[20]~3_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|s_debounceCnt[18]~18_combout\);

-- Location: FF_X111_Y27_N9
\inst|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(18));

-- Location: LCCOMB_X113_Y27_N16
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|s_debounceCnt\(19) & (\inst|Add0~37\ & VCC)) # (!\inst|s_debounceCnt\(19) & (!\inst|Add0~37\))
-- \inst|Add0~39\ = CARRY((!\inst|s_debounceCnt\(19) & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X111_Y27_N22
\inst|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[19]~19_combout\ = (\inst|s_debounceCnt[20]~0_combout\ & (\inst|s_debounceCnt[20]~3_combout\ & ((\inst|Add0~38_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[20]~0_combout\,
	datac => \inst|s_debounceCnt[20]~3_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|s_debounceCnt[19]~19_combout\);

-- Location: FF_X111_Y27_N23
\inst|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(19));

-- Location: LCCOMB_X111_Y27_N12
\inst|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~3_combout\ = (!\inst|s_debounceCnt\(19) & (!\inst|s_debounceCnt\(14) & (!\inst|s_debounceCnt\(18) & !\inst|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(19),
	datab => \inst|s_debounceCnt\(14),
	datac => \inst|s_debounceCnt\(18),
	datad => \inst|s_debounceCnt\(11),
	combout => \inst|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X112_Y27_N4
\inst|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~2_combout\ = (!\inst|s_debounceCnt\(8) & (!\inst|s_debounceCnt\(7) & (!\inst|s_debounceCnt\(10) & !\inst|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(8),
	datab => \inst|s_debounceCnt\(7),
	datac => \inst|s_debounceCnt\(10),
	datad => \inst|s_debounceCnt\(9),
	combout => \inst|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X113_Y27_N18
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|s_debounceCnt\(20) & ((GND) # (!\inst|Add0~39\))) # (!\inst|s_debounceCnt\(20) & (\inst|Add0~39\ $ (GND)))
-- \inst|Add0~41\ = CARRY((\inst|s_debounceCnt\(20)) # (!\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X113_Y27_N20
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|s_debounceCnt\(21) & (\inst|Add0~41\ & VCC)) # (!\inst|s_debounceCnt\(21) & (!\inst|Add0~41\))
-- \inst|Add0~43\ = CARRY((!\inst|s_debounceCnt\(21) & !\inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X113_Y27_N30
\inst|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[21]~11_combout\ = (\inst|s_debounceCnt[20]~3_combout\ & (\inst|s_debounceCnt[20]~4_combout\ & \inst|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt[20]~3_combout\,
	datac => \inst|s_debounceCnt[20]~4_combout\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|s_debounceCnt[21]~11_combout\);

-- Location: FF_X113_Y27_N31
\inst|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(21));

-- Location: LCCOMB_X112_Y27_N26
\inst|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~1_combout\ = (!\inst|s_debounceCnt\(12) & (!\inst|s_debounceCnt\(20) & (!\inst|s_debounceCnt\(21) & !\inst|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(12),
	datab => \inst|s_debounceCnt\(20),
	datac => \inst|s_debounceCnt\(21),
	datad => \inst|s_debounceCnt\(13),
	combout => \inst|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X112_Y27_N18
\inst|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~0_combout\ = (!\inst|s_debounceCnt\(17) & (!\inst|s_debounceCnt\(16) & (!\inst|s_debounceCnt\(15) & !\inst|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datab => \inst|s_debounceCnt\(16),
	datac => \inst|s_debounceCnt\(15),
	datad => \inst|s_debounceCnt\(6),
	combout => \inst|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X112_Y27_N22
\inst|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~4_combout\ = (\inst|s_pulsedOut~3_combout\ & (\inst|s_pulsedOut~2_combout\ & (\inst|s_pulsedOut~1_combout\ & \inst|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~3_combout\,
	datab => \inst|s_pulsedOut~2_combout\,
	datac => \inst|s_pulsedOut~1_combout\,
	datad => \inst|s_pulsedOut~0_combout\,
	combout => \inst|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X112_Y27_N20
\inst|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~2_combout\ = (\inst|s_debounceCnt\(5)) # ((\inst|s_debounceCnt\(0)) # ((!\inst|s_pulsedOut~5_combout\) # (!\inst|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(5),
	datab => \inst|s_debounceCnt\(0),
	datac => \inst|s_pulsedOut~4_combout\,
	datad => \inst|s_pulsedOut~5_combout\,
	combout => \inst|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X112_Y27_N10
\inst|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~3_combout\ = (\inst|s_debounceCnt\(22)) # (((\inst|s_debounceCnt[20]~2_combout\) # (!\inst|s_dirtyIn~q\)) # (!\inst|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(22),
	datab => \inst|s_previousIn~q\,
	datac => \inst|s_dirtyIn~q\,
	datad => \inst|s_debounceCnt[20]~2_combout\,
	combout => \inst|s_debounceCnt[20]~3_combout\);

-- Location: LCCOMB_X112_Y27_N16
\inst|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~10_combout\ = (\inst|s_debounceCnt[20]~3_combout\ & (\inst|Add0~40_combout\ & \inst|s_debounceCnt[20]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt[20]~3_combout\,
	datab => \inst|Add0~40_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt[20]~10_combout\);

-- Location: FF_X112_Y27_N17
\inst|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(20));

-- Location: LCCOMB_X111_Y27_N16
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|s_debounceCnt\(12)) # ((\inst|s_debounceCnt\(13)) # ((\inst|s_debounceCnt\(10) & \inst|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(10),
	datab => \inst|s_debounceCnt\(11),
	datac => \inst|s_debounceCnt\(12),
	datad => \inst|s_debounceCnt\(13),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y27_N6
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|s_debounceCnt\(15)) # ((\inst|s_debounceCnt\(16)) # ((\inst|s_debounceCnt\(14) & \inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(15),
	datab => \inst|s_debounceCnt\(14),
	datac => \inst|s_debounceCnt\(16),
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y27_N4
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|s_debounceCnt\(19) & (\inst|s_debounceCnt\(18) & ((\inst|s_debounceCnt\(17)) # (\inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(19),
	datab => \inst|s_debounceCnt\(18),
	datac => \inst|s_debounceCnt\(17),
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X111_Y27_N14
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|s_debounceCnt\(19) & (\inst|s_debounceCnt\(14) & (\inst|s_debounceCnt\(18) & \inst|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(19),
	datab => \inst|s_debounceCnt\(14),
	datac => \inst|s_debounceCnt\(18),
	datad => \inst|s_debounceCnt\(8),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X112_Y27_N14
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|s_debounceCnt\(9) & \inst|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(9),
	datad => \inst|s_debounceCnt\(11),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y27_N28
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|s_debounceCnt\(6) & ((\inst|s_debounceCnt\(0)) # ((\inst|s_debounceCnt\(5)) # (!\inst|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(6),
	datab => \inst|s_debounceCnt\(0),
	datac => \inst|s_debounceCnt\(5),
	datad => \inst|s_pulsedOut~5_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y27_N2
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~0_combout\ & (\inst|LessThan0~1_combout\ & ((\inst|s_debounceCnt\(7)) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|s_debounceCnt\(7),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X111_Y27_N2
\inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|s_debounceCnt\(20)) # ((\inst|s_debounceCnt\(21)) # ((\inst|LessThan0~6_combout\) # (\inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(20),
	datab => \inst|s_debounceCnt\(21),
	datac => \inst|LessThan0~6_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X111_Y27_N28
\inst|s_debounceCnt[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~0_combout\ = (\inst|s_dirtyIn~q\ & ((!\inst|LessThan0~7_combout\) # (!\inst|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(22),
	datac => \inst|s_dirtyIn~q\,
	datad => \inst|LessThan0~7_combout\,
	combout => \inst|s_debounceCnt[20]~0_combout\);

-- Location: LCCOMB_X114_Y27_N8
\inst|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[22]~25_combout\ = (\inst|s_dirtyIn~q\ & ((\inst|s_debounceCnt\(22) & ((!\inst|LessThan0~7_combout\))) # (!\inst|s_debounceCnt\(22) & (\inst|s_debounceCnt[20]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(22),
	datab => \inst|s_dirtyIn~q\,
	datac => \inst|s_debounceCnt[20]~2_combout\,
	datad => \inst|LessThan0~7_combout\,
	combout => \inst|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X113_Y27_N22
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = \inst|Add0~43\ $ (\inst|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_debounceCnt\(22),
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\);

-- Location: LCCOMB_X114_Y27_N10
\inst|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[22]~26_combout\ = (\inst|s_previousIn~q\ & (((\inst|s_debounceCnt[22]~25_combout\ & \inst|Add0~44_combout\)))) # (!\inst|s_previousIn~q\ & (\inst|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt[20]~0_combout\,
	datab => \inst|s_previousIn~q\,
	datac => \inst|s_debounceCnt[22]~25_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|s_debounceCnt[22]~26_combout\);

-- Location: FF_X114_Y27_N11
\inst|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(22));

-- Location: LCCOMB_X111_Y27_N10
\inst|s_debounceCnt[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~4_combout\ = (\inst|s_previousIn~q\ & (\inst|s_dirtyIn~q\ & ((!\inst|LessThan0~7_combout\) # (!\inst|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(22),
	datab => \inst|s_previousIn~q\,
	datac => \inst|s_dirtyIn~q\,
	datad => \inst|LessThan0~7_combout\,
	combout => \inst|s_debounceCnt[20]~4_combout\);

-- Location: LCCOMB_X112_Y27_N24
\inst|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~24_combout\ = (\inst|Add0~0_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~0_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~24_combout\);

-- Location: FF_X112_Y27_N25
\inst|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~24_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(0));

-- Location: LCCOMB_X113_Y28_N12
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|s_debounceCnt\(1) & (\inst|Add0~1\ & VCC)) # (!\inst|s_debounceCnt\(1) & (!\inst|Add0~1\))
-- \inst|Add0~3\ = CARRY((!\inst|s_debounceCnt\(1) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X113_Y28_N4
\inst|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~20_combout\ = (\inst|Add0~2_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~20_combout\);

-- Location: FF_X113_Y28_N5
\inst|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~20_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(1));

-- Location: LCCOMB_X113_Y28_N14
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|s_debounceCnt\(2) & ((GND) # (!\inst|Add0~3\))) # (!\inst|s_debounceCnt\(2) & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((\inst|s_debounceCnt\(2)) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X113_Y28_N2
\inst|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~21_combout\ = (\inst|Add0~4_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~4_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~21_combout\);

-- Location: FF_X113_Y28_N3
\inst|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~21_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(2));

-- Location: LCCOMB_X113_Y28_N16
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|s_debounceCnt\(3) & (\inst|Add0~5\ & VCC)) # (!\inst|s_debounceCnt\(3) & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((!\inst|s_debounceCnt\(3) & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X113_Y28_N8
\inst|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~22_combout\ = (\inst|Add0~6_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~6_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~22_combout\);

-- Location: FF_X113_Y28_N9
\inst|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~22_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(3));

-- Location: LCCOMB_X113_Y28_N6
\inst|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~23_combout\ = (\inst|Add0~8_combout\ & \inst|s_debounceCnt[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~8_combout\,
	datad => \inst|s_debounceCnt[20]~4_combout\,
	combout => \inst|s_debounceCnt~23_combout\);

-- Location: FF_X113_Y28_N7
\inst|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~23_combout\,
	ena => \inst|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(4));

-- Location: LCCOMB_X113_Y28_N0
\inst|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~5_combout\ = (!\inst|s_debounceCnt\(4) & (!\inst|s_debounceCnt\(1) & (!\inst|s_debounceCnt\(3) & !\inst|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(4),
	datab => \inst|s_debounceCnt\(1),
	datac => \inst|s_debounceCnt\(3),
	datad => \inst|s_debounceCnt\(2),
	combout => \inst|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X111_Y27_N30
\inst|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~6_combout\ = (\inst|s_dirtyIn~q\ & (\inst|s_debounceCnt\(0) & (\inst|s_previousIn~q\ & !\inst|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dirtyIn~q\,
	datab => \inst|s_debounceCnt\(0),
	datac => \inst|s_previousIn~q\,
	datad => \inst|s_debounceCnt\(22),
	combout => \inst|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X111_Y27_N20
\inst|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~7_combout\ = (\inst|s_pulsedOut~5_combout\ & (!\inst|s_debounceCnt\(5) & (\inst|s_pulsedOut~6_combout\ & \inst|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~5_combout\,
	datab => \inst|s_debounceCnt\(5),
	datac => \inst|s_pulsedOut~6_combout\,
	datad => \inst|s_pulsedOut~4_combout\,
	combout => \inst|s_pulsedOut~7_combout\);

-- Location: FF_X111_Y27_N21
\inst|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pulsedOut~q\);

-- Location: LCCOMB_X108_Y47_N26
\inst3|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~17_combout\ = (\KEY[0]~input_o\) # ((!\inst3|s_currentState.ST0~q\ & (!\inst1|s_pulsedOut~q\ & !\inst|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST0~q\,
	datab => \KEY[0]~input_o\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~17_combout\);

-- Location: LCCOMB_X108_Y47_N10
\inst3|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~18_combout\ = (!\inst3|s_currentState.ST5~q\ & !\inst3|s_currentState~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST5~q\,
	datac => \inst3|s_currentState~17_combout\,
	combout => \inst3|s_currentState~18_combout\);

-- Location: FF_X108_Y47_N11
\inst3|s_currentState.ST0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_currentState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_currentState.ST0~q\);

-- Location: LCCOMB_X108_Y47_N12
\inst3|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~16_combout\ = (!\inst3|s_currentState.ST0~q\ & (!\KEY[0]~input_o\ & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST0~q\,
	datac => \KEY[0]~input_o\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~16_combout\);

-- Location: LCCOMB_X108_Y47_N4
\inst3|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~13_combout\ = (\KEY[0]~input_o\) # ((\inst1|s_pulsedOut~q\) # (\inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~13_combout\);

-- Location: FF_X108_Y47_N13
\inst3|s_currentState.ST1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_currentState~16_combout\,
	ena => \inst3|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_currentState.ST1~q\);

-- Location: LCCOMB_X108_Y47_N22
\inst3|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~12_combout\ = (\inst3|s_currentState.ST1~q\ & (!\KEY[0]~input_o\ & \inst|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST1~q\,
	datac => \KEY[0]~input_o\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~12_combout\);

-- Location: FF_X108_Y47_N23
\inst3|s_currentState.ST2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_currentState~12_combout\,
	ena => \inst3|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_currentState.ST2~q\);

-- Location: LCCOMB_X108_Y47_N8
\inst3|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~14_combout\ = (!\inst|s_pulsedOut~q\ & ((\inst1|s_pulsedOut~q\ & (!\inst3|s_currentState.ST0~q\)) # (!\inst1|s_pulsedOut~q\ & ((\inst3|s_currentState.ST3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST0~q\,
	datab => \inst3|s_currentState.ST3~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~14_combout\);

-- Location: LCCOMB_X108_Y47_N28
\inst3|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~15_combout\ = (!\KEY[0]~input_o\ & ((\inst3|s_currentState~14_combout\) # ((\inst3|s_currentState.ST2~q\ & \inst|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST2~q\,
	datab => \KEY[0]~input_o\,
	datac => \inst3|s_currentState~14_combout\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~15_combout\);

-- Location: FF_X108_Y47_N29
\inst3|s_currentState.ST3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_currentState.ST3~q\);

-- Location: LCCOMB_X108_Y47_N18
\inst3|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~10_combout\ = (\inst|s_pulsedOut~q\ & (((\inst3|s_currentState.ST3~q\)))) # (!\inst|s_pulsedOut~q\ & (\inst3|s_currentState.ST1~q\ & ((\inst1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST1~q\,
	datab => \inst3|s_currentState.ST3~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~10_combout\);

-- Location: LCCOMB_X108_Y47_N20
\inst3|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~11_combout\ = (!\KEY[0]~input_o\ & \inst3|s_currentState~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \inst3|s_currentState~10_combout\,
	combout => \inst3|s_currentState~11_combout\);

-- Location: FF_X108_Y47_N21
\inst3|s_currentState.ST4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_currentState.ST4~q\);

-- Location: LCCOMB_X108_Y47_N2
\inst3|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~8_combout\ = (\inst1|s_pulsedOut~q\ & (!\inst|s_pulsedOut~q\ & ((\inst3|s_currentState.ST2~q\) # (\inst3|s_currentState.ST3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_currentState.ST2~q\,
	datab => \inst3|s_currentState.ST3~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|s_pulsedOut~q\,
	combout => \inst3|s_currentState~8_combout\);

-- Location: LCCOMB_X107_Y47_N10
\inst3|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_currentState~9_combout\ = (!\KEY[0]~input_o\ & ((\inst3|s_currentState.ST4~q\) # (\inst3|s_currentState~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst3|s_currentState.ST4~q\,
	datad => \inst3|s_currentState~8_combout\,
	combout => \inst3|s_currentState~9_combout\);

-- Location: FF_X107_Y47_N11
\inst3|s_currentState.ST5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_currentState.ST5~q\);

-- Location: LCCOMB_X107_Y47_N0
\inst11|s_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count~38_combout\ = (\inst11|Equal0~9_combout\ & ((\inst11|s_count\(2)) # (!\inst3|s_currentState.ST5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(2),
	datac => \inst11|Equal0~9_combout\,
	datad => \inst3|s_currentState.ST5~q\,
	combout => \inst11|s_count~38_combout\);

-- Location: FF_X106_Y48_N1
\inst11|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[0]~32_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(0));

-- Location: LCCOMB_X106_Y48_N2
\inst11|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[1]~34_combout\ = (\inst11|s_count\(1) & (!\inst11|s_count[0]~33\)) # (!\inst11|s_count\(1) & ((\inst11|s_count[0]~33\) # (GND)))
-- \inst11|s_count[1]~35\ = CARRY((!\inst11|s_count[0]~33\) # (!\inst11|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(1),
	datad => VCC,
	cin => \inst11|s_count[0]~33\,
	combout => \inst11|s_count[1]~34_combout\,
	cout => \inst11|s_count[1]~35\);

-- Location: FF_X106_Y48_N3
\inst11|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[1]~34_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(1));

-- Location: LCCOMB_X106_Y48_N4
\inst11|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[2]~36_combout\ = (\inst11|s_count\(2) & (\inst11|s_count[1]~35\ $ (GND))) # (!\inst11|s_count\(2) & (!\inst11|s_count[1]~35\ & VCC))
-- \inst11|s_count[2]~37\ = CARRY((\inst11|s_count\(2) & !\inst11|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(2),
	datad => VCC,
	cin => \inst11|s_count[1]~35\,
	combout => \inst11|s_count[2]~36_combout\,
	cout => \inst11|s_count[2]~37\);

-- Location: FF_X106_Y48_N5
\inst11|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[2]~36_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(2));

-- Location: LCCOMB_X106_Y48_N6
\inst11|s_count[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[3]~39_combout\ = (\inst11|s_count\(3) & (!\inst11|s_count[2]~37\)) # (!\inst11|s_count\(3) & ((\inst11|s_count[2]~37\) # (GND)))
-- \inst11|s_count[3]~40\ = CARRY((!\inst11|s_count[2]~37\) # (!\inst11|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(3),
	datad => VCC,
	cin => \inst11|s_count[2]~37\,
	combout => \inst11|s_count[3]~39_combout\,
	cout => \inst11|s_count[3]~40\);

-- Location: FF_X106_Y48_N7
\inst11|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[3]~39_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(3));

-- Location: LCCOMB_X106_Y48_N8
\inst11|s_count[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[4]~41_combout\ = (\inst11|s_count\(4) & (\inst11|s_count[3]~40\ $ (GND))) # (!\inst11|s_count\(4) & (!\inst11|s_count[3]~40\ & VCC))
-- \inst11|s_count[4]~42\ = CARRY((\inst11|s_count\(4) & !\inst11|s_count[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(4),
	datad => VCC,
	cin => \inst11|s_count[3]~40\,
	combout => \inst11|s_count[4]~41_combout\,
	cout => \inst11|s_count[4]~42\);

-- Location: FF_X106_Y48_N9
\inst11|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[4]~41_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(4));

-- Location: LCCOMB_X106_Y48_N10
\inst11|s_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[5]~43_combout\ = (\inst11|s_count\(5) & (!\inst11|s_count[4]~42\)) # (!\inst11|s_count\(5) & ((\inst11|s_count[4]~42\) # (GND)))
-- \inst11|s_count[5]~44\ = CARRY((!\inst11|s_count[4]~42\) # (!\inst11|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(5),
	datad => VCC,
	cin => \inst11|s_count[4]~42\,
	combout => \inst11|s_count[5]~43_combout\,
	cout => \inst11|s_count[5]~44\);

-- Location: FF_X106_Y48_N11
\inst11|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[5]~43_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(5));

-- Location: LCCOMB_X106_Y48_N12
\inst11|s_count[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[6]~45_combout\ = (\inst11|s_count\(6) & (\inst11|s_count[5]~44\ $ (GND))) # (!\inst11|s_count\(6) & (!\inst11|s_count[5]~44\ & VCC))
-- \inst11|s_count[6]~46\ = CARRY((\inst11|s_count\(6) & !\inst11|s_count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(6),
	datad => VCC,
	cin => \inst11|s_count[5]~44\,
	combout => \inst11|s_count[6]~45_combout\,
	cout => \inst11|s_count[6]~46\);

-- Location: FF_X106_Y48_N13
\inst11|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[6]~45_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(6));

-- Location: LCCOMB_X106_Y48_N14
\inst11|s_count[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[7]~47_combout\ = (\inst11|s_count\(7) & (!\inst11|s_count[6]~46\)) # (!\inst11|s_count\(7) & ((\inst11|s_count[6]~46\) # (GND)))
-- \inst11|s_count[7]~48\ = CARRY((!\inst11|s_count[6]~46\) # (!\inst11|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(7),
	datad => VCC,
	cin => \inst11|s_count[6]~46\,
	combout => \inst11|s_count[7]~47_combout\,
	cout => \inst11|s_count[7]~48\);

-- Location: FF_X106_Y48_N15
\inst11|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[7]~47_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(7));

-- Location: LCCOMB_X106_Y48_N16
\inst11|s_count[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[8]~49_combout\ = (\inst11|s_count\(8) & (\inst11|s_count[7]~48\ $ (GND))) # (!\inst11|s_count\(8) & (!\inst11|s_count[7]~48\ & VCC))
-- \inst11|s_count[8]~50\ = CARRY((\inst11|s_count\(8) & !\inst11|s_count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(8),
	datad => VCC,
	cin => \inst11|s_count[7]~48\,
	combout => \inst11|s_count[8]~49_combout\,
	cout => \inst11|s_count[8]~50\);

-- Location: FF_X106_Y48_N17
\inst11|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[8]~49_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(8));

-- Location: LCCOMB_X106_Y48_N18
\inst11|s_count[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[9]~51_combout\ = (\inst11|s_count\(9) & (!\inst11|s_count[8]~50\)) # (!\inst11|s_count\(9) & ((\inst11|s_count[8]~50\) # (GND)))
-- \inst11|s_count[9]~52\ = CARRY((!\inst11|s_count[8]~50\) # (!\inst11|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(9),
	datad => VCC,
	cin => \inst11|s_count[8]~50\,
	combout => \inst11|s_count[9]~51_combout\,
	cout => \inst11|s_count[9]~52\);

-- Location: FF_X106_Y48_N19
\inst11|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[9]~51_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(9));

-- Location: LCCOMB_X106_Y48_N20
\inst11|s_count[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[10]~53_combout\ = (\inst11|s_count\(10) & (\inst11|s_count[9]~52\ $ (GND))) # (!\inst11|s_count\(10) & (!\inst11|s_count[9]~52\ & VCC))
-- \inst11|s_count[10]~54\ = CARRY((\inst11|s_count\(10) & !\inst11|s_count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(10),
	datad => VCC,
	cin => \inst11|s_count[9]~52\,
	combout => \inst11|s_count[10]~53_combout\,
	cout => \inst11|s_count[10]~54\);

-- Location: FF_X106_Y48_N21
\inst11|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[10]~53_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(10));

-- Location: LCCOMB_X106_Y48_N22
\inst11|s_count[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[11]~55_combout\ = (\inst11|s_count\(11) & (!\inst11|s_count[10]~54\)) # (!\inst11|s_count\(11) & ((\inst11|s_count[10]~54\) # (GND)))
-- \inst11|s_count[11]~56\ = CARRY((!\inst11|s_count[10]~54\) # (!\inst11|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(11),
	datad => VCC,
	cin => \inst11|s_count[10]~54\,
	combout => \inst11|s_count[11]~55_combout\,
	cout => \inst11|s_count[11]~56\);

-- Location: FF_X106_Y48_N23
\inst11|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[11]~55_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(11));

-- Location: LCCOMB_X106_Y48_N24
\inst11|s_count[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[12]~57_combout\ = (\inst11|s_count\(12) & (\inst11|s_count[11]~56\ $ (GND))) # (!\inst11|s_count\(12) & (!\inst11|s_count[11]~56\ & VCC))
-- \inst11|s_count[12]~58\ = CARRY((\inst11|s_count\(12) & !\inst11|s_count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(12),
	datad => VCC,
	cin => \inst11|s_count[11]~56\,
	combout => \inst11|s_count[12]~57_combout\,
	cout => \inst11|s_count[12]~58\);

-- Location: FF_X106_Y48_N25
\inst11|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[12]~57_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(12));

-- Location: LCCOMB_X106_Y48_N26
\inst11|s_count[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[13]~59_combout\ = (\inst11|s_count\(13) & (!\inst11|s_count[12]~58\)) # (!\inst11|s_count\(13) & ((\inst11|s_count[12]~58\) # (GND)))
-- \inst11|s_count[13]~60\ = CARRY((!\inst11|s_count[12]~58\) # (!\inst11|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(13),
	datad => VCC,
	cin => \inst11|s_count[12]~58\,
	combout => \inst11|s_count[13]~59_combout\,
	cout => \inst11|s_count[13]~60\);

-- Location: FF_X106_Y48_N27
\inst11|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[13]~59_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(13));

-- Location: LCCOMB_X106_Y48_N28
\inst11|s_count[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[14]~61_combout\ = (\inst11|s_count\(14) & (\inst11|s_count[13]~60\ $ (GND))) # (!\inst11|s_count\(14) & (!\inst11|s_count[13]~60\ & VCC))
-- \inst11|s_count[14]~62\ = CARRY((\inst11|s_count\(14) & !\inst11|s_count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(14),
	datad => VCC,
	cin => \inst11|s_count[13]~60\,
	combout => \inst11|s_count[14]~61_combout\,
	cout => \inst11|s_count[14]~62\);

-- Location: FF_X107_Y47_N9
\inst11|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	asdata => \inst11|s_count[14]~61_combout\,
	sclr => \inst11|s_count~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(14));

-- Location: LCCOMB_X106_Y48_N30
\inst11|s_count[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[15]~63_combout\ = (\inst11|s_count\(15) & (!\inst11|s_count[14]~62\)) # (!\inst11|s_count\(15) & ((\inst11|s_count[14]~62\) # (GND)))
-- \inst11|s_count[15]~64\ = CARRY((!\inst11|s_count[14]~62\) # (!\inst11|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(15),
	datad => VCC,
	cin => \inst11|s_count[14]~62\,
	combout => \inst11|s_count[15]~63_combout\,
	cout => \inst11|s_count[15]~64\);

-- Location: FF_X107_Y47_N3
\inst11|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	asdata => \inst11|s_count[15]~63_combout\,
	sclr => \inst11|s_count~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(15));

-- Location: LCCOMB_X106_Y47_N0
\inst11|s_count[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[16]~65_combout\ = (\inst11|s_count\(16) & (\inst11|s_count[15]~64\ $ (GND))) # (!\inst11|s_count\(16) & (!\inst11|s_count[15]~64\ & VCC))
-- \inst11|s_count[16]~66\ = CARRY((\inst11|s_count\(16) & !\inst11|s_count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(16),
	datad => VCC,
	cin => \inst11|s_count[15]~64\,
	combout => \inst11|s_count[16]~65_combout\,
	cout => \inst11|s_count[16]~66\);

-- Location: FF_X106_Y47_N1
\inst11|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[16]~65_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(16));

-- Location: LCCOMB_X106_Y47_N2
\inst11|s_count[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[17]~67_combout\ = (\inst11|s_count\(17) & (!\inst11|s_count[16]~66\)) # (!\inst11|s_count\(17) & ((\inst11|s_count[16]~66\) # (GND)))
-- \inst11|s_count[17]~68\ = CARRY((!\inst11|s_count[16]~66\) # (!\inst11|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(17),
	datad => VCC,
	cin => \inst11|s_count[16]~66\,
	combout => \inst11|s_count[17]~67_combout\,
	cout => \inst11|s_count[17]~68\);

-- Location: FF_X106_Y47_N3
\inst11|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[17]~67_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(17));

-- Location: LCCOMB_X106_Y47_N4
\inst11|s_count[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[18]~69_combout\ = (\inst11|s_count\(18) & (\inst11|s_count[17]~68\ $ (GND))) # (!\inst11|s_count\(18) & (!\inst11|s_count[17]~68\ & VCC))
-- \inst11|s_count[18]~70\ = CARRY((\inst11|s_count\(18) & !\inst11|s_count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(18),
	datad => VCC,
	cin => \inst11|s_count[17]~68\,
	combout => \inst11|s_count[18]~69_combout\,
	cout => \inst11|s_count[18]~70\);

-- Location: FF_X106_Y47_N5
\inst11|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[18]~69_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(18));

-- Location: LCCOMB_X106_Y47_N6
\inst11|s_count[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[19]~71_combout\ = (\inst11|s_count\(19) & (!\inst11|s_count[18]~70\)) # (!\inst11|s_count\(19) & ((\inst11|s_count[18]~70\) # (GND)))
-- \inst11|s_count[19]~72\ = CARRY((!\inst11|s_count[18]~70\) # (!\inst11|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(19),
	datad => VCC,
	cin => \inst11|s_count[18]~70\,
	combout => \inst11|s_count[19]~71_combout\,
	cout => \inst11|s_count[19]~72\);

-- Location: FF_X106_Y47_N7
\inst11|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[19]~71_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(19));

-- Location: LCCOMB_X106_Y47_N8
\inst11|s_count[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[20]~73_combout\ = (\inst11|s_count\(20) & (\inst11|s_count[19]~72\ $ (GND))) # (!\inst11|s_count\(20) & (!\inst11|s_count[19]~72\ & VCC))
-- \inst11|s_count[20]~74\ = CARRY((\inst11|s_count\(20) & !\inst11|s_count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(20),
	datad => VCC,
	cin => \inst11|s_count[19]~72\,
	combout => \inst11|s_count[20]~73_combout\,
	cout => \inst11|s_count[20]~74\);

-- Location: FF_X106_Y47_N9
\inst11|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[20]~73_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(20));

-- Location: LCCOMB_X106_Y47_N10
\inst11|s_count[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[21]~75_combout\ = (\inst11|s_count\(21) & (!\inst11|s_count[20]~74\)) # (!\inst11|s_count\(21) & ((\inst11|s_count[20]~74\) # (GND)))
-- \inst11|s_count[21]~76\ = CARRY((!\inst11|s_count[20]~74\) # (!\inst11|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(21),
	datad => VCC,
	cin => \inst11|s_count[20]~74\,
	combout => \inst11|s_count[21]~75_combout\,
	cout => \inst11|s_count[21]~76\);

-- Location: FF_X106_Y47_N11
\inst11|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[21]~75_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(21));

-- Location: LCCOMB_X106_Y47_N12
\inst11|s_count[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[22]~77_combout\ = (\inst11|s_count\(22) & (\inst11|s_count[21]~76\ $ (GND))) # (!\inst11|s_count\(22) & (!\inst11|s_count[21]~76\ & VCC))
-- \inst11|s_count[22]~78\ = CARRY((\inst11|s_count\(22) & !\inst11|s_count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(22),
	datad => VCC,
	cin => \inst11|s_count[21]~76\,
	combout => \inst11|s_count[22]~77_combout\,
	cout => \inst11|s_count[22]~78\);

-- Location: FF_X106_Y47_N13
\inst11|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[22]~77_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(22));

-- Location: LCCOMB_X106_Y47_N14
\inst11|s_count[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[23]~79_combout\ = (\inst11|s_count\(23) & (!\inst11|s_count[22]~78\)) # (!\inst11|s_count\(23) & ((\inst11|s_count[22]~78\) # (GND)))
-- \inst11|s_count[23]~80\ = CARRY((!\inst11|s_count[22]~78\) # (!\inst11|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(23),
	datad => VCC,
	cin => \inst11|s_count[22]~78\,
	combout => \inst11|s_count[23]~79_combout\,
	cout => \inst11|s_count[23]~80\);

-- Location: FF_X106_Y47_N15
\inst11|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[23]~79_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(23));

-- Location: LCCOMB_X106_Y47_N16
\inst11|s_count[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[24]~81_combout\ = (\inst11|s_count\(24) & (\inst11|s_count[23]~80\ $ (GND))) # (!\inst11|s_count\(24) & (!\inst11|s_count[23]~80\ & VCC))
-- \inst11|s_count[24]~82\ = CARRY((\inst11|s_count\(24) & !\inst11|s_count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(24),
	datad => VCC,
	cin => \inst11|s_count[23]~80\,
	combout => \inst11|s_count[24]~81_combout\,
	cout => \inst11|s_count[24]~82\);

-- Location: FF_X106_Y47_N17
\inst11|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[24]~81_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(24));

-- Location: LCCOMB_X107_Y47_N30
\inst11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (!\inst11|s_count\(22) & (!\inst11|s_count\(23) & (!\inst11|s_count\(24) & !\inst11|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(22),
	datab => \inst11|s_count\(23),
	datac => \inst11|s_count\(24),
	datad => \inst11|s_count\(21),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X107_Y47_N28
\inst11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (!\inst11|s_count\(18) & (!\inst11|s_count\(20) & (!\inst11|s_count\(19) & !\inst11|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(18),
	datab => \inst11|s_count\(20),
	datac => \inst11|s_count\(19),
	datad => \inst11|s_count\(17),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCCOMB_X106_Y47_N18
\inst11|s_count[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[25]~83_combout\ = (\inst11|s_count\(25) & (!\inst11|s_count[24]~82\)) # (!\inst11|s_count\(25) & ((\inst11|s_count[24]~82\) # (GND)))
-- \inst11|s_count[25]~84\ = CARRY((!\inst11|s_count[24]~82\) # (!\inst11|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(25),
	datad => VCC,
	cin => \inst11|s_count[24]~82\,
	combout => \inst11|s_count[25]~83_combout\,
	cout => \inst11|s_count[25]~84\);

-- Location: FF_X106_Y47_N19
\inst11|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[25]~83_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(25));

-- Location: LCCOMB_X106_Y47_N20
\inst11|s_count[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[26]~85_combout\ = (\inst11|s_count\(26) & (\inst11|s_count[25]~84\ $ (GND))) # (!\inst11|s_count\(26) & (!\inst11|s_count[25]~84\ & VCC))
-- \inst11|s_count[26]~86\ = CARRY((\inst11|s_count\(26) & !\inst11|s_count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(26),
	datad => VCC,
	cin => \inst11|s_count[25]~84\,
	combout => \inst11|s_count[26]~85_combout\,
	cout => \inst11|s_count[26]~86\);

-- Location: FF_X106_Y47_N21
\inst11|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[26]~85_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(26));

-- Location: LCCOMB_X106_Y47_N22
\inst11|s_count[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[27]~87_combout\ = (\inst11|s_count\(27) & (!\inst11|s_count[26]~86\)) # (!\inst11|s_count\(27) & ((\inst11|s_count[26]~86\) # (GND)))
-- \inst11|s_count[27]~88\ = CARRY((!\inst11|s_count[26]~86\) # (!\inst11|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(27),
	datad => VCC,
	cin => \inst11|s_count[26]~86\,
	combout => \inst11|s_count[27]~87_combout\,
	cout => \inst11|s_count[27]~88\);

-- Location: FF_X106_Y47_N23
\inst11|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[27]~87_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(27));

-- Location: LCCOMB_X106_Y47_N24
\inst11|s_count[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[28]~89_combout\ = (\inst11|s_count\(28) & (\inst11|s_count[27]~88\ $ (GND))) # (!\inst11|s_count\(28) & (!\inst11|s_count[27]~88\ & VCC))
-- \inst11|s_count[28]~90\ = CARRY((\inst11|s_count\(28) & !\inst11|s_count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(28),
	datad => VCC,
	cin => \inst11|s_count[27]~88\,
	combout => \inst11|s_count[28]~89_combout\,
	cout => \inst11|s_count[28]~90\);

-- Location: FF_X106_Y47_N25
\inst11|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[28]~89_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(28));

-- Location: LCCOMB_X107_Y47_N12
\inst11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = (!\inst11|s_count\(25) & (!\inst11|s_count\(26) & (!\inst11|s_count\(28) & !\inst11|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(25),
	datab => \inst11|s_count\(26),
	datac => \inst11|s_count\(28),
	datad => \inst11|s_count\(27),
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y47_N26
\inst11|s_count[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[29]~91_combout\ = (\inst11|s_count\(29) & (!\inst11|s_count[28]~90\)) # (!\inst11|s_count\(29) & ((\inst11|s_count[28]~90\) # (GND)))
-- \inst11|s_count[29]~92\ = CARRY((!\inst11|s_count[28]~90\) # (!\inst11|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(29),
	datad => VCC,
	cin => \inst11|s_count[28]~90\,
	combout => \inst11|s_count[29]~91_combout\,
	cout => \inst11|s_count[29]~92\);

-- Location: FF_X106_Y47_N27
\inst11|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[29]~91_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(29));

-- Location: LCCOMB_X106_Y47_N28
\inst11|s_count[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[30]~93_combout\ = (\inst11|s_count\(30) & (\inst11|s_count[29]~92\ $ (GND))) # (!\inst11|s_count\(30) & (!\inst11|s_count[29]~92\ & VCC))
-- \inst11|s_count[30]~94\ = CARRY((\inst11|s_count\(30) & !\inst11|s_count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_count\(30),
	datad => VCC,
	cin => \inst11|s_count[29]~92\,
	combout => \inst11|s_count[30]~93_combout\,
	cout => \inst11|s_count[30]~94\);

-- Location: FF_X106_Y47_N29
\inst11|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[30]~93_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(30));

-- Location: LCCOMB_X106_Y47_N30
\inst11|s_count[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_count[31]~95_combout\ = \inst11|s_count\(31) $ (\inst11|s_count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(31),
	cin => \inst11|s_count[30]~94\,
	combout => \inst11|s_count[31]~95_combout\);

-- Location: FF_X106_Y47_N31
\inst11|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|s_count[31]~95_combout\,
	sclr => \inst11|s_count~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_count\(31));

-- Location: LCCOMB_X107_Y47_N14
\inst11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~8_combout\ = (\inst11|Equal0~7_combout\ & (!\inst11|s_count\(30) & (!\inst11|s_count\(29) & !\inst11|s_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~7_combout\,
	datab => \inst11|s_count\(30),
	datac => \inst11|s_count\(29),
	datad => \inst11|s_count\(31),
	combout => \inst11|Equal0~8_combout\);

-- Location: LCCOMB_X107_Y47_N26
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst11|s_count\(3) & (!\inst11|s_count\(4) & (!\inst11|s_count\(0) & !\inst11|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(3),
	datab => \inst11|s_count\(4),
	datac => \inst11|s_count\(0),
	datad => \inst11|s_count\(1),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X107_Y47_N24
\inst11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (!\inst11|s_count\(16) & (!\inst11|s_count\(15) & (!\inst11|s_count\(14) & !\inst11|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(16),
	datab => \inst11|s_count\(15),
	datac => \inst11|s_count\(14),
	datad => \inst11|s_count\(13),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X107_Y47_N22
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (!\inst11|s_count\(12) & (!\inst11|s_count\(10) & (!\inst11|s_count\(9) & !\inst11|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(12),
	datab => \inst11|s_count\(10),
	datac => \inst11|s_count\(9),
	datad => \inst11|s_count\(11),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCCOMB_X107_Y47_N16
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (!\inst11|s_count\(7) & (!\inst11|s_count\(8) & (!\inst11|s_count\(5) & !\inst11|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_count\(7),
	datab => \inst11|s_count\(8),
	datac => \inst11|s_count\(5),
	datad => \inst11|s_count\(6),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y47_N18
\inst11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~0_combout\ & (\inst11|Equal0~3_combout\ & (\inst11|Equal0~2_combout\ & \inst11|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst11|Equal0~3_combout\,
	datac => \inst11|Equal0~2_combout\,
	datad => \inst11|Equal0~1_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCCOMB_X107_Y47_N4
\inst11|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~9_combout\ = (\inst11|Equal0~6_combout\ & (\inst11|Equal0~5_combout\ & (\inst11|Equal0~8_combout\ & \inst11|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~6_combout\,
	datab => \inst11|Equal0~5_combout\,
	datac => \inst11|Equal0~8_combout\,
	datad => \inst11|Equal0~4_combout\,
	combout => \inst11|Equal0~9_combout\);

-- Location: LCCOMB_X107_Y47_N20
\inst11|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~0_combout\ = (\inst11|Equal0~9_combout\ & \inst11|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Equal0~9_combout\,
	datad => \inst11|s_count\(2),
	combout => \inst11|Equal1~0_combout\);

-- Location: FF_X107_Y47_N21
\inst11|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst11|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|timerOut~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


