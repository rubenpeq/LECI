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

-- DATE "06/07/2022 14:19:33"

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

ENTITY 	RAM_1P_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW17 : IN std_logic;
	SW3 : IN std_logic;
	SW2 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic;
	SW11 : IN std_logic;
	SW10 : IN std_logic;
	SW9 : IN std_logic;
	SW8 : IN std_logic;
	SW7 : IN std_logic;
	SW6 : IN std_logic;
	SW5 : IN std_logic;
	SW4 : IN std_logic
	);
END RAM_1P_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW11	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW10	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW9	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW8	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW7	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW6	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW5	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW11 : std_logic;
SIGNAL ww_SW10 : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW11~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst|s_memory~239_combout\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \inst|s_memory~240_combout\ : std_logic;
SIGNAL \inst|s_memory~28_q\ : std_logic;
SIGNAL \inst|s_memory~241_combout\ : std_logic;
SIGNAL \inst|s_memory~242_combout\ : std_logic;
SIGNAL \inst|s_memory~20_q\ : std_logic;
SIGNAL \inst|s_memory~145_combout\ : std_logic;
SIGNAL \inst|s_memory~237_combout\ : std_logic;
SIGNAL \inst|s_memory~238_combout\ : std_logic;
SIGNAL \inst|s_memory~36_q\ : std_logic;
SIGNAL \inst|s_memory~243_combout\ : std_logic;
SIGNAL \inst|s_memory~244_combout\ : std_logic;
SIGNAL \inst|s_memory~44_q\ : std_logic;
SIGNAL \inst|s_memory~146_combout\ : std_logic;
SIGNAL \inst|s_memory~233_combout\ : std_logic;
SIGNAL \inst|s_memory~234_combout\ : std_logic;
SIGNAL \inst|s_memory~52_q\ : std_logic;
SIGNAL \inst|s_memory~231_combout\ : std_logic;
SIGNAL \inst|s_memory~232_combout\ : std_logic;
SIGNAL \inst|s_memory~68_q\ : std_logic;
SIGNAL \inst|s_memory~143_combout\ : std_logic;
SIGNAL \inst|s_memory~235_combout\ : std_logic;
SIGNAL \inst|s_memory~236_combout\ : std_logic;
SIGNAL \inst|s_memory~76_q\ : std_logic;
SIGNAL \inst|s_memory~229_combout\ : std_logic;
SIGNAL \inst|s_memory~230_combout\ : std_logic;
SIGNAL \inst|s_memory~60_q\ : std_logic;
SIGNAL \inst|s_memory~144_combout\ : std_logic;
SIGNAL \inst|s_memory~147_combout\ : std_logic;
SIGNAL \inst|s_memory~223_combout\ : std_logic;
SIGNAL \inst|s_memory~224_combout\ : std_logic;
SIGNAL \inst|s_memory~92_q\ : std_logic;
SIGNAL \inst|s_memory~225_combout\ : std_logic;
SIGNAL \inst|s_memory~226_combout\ : std_logic;
SIGNAL \inst|s_memory~84_q\ : std_logic;
SIGNAL \inst|s_memory~141_combout\ : std_logic;
SIGNAL \inst|s_memory~221_combout\ : std_logic;
SIGNAL \inst|s_memory~222_combout\ : std_logic;
SIGNAL \inst|s_memory~100_q\ : std_logic;
SIGNAL \inst|s_memory~227_combout\ : std_logic;
SIGNAL \inst|s_memory~228_combout\ : std_logic;
SIGNAL \inst|s_memory~108_q\ : std_logic;
SIGNAL \inst|s_memory~142_combout\ : std_logic;
SIGNAL \inst|s_memory~132feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~247_combout\ : std_logic;
SIGNAL \inst|s_memory~248_combout\ : std_logic;
SIGNAL \inst|s_memory~132_q\ : std_logic;
SIGNAL \inst|s_memory~249_combout\ : std_logic;
SIGNAL \inst|s_memory~250_combout\ : std_logic;
SIGNAL \inst|s_memory~116_q\ : std_logic;
SIGNAL \inst|s_memory~148_combout\ : std_logic;
SIGNAL \inst|s_memory~245_combout\ : std_logic;
SIGNAL \inst|s_memory~246_combout\ : std_logic;
SIGNAL \inst|s_memory~124_q\ : std_logic;
SIGNAL \inst|s_memory~251_combout\ : std_logic;
SIGNAL \inst|s_memory~252_combout\ : std_logic;
SIGNAL \inst|s_memory~140_q\ : std_logic;
SIGNAL \inst|s_memory~149_combout\ : std_logic;
SIGNAL \inst|s_memory~150_combout\ : std_logic;
SIGNAL \SW10~input_o\ : std_logic;
SIGNAL \inst|s_memory~83_q\ : std_logic;
SIGNAL \inst|s_memory~19_q\ : std_logic;
SIGNAL \inst|s_memory~155_combout\ : std_logic;
SIGNAL \inst|s_memory~51feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~51_q\ : std_logic;
SIGNAL \inst|s_memory~115_q\ : std_logic;
SIGNAL \inst|s_memory~156_combout\ : std_logic;
SIGNAL \inst|s_memory~59_q\ : std_logic;
SIGNAL \inst|s_memory~27_q\ : std_logic;
SIGNAL \inst|s_memory~153_combout\ : std_logic;
SIGNAL \inst|s_memory~91_q\ : std_logic;
SIGNAL \inst|s_memory~123_q\ : std_logic;
SIGNAL \inst|s_memory~154_combout\ : std_logic;
SIGNAL \inst|s_memory~157_combout\ : std_logic;
SIGNAL \inst|s_memory~75_q\ : std_logic;
SIGNAL \inst|s_memory~43_q\ : std_logic;
SIGNAL \inst|s_memory~158_combout\ : std_logic;
SIGNAL \inst|s_memory~139_q\ : std_logic;
SIGNAL \inst|s_memory~107feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~107_q\ : std_logic;
SIGNAL \inst|s_memory~159_combout\ : std_logic;
SIGNAL \inst|s_memory~99feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~99_q\ : std_logic;
SIGNAL \inst|s_memory~35_q\ : std_logic;
SIGNAL \inst|s_memory~151_combout\ : std_logic;
SIGNAL \inst|s_memory~131_q\ : std_logic;
SIGNAL \inst|s_memory~67feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~67_q\ : std_logic;
SIGNAL \inst|s_memory~152_combout\ : std_logic;
SIGNAL \inst|s_memory~160_combout\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \inst|s_memory~130_q\ : std_logic;
SIGNAL \inst|s_memory~138_q\ : std_logic;
SIGNAL \inst|s_memory~122feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~122_q\ : std_logic;
SIGNAL \inst|s_memory~114_q\ : std_logic;
SIGNAL \inst|s_memory~168_combout\ : std_logic;
SIGNAL \inst|s_memory~169_combout\ : std_logic;
SIGNAL \inst|s_memory~90_q\ : std_logic;
SIGNAL \inst|s_memory~98_q\ : std_logic;
SIGNAL \inst|s_memory~82_q\ : std_logic;
SIGNAL \inst|s_memory~163_combout\ : std_logic;
SIGNAL \inst|s_memory~106_q\ : std_logic;
SIGNAL \inst|s_memory~164_combout\ : std_logic;
SIGNAL \inst|s_memory~34_q\ : std_logic;
SIGNAL \inst|s_memory~18_q\ : std_logic;
SIGNAL \inst|s_memory~165_combout\ : std_logic;
SIGNAL \inst|s_memory~42_q\ : std_logic;
SIGNAL \inst|s_memory~26_q\ : std_logic;
SIGNAL \inst|s_memory~166_combout\ : std_logic;
SIGNAL \inst|s_memory~167_combout\ : std_logic;
SIGNAL \inst|s_memory~50_q\ : std_logic;
SIGNAL \inst|s_memory~58_q\ : std_logic;
SIGNAL \inst|s_memory~161_combout\ : std_logic;
SIGNAL \inst|s_memory~66_q\ : std_logic;
SIGNAL \inst|s_memory~74_q\ : std_logic;
SIGNAL \inst|s_memory~162_combout\ : std_logic;
SIGNAL \inst|s_memory~170_combout\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \inst|s_memory~57feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~57_q\ : std_logic;
SIGNAL \inst|s_memory~89_q\ : std_logic;
SIGNAL \inst|s_memory~25_q\ : std_logic;
SIGNAL \inst|s_memory~171_combout\ : std_logic;
SIGNAL \inst|s_memory~121_q\ : std_logic;
SIGNAL \inst|s_memory~172_combout\ : std_logic;
SIGNAL \inst|s_memory~73feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~73_q\ : std_logic;
SIGNAL \inst|s_memory~105_q\ : std_logic;
SIGNAL \inst|s_memory~41_q\ : std_logic;
SIGNAL \inst|s_memory~178_combout\ : std_logic;
SIGNAL \inst|s_memory~137_q\ : std_logic;
SIGNAL \inst|s_memory~179_combout\ : std_logic;
SIGNAL \inst|s_memory~49feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~49_q\ : std_logic;
SIGNAL \inst|s_memory~17_q\ : std_logic;
SIGNAL \inst|s_memory~175_combout\ : std_logic;
SIGNAL \inst|s_memory~81_q\ : std_logic;
SIGNAL \inst|s_memory~113_q\ : std_logic;
SIGNAL \inst|s_memory~176_combout\ : std_logic;
SIGNAL \inst|s_memory~33_q\ : std_logic;
SIGNAL \inst|s_memory~65feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~65_q\ : std_logic;
SIGNAL \inst|s_memory~173_combout\ : std_logic;
SIGNAL \inst|s_memory~97_q\ : std_logic;
SIGNAL \inst|s_memory~129_q\ : std_logic;
SIGNAL \inst|s_memory~174_combout\ : std_logic;
SIGNAL \inst|s_memory~177_combout\ : std_logic;
SIGNAL \inst|s_memory~180_combout\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \inst|s_memory~120_q\ : std_logic;
SIGNAL \inst|s_memory~128_q\ : std_logic;
SIGNAL \inst|s_memory~112_q\ : std_logic;
SIGNAL \inst|s_memory~188_combout\ : std_logic;
SIGNAL \inst|s_memory~136_q\ : std_logic;
SIGNAL \inst|s_memory~189_combout\ : std_logic;
SIGNAL \inst|s_memory~88_q\ : std_logic;
SIGNAL \inst|s_memory~80_q\ : std_logic;
SIGNAL \inst|s_memory~181_combout\ : std_logic;
SIGNAL \inst|s_memory~104_q\ : std_logic;
SIGNAL \inst|s_memory~96_q\ : std_logic;
SIGNAL \inst|s_memory~182_combout\ : std_logic;
SIGNAL \inst|s_memory~24_q\ : std_logic;
SIGNAL \inst|s_memory~16_q\ : std_logic;
SIGNAL \inst|s_memory~185_combout\ : std_logic;
SIGNAL \inst|s_memory~32_q\ : std_logic;
SIGNAL \inst|s_memory~40_q\ : std_logic;
SIGNAL \inst|s_memory~186_combout\ : std_logic;
SIGNAL \inst|s_memory~48_q\ : std_logic;
SIGNAL \inst|s_memory~64_q\ : std_logic;
SIGNAL \inst|s_memory~183_combout\ : std_logic;
SIGNAL \inst|s_memory~72_q\ : std_logic;
SIGNAL \inst|s_memory~56_q\ : std_logic;
SIGNAL \inst|s_memory~184_combout\ : std_logic;
SIGNAL \inst|s_memory~187_combout\ : std_logic;
SIGNAL \inst|s_memory~190_combout\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \inst|s_memory~103_q\ : std_logic;
SIGNAL \inst|s_memory~39_q\ : std_logic;
SIGNAL \inst|s_memory~71feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~71_q\ : std_logic;
SIGNAL \inst|s_memory~198_combout\ : std_logic;
SIGNAL \inst|s_memory~135_q\ : std_logic;
SIGNAL \inst|s_memory~199_combout\ : std_logic;
SIGNAL \inst|s_memory~55feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~55_q\ : std_logic;
SIGNAL \inst|s_memory~23_q\ : std_logic;
SIGNAL \inst|s_memory~193_combout\ : std_logic;
SIGNAL \inst|s_memory~87_q\ : std_logic;
SIGNAL \inst|s_memory~119_q\ : std_logic;
SIGNAL \inst|s_memory~194_combout\ : std_logic;
SIGNAL \inst|s_memory~79_q\ : std_logic;
SIGNAL \inst|s_memory~15_q\ : std_logic;
SIGNAL \inst|s_memory~195_combout\ : std_logic;
SIGNAL \inst|s_memory~111_q\ : std_logic;
SIGNAL \inst|s_memory~47_q\ : std_logic;
SIGNAL \inst|s_memory~196_combout\ : std_logic;
SIGNAL \inst|s_memory~197_combout\ : std_logic;
SIGNAL \inst|s_memory~63_q\ : std_logic;
SIGNAL \inst|s_memory~127_q\ : std_logic;
SIGNAL \inst|s_memory~95_q\ : std_logic;
SIGNAL \inst|s_memory~31_q\ : std_logic;
SIGNAL \inst|s_memory~191_combout\ : std_logic;
SIGNAL \inst|s_memory~192_combout\ : std_logic;
SIGNAL \inst|s_memory~200_combout\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \inst|s_memory~46_q\ : std_logic;
SIGNAL \inst|s_memory~54_q\ : std_logic;
SIGNAL \inst|s_memory~201_combout\ : std_logic;
SIGNAL \inst|s_memory~62_q\ : std_logic;
SIGNAL \inst|s_memory~70_q\ : std_logic;
SIGNAL \inst|s_memory~202_combout\ : std_logic;
SIGNAL \inst|s_memory~30_q\ : std_logic;
SIGNAL \inst|s_memory~14_q\ : std_logic;
SIGNAL \inst|s_memory~205_combout\ : std_logic;
SIGNAL \inst|s_memory~22_q\ : std_logic;
SIGNAL \inst|s_memory~38_q\ : std_logic;
SIGNAL \inst|s_memory~206_combout\ : std_logic;
SIGNAL \inst|s_memory~94_q\ : std_logic;
SIGNAL \inst|s_memory~78_q\ : std_logic;
SIGNAL \inst|s_memory~203_combout\ : std_logic;
SIGNAL \inst|s_memory~86feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~86_q\ : std_logic;
SIGNAL \inst|s_memory~102_q\ : std_logic;
SIGNAL \inst|s_memory~204_combout\ : std_logic;
SIGNAL \inst|s_memory~207_combout\ : std_logic;
SIGNAL \inst|s_memory~110_q\ : std_logic;
SIGNAL \inst|s_memory~118_q\ : std_logic;
SIGNAL \inst|s_memory~208_combout\ : std_logic;
SIGNAL \inst|s_memory~134_q\ : std_logic;
SIGNAL \inst|s_memory~126_q\ : std_logic;
SIGNAL \inst|s_memory~209_combout\ : std_logic;
SIGNAL \inst|s_memory~210_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \inst|s_memory~69_q\ : std_logic;
SIGNAL \inst|s_memory~101_q\ : std_logic;
SIGNAL \inst|s_memory~37_q\ : std_logic;
SIGNAL \inst|s_memory~218_combout\ : std_logic;
SIGNAL \inst|s_memory~133_q\ : std_logic;
SIGNAL \inst|s_memory~219_combout\ : std_logic;
SIGNAL \inst|s_memory~85feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~85_q\ : std_logic;
SIGNAL \inst|s_memory~21_q\ : std_logic;
SIGNAL \inst|s_memory~211_combout\ : std_logic;
SIGNAL \inst|s_memory~53_q\ : std_logic;
SIGNAL \inst|s_memory~117_q\ : std_logic;
SIGNAL \inst|s_memory~212_combout\ : std_logic;
SIGNAL \inst|s_memory~93_q\ : std_logic;
SIGNAL \inst|s_memory~61feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~61_q\ : std_logic;
SIGNAL \inst|s_memory~29_q\ : std_logic;
SIGNAL \inst|s_memory~213_combout\ : std_logic;
SIGNAL \inst|s_memory~125_q\ : std_logic;
SIGNAL \inst|s_memory~214_combout\ : std_logic;
SIGNAL \inst|s_memory~77feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~77_q\ : std_logic;
SIGNAL \inst|s_memory~109_q\ : std_logic;
SIGNAL \inst|s_memory~45feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~45_q\ : std_logic;
SIGNAL \inst|s_memory~13_q\ : std_logic;
SIGNAL \inst|s_memory~215_combout\ : std_logic;
SIGNAL \inst|s_memory~216_combout\ : std_logic;
SIGNAL \inst|s_memory~217_combout\ : std_logic;
SIGNAL \inst|s_memory~220_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW17 <= SW17;
ww_SW3 <= SW3;
ww_SW2 <= SW2;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
ww_SW11 <= SW11;
ww_SW10 <= SW10;
ww_SW9 <= SW9;
ww_SW8 <= SW8;
ww_SW7 <= SW7;
ww_SW6 <= SW6;
ww_SW5 <= SW5;
ww_SW4 <= SW4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~150_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~160_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~170_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~180_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~190_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~200_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~210_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y36_N1
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

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

-- Location: IOIBUF_X115_Y41_N1
\SW11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW11,
	o => \SW11~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X112_Y39_N6
\inst|s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~239_combout\ = (!\SW3~input_o\ & (!\SW1~input_o\ & (!\SW2~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~239_combout\);

-- Location: IOIBUF_X115_Y35_N22
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: LCCOMB_X112_Y39_N16
\inst|s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~240_combout\ = (\inst|s_memory~239_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~239_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~240_combout\);

-- Location: FF_X113_Y40_N1
\inst|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~28_q\);

-- Location: LCCOMB_X112_Y39_N10
\inst|s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~241_combout\ = (!\SW3~input_o\ & (!\SW1~input_o\ & (!\SW2~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~241_combout\);

-- Location: LCCOMB_X112_Y39_N20
\inst|s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~242_combout\ = (\inst|s_memory~241_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~241_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~242_combout\);

-- Location: FF_X113_Y40_N19
\inst|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~20_q\);

-- Location: LCCOMB_X113_Y40_N18
\inst|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~145_combout\ = (\SW1~input_o\ & (((\SW0~input_o\)))) # (!\SW1~input_o\ & ((\SW0~input_o\ & (\inst|s_memory~28_q\)) # (!\SW0~input_o\ & ((\inst|s_memory~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~28_q\,
	datac => \inst|s_memory~20_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~145_combout\);

-- Location: LCCOMB_X110_Y41_N16
\inst|s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~237_combout\ = (\SW1~input_o\ & (!\SW2~input_o\ & (!\SW3~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~237_combout\);

-- Location: LCCOMB_X110_Y41_N10
\inst|s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~238_combout\ = (\inst|s_memory~237_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~237_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~238_combout\);

-- Location: FF_X112_Y40_N25
\inst|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~36_q\);

-- Location: LCCOMB_X112_Y39_N22
\inst|s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~243_combout\ = (!\SW3~input_o\ & (\SW1~input_o\ & (!\SW2~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~243_combout\);

-- Location: LCCOMB_X112_Y39_N0
\inst|s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~244_combout\ = (\SW17~input_o\ & \inst|s_memory~243_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datac => \inst|s_memory~243_combout\,
	combout => \inst|s_memory~244_combout\);

-- Location: FF_X112_Y40_N27
\inst|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~44_q\);

-- Location: LCCOMB_X112_Y40_N26
\inst|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~146_combout\ = (\inst|s_memory~145_combout\ & (((\inst|s_memory~44_q\) # (!\SW1~input_o\)))) # (!\inst|s_memory~145_combout\ & (\inst|s_memory~36_q\ & ((\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~145_combout\,
	datab => \inst|s_memory~36_q\,
	datac => \inst|s_memory~44_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~146_combout\);

-- Location: LCCOMB_X110_Y41_N0
\inst|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~233_combout\ = (!\SW1~input_o\ & (\SW2~input_o\ & (!\SW3~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~233_combout\);

-- Location: LCCOMB_X110_Y41_N2
\inst|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~234_combout\ = (\inst|s_memory~233_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~233_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~234_combout\);

-- Location: FF_X114_Y41_N19
\inst|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~52_q\);

-- Location: LCCOMB_X110_Y41_N12
\inst|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~231_combout\ = (\SW1~input_o\ & (\SW2~input_o\ & (!\SW3~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~231_combout\);

-- Location: LCCOMB_X110_Y41_N14
\inst|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~232_combout\ = (\inst|s_memory~231_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~231_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~232_combout\);

-- Location: FF_X114_Y41_N1
\inst|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~68_q\);

-- Location: LCCOMB_X114_Y41_N18
\inst|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~143_combout\ = (\SW0~input_o\ & (\SW1~input_o\)) # (!\SW0~input_o\ & ((\SW1~input_o\ & ((\inst|s_memory~68_q\))) # (!\SW1~input_o\ & (\inst|s_memory~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~52_q\,
	datad => \inst|s_memory~68_q\,
	combout => \inst|s_memory~143_combout\);

-- Location: LCCOMB_X110_Y41_N28
\inst|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~235_combout\ = (\SW1~input_o\ & (\SW2~input_o\ & (!\SW3~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~235_combout\);

-- Location: LCCOMB_X110_Y41_N22
\inst|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~236_combout\ = (\inst|s_memory~235_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~235_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~236_combout\);

-- Location: FF_X113_Y41_N27
\inst|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~76_q\);

-- Location: LCCOMB_X110_Y41_N8
\inst|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~229_combout\ = (!\SW1~input_o\ & (\SW2~input_o\ & (!\SW3~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~229_combout\);

-- Location: LCCOMB_X110_Y41_N26
\inst|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~230_combout\ = (\SW17~input_o\ & \inst|s_memory~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|s_memory~229_combout\,
	combout => \inst|s_memory~230_combout\);

-- Location: FF_X113_Y41_N17
\inst|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~60_q\);

-- Location: LCCOMB_X113_Y41_N26
\inst|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~144_combout\ = (\SW0~input_o\ & ((\inst|s_memory~143_combout\ & (\inst|s_memory~76_q\)) # (!\inst|s_memory~143_combout\ & ((\inst|s_memory~60_q\))))) # (!\SW0~input_o\ & (\inst|s_memory~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_memory~143_combout\,
	datac => \inst|s_memory~76_q\,
	datad => \inst|s_memory~60_q\,
	combout => \inst|s_memory~144_combout\);

-- Location: LCCOMB_X112_Y40_N28
\inst|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~147_combout\ = (\SW2~input_o\ & (((\inst|s_memory~144_combout\) # (\SW3~input_o\)))) # (!\SW2~input_o\ & (\inst|s_memory~146_combout\ & ((!\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~146_combout\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~144_combout\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~147_combout\);

-- Location: LCCOMB_X112_Y39_N26
\inst|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~223_combout\ = (\SW3~input_o\ & (!\SW1~input_o\ & (!\SW2~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~223_combout\);

-- Location: LCCOMB_X112_Y39_N28
\inst|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~224_combout\ = (\SW17~input_o\ & \inst|s_memory~223_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datac => \inst|s_memory~223_combout\,
	combout => \inst|s_memory~224_combout\);

-- Location: FF_X109_Y40_N1
\inst|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~92_q\);

-- Location: LCCOMB_X110_Y41_N24
\inst|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~225_combout\ = (!\SW1~input_o\ & (!\SW2~input_o\ & (\SW3~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~225_combout\);

-- Location: LCCOMB_X110_Y41_N18
\inst|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~226_combout\ = (\inst|s_memory~225_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~225_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~226_combout\);

-- Location: FF_X109_Y40_N11
\inst|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~84_q\);

-- Location: LCCOMB_X109_Y40_N10
\inst|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~141_combout\ = (\SW1~input_o\ & (((\SW0~input_o\)))) # (!\SW1~input_o\ & ((\SW0~input_o\ & (\inst|s_memory~92_q\)) # (!\SW0~input_o\ & ((\inst|s_memory~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~92_q\,
	datac => \inst|s_memory~84_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~141_combout\);

-- Location: LCCOMB_X112_Y39_N24
\inst|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~221_combout\ = (\SW3~input_o\ & (\SW1~input_o\ & (!\SW2~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~221_combout\);

-- Location: LCCOMB_X111_Y40_N10
\inst|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~222_combout\ = (\SW17~input_o\ & \inst|s_memory~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \inst|s_memory~221_combout\,
	combout => \inst|s_memory~222_combout\);

-- Location: FF_X110_Y40_N9
\inst|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~100_q\);

-- Location: LCCOMB_X110_Y41_N20
\inst|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~227_combout\ = (\SW1~input_o\ & (!\SW2~input_o\ & (\SW3~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW2~input_o\,
	datac => \SW3~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~227_combout\);

-- Location: LCCOMB_X110_Y41_N30
\inst|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~228_combout\ = (\inst|s_memory~227_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~227_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~228_combout\);

-- Location: FF_X110_Y40_N27
\inst|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~108_q\);

-- Location: LCCOMB_X110_Y40_N26
\inst|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~142_combout\ = (\inst|s_memory~141_combout\ & (((\inst|s_memory~108_q\) # (!\SW1~input_o\)))) # (!\inst|s_memory~141_combout\ & (\inst|s_memory~100_q\ & ((\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~141_combout\,
	datab => \inst|s_memory~100_q\,
	datac => \inst|s_memory~108_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~142_combout\);

-- Location: LCCOMB_X114_Y40_N24
\inst|s_memory~132feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~132feeder_combout\ = \SW11~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW11~input_o\,
	combout => \inst|s_memory~132feeder_combout\);

-- Location: LCCOMB_X114_Y40_N30
\inst|s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~247_combout\ = (\SW2~input_o\ & (\SW3~input_o\ & (\SW1~input_o\ & !\SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW3~input_o\,
	datac => \SW1~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~247_combout\);

-- Location: LCCOMB_X114_Y40_N14
\inst|s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~248_combout\ = (\inst|s_memory~247_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~247_combout\,
	datad => \SW17~input_o\,
	combout => \inst|s_memory~248_combout\);

-- Location: FF_X114_Y40_N25
\inst|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~132feeder_combout\,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~132_q\);

-- Location: LCCOMB_X111_Y40_N20
\inst|s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~249_combout\ = (\SW2~input_o\ & (!\SW1~input_o\ & (!\SW0~input_o\ & \SW3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \SW1~input_o\,
	datac => \SW0~input_o\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~249_combout\);

-- Location: LCCOMB_X111_Y40_N6
\inst|s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~250_combout\ = (\SW17~input_o\ & \inst|s_memory~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|s_memory~249_combout\,
	combout => \inst|s_memory~250_combout\);

-- Location: FF_X111_Y40_N1
\inst|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~116_q\);

-- Location: LCCOMB_X111_Y40_N0
\inst|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~148_combout\ = (\SW0~input_o\ & (((\SW1~input_o\)))) # (!\SW0~input_o\ & ((\SW1~input_o\ & (\inst|s_memory~132_q\)) # (!\SW1~input_o\ & ((\inst|s_memory~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_memory~132_q\,
	datac => \inst|s_memory~116_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~148_combout\);

-- Location: LCCOMB_X112_Y39_N18
\inst|s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~245_combout\ = (\SW3~input_o\ & (!\SW1~input_o\ & (\SW2~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~245_combout\);

-- Location: LCCOMB_X112_Y39_N12
\inst|s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~246_combout\ = (\inst|s_memory~245_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~245_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~246_combout\);

-- Location: FF_X112_Y41_N1
\inst|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~124_q\);

-- Location: LCCOMB_X112_Y39_N14
\inst|s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~251_combout\ = (\SW3~input_o\ & (\SW1~input_o\ & (\SW2~input_o\ & \SW0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW1~input_o\,
	datac => \SW2~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~251_combout\);

-- Location: LCCOMB_X112_Y41_N22
\inst|s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~252_combout\ = (\inst|s_memory~251_combout\ & \SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~251_combout\,
	datac => \SW17~input_o\,
	combout => \inst|s_memory~252_combout\);

-- Location: FF_X112_Y41_N11
\inst|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW11~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~140_q\);

-- Location: LCCOMB_X112_Y41_N10
\inst|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~149_combout\ = (\inst|s_memory~148_combout\ & (((\inst|s_memory~140_q\) # (!\SW0~input_o\)))) # (!\inst|s_memory~148_combout\ & (\inst|s_memory~124_q\ & ((\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~148_combout\,
	datab => \inst|s_memory~124_q\,
	datac => \inst|s_memory~140_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~149_combout\);

-- Location: LCCOMB_X112_Y40_N30
\inst|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~150_combout\ = (\SW3~input_o\ & ((\inst|s_memory~147_combout\ & ((\inst|s_memory~149_combout\))) # (!\inst|s_memory~147_combout\ & (\inst|s_memory~142_combout\)))) # (!\SW3~input_o\ & (\inst|s_memory~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \inst|s_memory~147_combout\,
	datac => \inst|s_memory~142_combout\,
	datad => \inst|s_memory~149_combout\,
	combout => \inst|s_memory~150_combout\);

-- Location: IOIBUF_X115_Y40_N1
\SW10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW10,
	o => \SW10~input_o\);

-- Location: FF_X109_Y40_N31
\inst|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~83_q\);

-- Location: FF_X113_Y40_N15
\inst|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~19_q\);

-- Location: LCCOMB_X113_Y40_N14
\inst|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~155_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~83_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~83_q\,
	datac => \inst|s_memory~19_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~155_combout\);

-- Location: LCCOMB_X114_Y41_N30
\inst|s_memory~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~51feeder_combout\ = \SW10~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW10~input_o\,
	combout => \inst|s_memory~51feeder_combout\);

-- Location: FF_X114_Y41_N31
\inst|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~51feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~51_q\);

-- Location: FF_X111_Y40_N19
\inst|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~115_q\);

-- Location: LCCOMB_X111_Y40_N18
\inst|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~156_combout\ = (\inst|s_memory~155_combout\ & (((\inst|s_memory~115_q\) # (!\SW2~input_o\)))) # (!\inst|s_memory~155_combout\ & (\inst|s_memory~51_q\ & ((\SW2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~155_combout\,
	datab => \inst|s_memory~51_q\,
	datac => \inst|s_memory~115_q\,
	datad => \SW2~input_o\,
	combout => \inst|s_memory~156_combout\);

-- Location: FF_X113_Y41_N13
\inst|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~59_q\);

-- Location: FF_X113_Y40_N13
\inst|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~27_q\);

-- Location: LCCOMB_X113_Y40_N12
\inst|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~153_combout\ = (\SW2~input_o\ & ((\inst|s_memory~59_q\) # ((\SW3~input_o\)))) # (!\SW2~input_o\ & (((\inst|s_memory~27_q\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~59_q\,
	datac => \inst|s_memory~27_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~153_combout\);

-- Location: FF_X109_Y40_N29
\inst|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~91_q\);

-- Location: FF_X111_Y41_N9
\inst|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~123_q\);

-- Location: LCCOMB_X111_Y41_N8
\inst|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~154_combout\ = (\inst|s_memory~153_combout\ & (((\inst|s_memory~123_q\) # (!\SW3~input_o\)))) # (!\inst|s_memory~153_combout\ & (\inst|s_memory~91_q\ & ((\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~153_combout\,
	datab => \inst|s_memory~91_q\,
	datac => \inst|s_memory~123_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~154_combout\);

-- Location: LCCOMB_X111_Y41_N10
\inst|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~157_combout\ = (\SW1~input_o\ & (((\SW0~input_o\)))) # (!\SW1~input_o\ & ((\SW0~input_o\ & ((\inst|s_memory~154_combout\))) # (!\SW0~input_o\ & (\inst|s_memory~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~156_combout\,
	datab => \inst|s_memory~154_combout\,
	datac => \SW1~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~157_combout\);

-- Location: FF_X113_Y41_N31
\inst|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~75_q\);

-- Location: FF_X112_Y40_N9
\inst|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~43_q\);

-- Location: LCCOMB_X112_Y40_N8
\inst|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~158_combout\ = (\SW2~input_o\ & ((\inst|s_memory~75_q\) # ((\SW3~input_o\)))) # (!\SW2~input_o\ & (((\inst|s_memory~43_q\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~75_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~43_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~158_combout\);

-- Location: FF_X111_Y41_N5
\inst|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~139_q\);

-- Location: LCCOMB_X110_Y40_N14
\inst|s_memory~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~107feeder_combout\ = \SW10~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW10~input_o\,
	combout => \inst|s_memory~107feeder_combout\);

-- Location: FF_X110_Y40_N15
\inst|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~107feeder_combout\,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~107_q\);

-- Location: LCCOMB_X111_Y41_N4
\inst|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~159_combout\ = (\SW3~input_o\ & ((\inst|s_memory~158_combout\ & (\inst|s_memory~139_q\)) # (!\inst|s_memory~158_combout\ & ((\inst|s_memory~107_q\))))) # (!\SW3~input_o\ & (\inst|s_memory~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \inst|s_memory~158_combout\,
	datac => \inst|s_memory~139_q\,
	datad => \inst|s_memory~107_q\,
	combout => \inst|s_memory~159_combout\);

-- Location: LCCOMB_X110_Y40_N4
\inst|s_memory~99feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~99feeder_combout\ = \SW10~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW10~input_o\,
	combout => \inst|s_memory~99feeder_combout\);

-- Location: FF_X110_Y40_N5
\inst|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~99feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~99_q\);

-- Location: FF_X114_Y40_N11
\inst|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~35_q\);

-- Location: LCCOMB_X114_Y40_N10
\inst|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~151_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~99_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~35_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~99_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~35_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~151_combout\);

-- Location: FF_X114_Y40_N21
\inst|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW10~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~131_q\);

-- Location: LCCOMB_X114_Y41_N4
\inst|s_memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~67feeder_combout\ = \SW10~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW10~input_o\,
	combout => \inst|s_memory~67feeder_combout\);

-- Location: FF_X114_Y41_N5
\inst|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~67feeder_combout\,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~67_q\);

-- Location: LCCOMB_X114_Y40_N20
\inst|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~152_combout\ = (\inst|s_memory~151_combout\ & (((\inst|s_memory~131_q\)) # (!\SW2~input_o\))) # (!\inst|s_memory~151_combout\ & (\SW2~input_o\ & ((\inst|s_memory~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~151_combout\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~131_q\,
	datad => \inst|s_memory~67_q\,
	combout => \inst|s_memory~152_combout\);

-- Location: LCCOMB_X111_Y41_N14
\inst|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~160_combout\ = (\inst|s_memory~157_combout\ & ((\inst|s_memory~159_combout\) # ((!\SW1~input_o\)))) # (!\inst|s_memory~157_combout\ & (((\SW1~input_o\ & \inst|s_memory~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~157_combout\,
	datab => \inst|s_memory~159_combout\,
	datac => \SW1~input_o\,
	datad => \inst|s_memory~152_combout\,
	combout => \inst|s_memory~160_combout\);

-- Location: IOIBUF_X115_Y41_N8
\SW9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

-- Location: FF_X114_Y40_N17
\inst|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~130_q\);

-- Location: FF_X111_Y41_N3
\inst|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~138_q\);

-- Location: LCCOMB_X111_Y41_N0
\inst|s_memory~122feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~122feeder_combout\ = \SW9~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW9~input_o\,
	combout => \inst|s_memory~122feeder_combout\);

-- Location: FF_X111_Y41_N1
\inst|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~122feeder_combout\,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~122_q\);

-- Location: FF_X111_Y40_N13
\inst|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~114_q\);

-- Location: LCCOMB_X111_Y40_N12
\inst|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~168_combout\ = (\SW0~input_o\ & ((\inst|s_memory~122_q\) # ((\SW1~input_o\)))) # (!\SW0~input_o\ & (((\inst|s_memory~114_q\ & !\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_memory~122_q\,
	datac => \inst|s_memory~114_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~168_combout\);

-- Location: LCCOMB_X111_Y41_N2
\inst|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~169_combout\ = (\SW1~input_o\ & ((\inst|s_memory~168_combout\ & ((\inst|s_memory~138_q\))) # (!\inst|s_memory~168_combout\ & (\inst|s_memory~130_q\)))) # (!\SW1~input_o\ & (((\inst|s_memory~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~130_q\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~138_q\,
	datad => \inst|s_memory~168_combout\,
	combout => \inst|s_memory~169_combout\);

-- Location: FF_X109_Y40_N9
\inst|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~90_q\);

-- Location: FF_X110_Y40_N17
\inst|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~98_q\);

-- Location: FF_X109_Y40_N27
\inst|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~82_q\);

-- Location: LCCOMB_X109_Y40_N26
\inst|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~163_combout\ = (\SW1~input_o\ & ((\inst|s_memory~98_q\) # ((\SW0~input_o\)))) # (!\SW1~input_o\ & (((\inst|s_memory~82_q\ & !\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~98_q\,
	datac => \inst|s_memory~82_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~163_combout\);

-- Location: FF_X110_Y40_N11
\inst|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~106_q\);

-- Location: LCCOMB_X110_Y40_N10
\inst|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~164_combout\ = (\inst|s_memory~163_combout\ & (((\inst|s_memory~106_q\) # (!\SW0~input_o\)))) # (!\inst|s_memory~163_combout\ & (\inst|s_memory~90_q\ & ((\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~90_q\,
	datab => \inst|s_memory~163_combout\,
	datac => \inst|s_memory~106_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~164_combout\);

-- Location: FF_X114_Y40_N23
\inst|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~34_q\);

-- Location: FF_X113_Y40_N27
\inst|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~18_q\);

-- Location: LCCOMB_X113_Y40_N26
\inst|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~165_combout\ = (\SW1~input_o\ & ((\inst|s_memory~34_q\) # ((\SW0~input_o\)))) # (!\SW1~input_o\ & (((\inst|s_memory~18_q\ & !\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~34_q\,
	datac => \inst|s_memory~18_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~165_combout\);

-- Location: FF_X112_Y40_N19
\inst|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~42_q\);

-- Location: FF_X113_Y40_N25
\inst|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~26_q\);

-- Location: LCCOMB_X112_Y40_N18
\inst|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~166_combout\ = (\SW0~input_o\ & ((\inst|s_memory~165_combout\ & (\inst|s_memory~42_q\)) # (!\inst|s_memory~165_combout\ & ((\inst|s_memory~26_q\))))) # (!\SW0~input_o\ & (\inst|s_memory~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_memory~165_combout\,
	datac => \inst|s_memory~42_q\,
	datad => \inst|s_memory~26_q\,
	combout => \inst|s_memory~166_combout\);

-- Location: LCCOMB_X112_Y40_N20
\inst|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~167_combout\ = (\SW3~input_o\ & ((\SW2~input_o\) # ((\inst|s_memory~164_combout\)))) # (!\SW3~input_o\ & (!\SW2~input_o\ & ((\inst|s_memory~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~164_combout\,
	datad => \inst|s_memory~166_combout\,
	combout => \inst|s_memory~167_combout\);

-- Location: FF_X114_Y41_N27
\inst|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~50_q\);

-- Location: FF_X113_Y41_N9
\inst|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~58_q\);

-- Location: LCCOMB_X114_Y41_N26
\inst|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~161_combout\ = (\SW0~input_o\ & ((\SW1~input_o\) # ((\inst|s_memory~58_q\)))) # (!\SW0~input_o\ & (!\SW1~input_o\ & (\inst|s_memory~50_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~50_q\,
	datad => \inst|s_memory~58_q\,
	combout => \inst|s_memory~161_combout\);

-- Location: FF_X114_Y41_N25
\inst|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~66_q\);

-- Location: FF_X113_Y41_N19
\inst|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW9~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~74_q\);

-- Location: LCCOMB_X113_Y41_N18
\inst|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~162_combout\ = (\inst|s_memory~161_combout\ & (((\inst|s_memory~74_q\) # (!\SW1~input_o\)))) # (!\inst|s_memory~161_combout\ & (\inst|s_memory~66_q\ & ((\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~161_combout\,
	datab => \inst|s_memory~66_q\,
	datac => \inst|s_memory~74_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~162_combout\);

-- Location: LCCOMB_X112_Y41_N28
\inst|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~170_combout\ = (\inst|s_memory~167_combout\ & ((\inst|s_memory~169_combout\) # ((!\SW2~input_o\)))) # (!\inst|s_memory~167_combout\ & (((\inst|s_memory~162_combout\ & \SW2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~169_combout\,
	datab => \inst|s_memory~167_combout\,
	datac => \inst|s_memory~162_combout\,
	datad => \SW2~input_o\,
	combout => \inst|s_memory~170_combout\);

-- Location: IOIBUF_X115_Y44_N1
\SW8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

-- Location: LCCOMB_X113_Y41_N20
\inst|s_memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~57feeder_combout\ = \SW8~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW8~input_o\,
	combout => \inst|s_memory~57feeder_combout\);

-- Location: FF_X113_Y41_N21
\inst|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~57feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~57_q\);

-- Location: FF_X109_Y40_N21
\inst|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~89_q\);

-- Location: FF_X113_Y40_N5
\inst|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~25_q\);

-- Location: LCCOMB_X113_Y40_N4
\inst|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~171_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~89_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~89_q\,
	datac => \inst|s_memory~25_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~171_combout\);

-- Location: FF_X112_Y41_N7
\inst|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~121_q\);

-- Location: LCCOMB_X112_Y41_N6
\inst|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~172_combout\ = (\inst|s_memory~171_combout\ & (((\inst|s_memory~121_q\) # (!\SW2~input_o\)))) # (!\inst|s_memory~171_combout\ & (\inst|s_memory~57_q\ & ((\SW2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~57_q\,
	datab => \inst|s_memory~171_combout\,
	datac => \inst|s_memory~121_q\,
	datad => \SW2~input_o\,
	combout => \inst|s_memory~172_combout\);

-- Location: LCCOMB_X113_Y41_N22
\inst|s_memory~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~73feeder_combout\ = \SW8~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW8~input_o\,
	combout => \inst|s_memory~73feeder_combout\);

-- Location: FF_X113_Y41_N23
\inst|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~73feeder_combout\,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~73_q\);

-- Location: FF_X110_Y40_N23
\inst|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~105_q\);

-- Location: FF_X112_Y40_N23
\inst|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~41_q\);

-- Location: LCCOMB_X112_Y40_N22
\inst|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~178_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~105_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~105_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~41_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~178_combout\);

-- Location: FF_X112_Y41_N25
\inst|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~137_q\);

-- Location: LCCOMB_X112_Y41_N24
\inst|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~179_combout\ = (\inst|s_memory~178_combout\ & (((\inst|s_memory~137_q\) # (!\SW2~input_o\)))) # (!\inst|s_memory~178_combout\ & (\inst|s_memory~73_q\ & ((\SW2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~73_q\,
	datab => \inst|s_memory~178_combout\,
	datac => \inst|s_memory~137_q\,
	datad => \SW2~input_o\,
	combout => \inst|s_memory~179_combout\);

-- Location: LCCOMB_X114_Y41_N22
\inst|s_memory~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~49feeder_combout\ = \SW8~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW8~input_o\,
	combout => \inst|s_memory~49feeder_combout\);

-- Location: FF_X114_Y41_N23
\inst|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~49feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~49_q\);

-- Location: FF_X113_Y40_N7
\inst|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~17_q\);

-- Location: LCCOMB_X113_Y40_N6
\inst|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~175_combout\ = (\SW2~input_o\ & ((\inst|s_memory~49_q\) # ((\SW3~input_o\)))) # (!\SW2~input_o\ & (((\inst|s_memory~17_q\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~49_q\,
	datac => \inst|s_memory~17_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~175_combout\);

-- Location: FF_X109_Y40_N23
\inst|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~81_q\);

-- Location: FF_X111_Y40_N15
\inst|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~113_q\);

-- Location: LCCOMB_X111_Y40_N14
\inst|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~176_combout\ = (\inst|s_memory~175_combout\ & (((\inst|s_memory~113_q\) # (!\SW3~input_o\)))) # (!\inst|s_memory~175_combout\ & (\inst|s_memory~81_q\ & ((\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~175_combout\,
	datab => \inst|s_memory~81_q\,
	datac => \inst|s_memory~113_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~176_combout\);

-- Location: FF_X114_Y40_N27
\inst|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~33_q\);

-- Location: LCCOMB_X114_Y41_N12
\inst|s_memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~65feeder_combout\ = \SW8~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW8~input_o\,
	combout => \inst|s_memory~65feeder_combout\);

-- Location: FF_X114_Y41_N13
\inst|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~65feeder_combout\,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~65_q\);

-- Location: LCCOMB_X114_Y40_N26
\inst|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~173_combout\ = (\SW3~input_o\ & (\SW2~input_o\)) # (!\SW3~input_o\ & ((\SW2~input_o\ & ((\inst|s_memory~65_q\))) # (!\SW2~input_o\ & (\inst|s_memory~33_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~33_q\,
	datad => \inst|s_memory~65_q\,
	combout => \inst|s_memory~173_combout\);

-- Location: FF_X110_Y40_N21
\inst|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~97_q\);

-- Location: FF_X114_Y40_N5
\inst|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW8~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~129_q\);

-- Location: LCCOMB_X114_Y40_N4
\inst|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~174_combout\ = (\inst|s_memory~173_combout\ & (((\inst|s_memory~129_q\) # (!\SW3~input_o\)))) # (!\inst|s_memory~173_combout\ & (\inst|s_memory~97_q\ & ((\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~173_combout\,
	datab => \inst|s_memory~97_q\,
	datac => \inst|s_memory~129_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~174_combout\);

-- Location: LCCOMB_X114_Y40_N6
\inst|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~177_combout\ = (\SW1~input_o\ & (((\inst|s_memory~174_combout\) # (\SW0~input_o\)))) # (!\SW1~input_o\ & (\inst|s_memory~176_combout\ & ((!\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~176_combout\,
	datab => \inst|s_memory~174_combout\,
	datac => \SW1~input_o\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~177_combout\);

-- Location: LCCOMB_X112_Y41_N26
\inst|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~180_combout\ = (\inst|s_memory~177_combout\ & (((\inst|s_memory~179_combout\) # (!\SW0~input_o\)))) # (!\inst|s_memory~177_combout\ & (\inst|s_memory~172_combout\ & ((\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~172_combout\,
	datab => \inst|s_memory~179_combout\,
	datac => \inst|s_memory~177_combout\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~180_combout\);

-- Location: IOIBUF_X115_Y44_N8
\SW7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: FF_X111_Y41_N7
\inst|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~120_q\);

-- Location: FF_X114_Y40_N9
\inst|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~128_q\);

-- Location: FF_X111_Y40_N17
\inst|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~112_q\);

-- Location: LCCOMB_X111_Y40_N16
\inst|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~188_combout\ = (\SW0~input_o\ & (((\SW1~input_o\)))) # (!\SW0~input_o\ & ((\SW1~input_o\ & (\inst|s_memory~128_q\)) # (!\SW1~input_o\ & ((\inst|s_memory~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_memory~128_q\,
	datac => \inst|s_memory~112_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~188_combout\);

-- Location: FF_X111_Y41_N25
\inst|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~136_q\);

-- Location: LCCOMB_X111_Y41_N24
\inst|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~189_combout\ = (\inst|s_memory~188_combout\ & (((\inst|s_memory~136_q\) # (!\SW0~input_o\)))) # (!\inst|s_memory~188_combout\ & (\inst|s_memory~120_q\ & ((\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~120_q\,
	datab => \inst|s_memory~188_combout\,
	datac => \inst|s_memory~136_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~189_combout\);

-- Location: FF_X109_Y40_N17
\inst|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~88_q\);

-- Location: FF_X109_Y40_N19
\inst|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~80_q\);

-- Location: LCCOMB_X109_Y40_N18
\inst|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~181_combout\ = (\SW1~input_o\ & (((\SW0~input_o\)))) # (!\SW1~input_o\ & ((\SW0~input_o\ & (\inst|s_memory~88_q\)) # (!\SW0~input_o\ & ((\inst|s_memory~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~88_q\,
	datac => \inst|s_memory~80_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~181_combout\);

-- Location: FF_X110_Y40_N19
\inst|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~104_q\);

-- Location: FF_X110_Y40_N1
\inst|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~96_q\);

-- Location: LCCOMB_X110_Y40_N18
\inst|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~182_combout\ = (\SW1~input_o\ & ((\inst|s_memory~181_combout\ & (\inst|s_memory~104_q\)) # (!\inst|s_memory~181_combout\ & ((\inst|s_memory~96_q\))))) # (!\SW1~input_o\ & (\inst|s_memory~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~181_combout\,
	datac => \inst|s_memory~104_q\,
	datad => \inst|s_memory~96_q\,
	combout => \inst|s_memory~182_combout\);

-- Location: FF_X113_Y40_N17
\inst|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~24_q\);

-- Location: FF_X113_Y40_N3
\inst|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~16_q\);

-- Location: LCCOMB_X113_Y40_N2
\inst|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~185_combout\ = (\SW1~input_o\ & (((\SW0~input_o\)))) # (!\SW1~input_o\ & ((\SW0~input_o\ & (\inst|s_memory~24_q\)) # (!\SW0~input_o\ & ((\inst|s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~24_q\,
	datac => \inst|s_memory~16_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~185_combout\);

-- Location: FF_X112_Y40_N17
\inst|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~32_q\);

-- Location: FF_X112_Y40_N11
\inst|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~40_q\);

-- Location: LCCOMB_X112_Y40_N10
\inst|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~186_combout\ = (\inst|s_memory~185_combout\ & (((\inst|s_memory~40_q\) # (!\SW1~input_o\)))) # (!\inst|s_memory~185_combout\ & (\inst|s_memory~32_q\ & ((\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~185_combout\,
	datab => \inst|s_memory~32_q\,
	datac => \inst|s_memory~40_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~186_combout\);

-- Location: FF_X114_Y41_N11
\inst|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~48_q\);

-- Location: FF_X114_Y41_N17
\inst|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~64_q\);

-- Location: LCCOMB_X114_Y41_N10
\inst|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~183_combout\ = (\SW0~input_o\ & (\SW1~input_o\)) # (!\SW0~input_o\ & ((\SW1~input_o\ & ((\inst|s_memory~64_q\))) # (!\SW1~input_o\ & (\inst|s_memory~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~48_q\,
	datad => \inst|s_memory~64_q\,
	combout => \inst|s_memory~183_combout\);

-- Location: FF_X113_Y41_N3
\inst|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~72_q\);

-- Location: FF_X113_Y41_N1
\inst|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW7~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~56_q\);

-- Location: LCCOMB_X113_Y41_N2
\inst|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~184_combout\ = (\SW0~input_o\ & ((\inst|s_memory~183_combout\ & (\inst|s_memory~72_q\)) # (!\inst|s_memory~183_combout\ & ((\inst|s_memory~56_q\))))) # (!\SW0~input_o\ & (\inst|s_memory~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|s_memory~183_combout\,
	datac => \inst|s_memory~72_q\,
	datad => \inst|s_memory~56_q\,
	combout => \inst|s_memory~184_combout\);

-- Location: LCCOMB_X111_Y41_N20
\inst|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~187_combout\ = (\SW2~input_o\ & (((\inst|s_memory~184_combout\) # (\SW3~input_o\)))) # (!\SW2~input_o\ & (\inst|s_memory~186_combout\ & ((!\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~186_combout\,
	datab => \inst|s_memory~184_combout\,
	datac => \SW2~input_o\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~187_combout\);

-- Location: LCCOMB_X111_Y41_N26
\inst|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~190_combout\ = (\SW3~input_o\ & ((\inst|s_memory~187_combout\ & (\inst|s_memory~189_combout\)) # (!\inst|s_memory~187_combout\ & ((\inst|s_memory~182_combout\))))) # (!\SW3~input_o\ & (((\inst|s_memory~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \inst|s_memory~189_combout\,
	datac => \inst|s_memory~182_combout\,
	datad => \inst|s_memory~187_combout\,
	combout => \inst|s_memory~190_combout\);

-- Location: IOIBUF_X115_Y45_N15
\SW6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: FF_X110_Y40_N31
\inst|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~103_q\);

-- Location: FF_X112_Y40_N5
\inst|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~39_q\);

-- Location: LCCOMB_X113_Y41_N14
\inst|s_memory~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~71feeder_combout\ = \SW6~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW6~input_o\,
	combout => \inst|s_memory~71feeder_combout\);

-- Location: FF_X113_Y41_N15
\inst|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~71feeder_combout\,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~71_q\);

-- Location: LCCOMB_X112_Y40_N4
\inst|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~198_combout\ = (\SW3~input_o\ & (\SW2~input_o\)) # (!\SW3~input_o\ & ((\SW2~input_o\ & ((\inst|s_memory~71_q\))) # (!\SW2~input_o\ & (\inst|s_memory~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~39_q\,
	datad => \inst|s_memory~71_q\,
	combout => \inst|s_memory~198_combout\);

-- Location: FF_X111_Y41_N13
\inst|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~135_q\);

-- Location: LCCOMB_X111_Y41_N12
\inst|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~199_combout\ = (\inst|s_memory~198_combout\ & (((\inst|s_memory~135_q\) # (!\SW3~input_o\)))) # (!\inst|s_memory~198_combout\ & (\inst|s_memory~103_q\ & ((\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~103_q\,
	datab => \inst|s_memory~198_combout\,
	datac => \inst|s_memory~135_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~199_combout\);

-- Location: LCCOMB_X113_Y41_N28
\inst|s_memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~55feeder_combout\ = \SW6~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW6~input_o\,
	combout => \inst|s_memory~55feeder_combout\);

-- Location: FF_X113_Y41_N29
\inst|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~55feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~55_q\);

-- Location: FF_X113_Y40_N29
\inst|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~23_q\);

-- Location: LCCOMB_X113_Y40_N28
\inst|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~193_combout\ = (\SW2~input_o\ & ((\inst|s_memory~55_q\) # ((\SW3~input_o\)))) # (!\SW2~input_o\ & (((\inst|s_memory~23_q\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~55_q\,
	datac => \inst|s_memory~23_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~193_combout\);

-- Location: FF_X109_Y40_N13
\inst|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~87_q\);

-- Location: FF_X111_Y40_N27
\inst|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~119_q\);

-- Location: LCCOMB_X111_Y40_N26
\inst|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~194_combout\ = (\inst|s_memory~193_combout\ & (((\inst|s_memory~119_q\) # (!\SW3~input_o\)))) # (!\inst|s_memory~193_combout\ & (\inst|s_memory~87_q\ & ((\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~193_combout\,
	datab => \inst|s_memory~87_q\,
	datac => \inst|s_memory~119_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~194_combout\);

-- Location: FF_X109_Y40_N15
\inst|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~79_q\);

-- Location: FF_X113_Y40_N31
\inst|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~15_q\);

-- Location: LCCOMB_X113_Y40_N30
\inst|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~195_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~79_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~79_q\,
	datac => \inst|s_memory~15_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~195_combout\);

-- Location: FF_X111_Y40_N29
\inst|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~111_q\);

-- Location: FF_X114_Y41_N7
\inst|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~47_q\);

-- Location: LCCOMB_X111_Y40_N28
\inst|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~196_combout\ = (\SW2~input_o\ & ((\inst|s_memory~195_combout\ & (\inst|s_memory~111_q\)) # (!\inst|s_memory~195_combout\ & ((\inst|s_memory~47_q\))))) # (!\SW2~input_o\ & (\inst|s_memory~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~195_combout\,
	datac => \inst|s_memory~111_q\,
	datad => \inst|s_memory~47_q\,
	combout => \inst|s_memory~196_combout\);

-- Location: LCCOMB_X111_Y40_N30
\inst|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~197_combout\ = (\SW0~input_o\ & ((\inst|s_memory~194_combout\) # ((\SW1~input_o\)))) # (!\SW0~input_o\ & (((\inst|s_memory~196_combout\ & !\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~194_combout\,
	datab => \inst|s_memory~196_combout\,
	datac => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~197_combout\);

-- Location: FF_X114_Y41_N29
\inst|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~63_q\);

-- Location: FF_X114_Y40_N29
\inst|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~127_q\);

-- Location: FF_X110_Y40_N29
\inst|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~95_q\);

-- Location: FF_X114_Y40_N19
\inst|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW6~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~31_q\);

-- Location: LCCOMB_X114_Y40_N18
\inst|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~191_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~95_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~95_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~31_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~191_combout\);

-- Location: LCCOMB_X114_Y40_N28
\inst|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~192_combout\ = (\SW2~input_o\ & ((\inst|s_memory~191_combout\ & ((\inst|s_memory~127_q\))) # (!\inst|s_memory~191_combout\ & (\inst|s_memory~63_q\)))) # (!\SW2~input_o\ & (((\inst|s_memory~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~63_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~127_q\,
	datad => \inst|s_memory~191_combout\,
	combout => \inst|s_memory~192_combout\);

-- Location: LCCOMB_X111_Y41_N30
\inst|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~200_combout\ = (\inst|s_memory~197_combout\ & ((\inst|s_memory~199_combout\) # ((!\SW1~input_o\)))) # (!\inst|s_memory~197_combout\ & (((\SW1~input_o\ & \inst|s_memory~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~199_combout\,
	datab => \inst|s_memory~197_combout\,
	datac => \SW1~input_o\,
	datad => \inst|s_memory~192_combout\,
	combout => \inst|s_memory~200_combout\);

-- Location: IOIBUF_X115_Y42_N15
\SW5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: FF_X114_Y41_N3
\inst|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~46_q\);

-- Location: FF_X113_Y41_N25
\inst|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~54_q\);

-- Location: LCCOMB_X114_Y41_N2
\inst|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~201_combout\ = (\SW0~input_o\ & ((\SW1~input_o\) # ((\inst|s_memory~54_q\)))) # (!\SW0~input_o\ & (!\SW1~input_o\ & (\inst|s_memory~46_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~46_q\,
	datad => \inst|s_memory~54_q\,
	combout => \inst|s_memory~201_combout\);

-- Location: FF_X114_Y41_N9
\inst|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~62_q\);

-- Location: FF_X113_Y41_N11
\inst|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~70_q\);

-- Location: LCCOMB_X113_Y41_N10
\inst|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~202_combout\ = (\inst|s_memory~201_combout\ & (((\inst|s_memory~70_q\) # (!\SW1~input_o\)))) # (!\inst|s_memory~201_combout\ & (\inst|s_memory~62_q\ & ((\SW1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~201_combout\,
	datab => \inst|s_memory~62_q\,
	datac => \inst|s_memory~70_q\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~202_combout\);

-- Location: FF_X114_Y40_N15
\inst|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~30_q\);

-- Location: FF_X113_Y40_N11
\inst|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~14_q\);

-- Location: LCCOMB_X113_Y40_N10
\inst|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~205_combout\ = (\SW1~input_o\ & ((\inst|s_memory~30_q\) # ((\SW0~input_o\)))) # (!\SW1~input_o\ & (((\inst|s_memory~14_q\ & !\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~30_q\,
	datac => \inst|s_memory~14_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~205_combout\);

-- Location: FF_X113_Y40_N9
\inst|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~22_q\);

-- Location: FF_X112_Y40_N15
\inst|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~38_q\);

-- Location: LCCOMB_X112_Y40_N14
\inst|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~206_combout\ = (\inst|s_memory~205_combout\ & (((\inst|s_memory~38_q\) # (!\SW0~input_o\)))) # (!\inst|s_memory~205_combout\ & (\inst|s_memory~22_q\ & ((\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~205_combout\,
	datab => \inst|s_memory~22_q\,
	datac => \inst|s_memory~38_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~206_combout\);

-- Location: FF_X110_Y40_N25
\inst|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~94_q\);

-- Location: FF_X109_Y40_N3
\inst|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~78_q\);

-- Location: LCCOMB_X109_Y40_N2
\inst|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~203_combout\ = (\SW1~input_o\ & ((\inst|s_memory~94_q\) # ((\SW0~input_o\)))) # (!\SW1~input_o\ & (((\inst|s_memory~78_q\ & !\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \inst|s_memory~94_q\,
	datac => \inst|s_memory~78_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~203_combout\);

-- Location: LCCOMB_X109_Y40_N24
\inst|s_memory~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~86feeder_combout\ = \SW5~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW5~input_o\,
	combout => \inst|s_memory~86feeder_combout\);

-- Location: FF_X109_Y40_N25
\inst|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~86feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~86_q\);

-- Location: FF_X110_Y40_N3
\inst|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~102_q\);

-- Location: LCCOMB_X110_Y40_N2
\inst|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~204_combout\ = (\inst|s_memory~203_combout\ & (((\inst|s_memory~102_q\) # (!\SW0~input_o\)))) # (!\inst|s_memory~203_combout\ & (\inst|s_memory~86_q\ & ((\SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~203_combout\,
	datab => \inst|s_memory~86_q\,
	datac => \inst|s_memory~102_q\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~204_combout\);

-- Location: LCCOMB_X111_Y40_N8
\inst|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~207_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & ((\inst|s_memory~204_combout\))) # (!\SW3~input_o\ & (\inst|s_memory~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~206_combout\,
	datac => \inst|s_memory~204_combout\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~207_combout\);

-- Location: FF_X111_Y40_N5
\inst|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~110_q\);

-- Location: FF_X111_Y40_N11
\inst|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~118_q\);

-- Location: LCCOMB_X111_Y40_N4
\inst|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~208_combout\ = (\SW0~input_o\ & ((\SW1~input_o\) # ((\inst|s_memory~118_q\)))) # (!\SW0~input_o\ & (!\SW1~input_o\ & (\inst|s_memory~110_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~110_q\,
	datad => \inst|s_memory~118_q\,
	combout => \inst|s_memory~208_combout\);

-- Location: FF_X111_Y41_N17
\inst|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~134_q\);

-- Location: FF_X114_Y40_N1
\inst|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW5~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~126_q\);

-- Location: LCCOMB_X111_Y41_N16
\inst|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~209_combout\ = (\inst|s_memory~208_combout\ & (((\inst|s_memory~134_q\)) # (!\SW1~input_o\))) # (!\inst|s_memory~208_combout\ & (\SW1~input_o\ & ((\inst|s_memory~126_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~208_combout\,
	datab => \SW1~input_o\,
	datac => \inst|s_memory~134_q\,
	datad => \inst|s_memory~126_q\,
	combout => \inst|s_memory~209_combout\);

-- Location: LCCOMB_X111_Y41_N18
\inst|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~210_combout\ = (\inst|s_memory~207_combout\ & (((\inst|s_memory~209_combout\) # (!\SW2~input_o\)))) # (!\inst|s_memory~207_combout\ & (\inst|s_memory~202_combout\ & (\SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~202_combout\,
	datab => \inst|s_memory~207_combout\,
	datac => \SW2~input_o\,
	datad => \inst|s_memory~209_combout\,
	combout => \inst|s_memory~210_combout\);

-- Location: IOIBUF_X115_Y45_N22
\SW4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: FF_X113_Y41_N7
\inst|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~69_q\);

-- Location: FF_X110_Y40_N7
\inst|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~101_q\);

-- Location: FF_X112_Y40_N1
\inst|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~37_q\);

-- Location: LCCOMB_X112_Y40_N0
\inst|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~218_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~101_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~101_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~37_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~218_combout\);

-- Location: FF_X112_Y41_N5
\inst|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~133_q\);

-- Location: LCCOMB_X112_Y41_N4
\inst|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~219_combout\ = (\inst|s_memory~218_combout\ & (((\inst|s_memory~133_q\) # (!\SW2~input_o\)))) # (!\inst|s_memory~218_combout\ & (\inst|s_memory~69_q\ & ((\SW2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~69_q\,
	datab => \inst|s_memory~218_combout\,
	datac => \inst|s_memory~133_q\,
	datad => \SW2~input_o\,
	combout => \inst|s_memory~219_combout\);

-- Location: LCCOMB_X109_Y40_N4
\inst|s_memory~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~85feeder_combout\ = \SW4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW4~input_o\,
	combout => \inst|s_memory~85feeder_combout\);

-- Location: FF_X109_Y40_N5
\inst|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~85feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~85_q\);

-- Location: FF_X113_Y40_N21
\inst|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~21_q\);

-- Location: LCCOMB_X113_Y40_N20
\inst|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~211_combout\ = (\SW2~input_o\ & (((\SW3~input_o\)))) # (!\SW2~input_o\ & ((\SW3~input_o\ & (\inst|s_memory~85_q\)) # (!\SW3~input_o\ & ((\inst|s_memory~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~85_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~21_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~211_combout\);

-- Location: FF_X113_Y41_N5
\inst|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~53_q\);

-- Location: FF_X111_Y40_N23
\inst|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~117_q\);

-- Location: LCCOMB_X111_Y40_N22
\inst|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~212_combout\ = (\inst|s_memory~211_combout\ & (((\inst|s_memory~117_q\) # (!\SW2~input_o\)))) # (!\inst|s_memory~211_combout\ & (\inst|s_memory~53_q\ & ((\SW2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~211_combout\,
	datab => \inst|s_memory~53_q\,
	datac => \inst|s_memory~117_q\,
	datad => \SW2~input_o\,
	combout => \inst|s_memory~212_combout\);

-- Location: FF_X110_Y40_N13
\inst|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~93_q\);

-- Location: LCCOMB_X114_Y41_N20
\inst|s_memory~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~61feeder_combout\ = \SW4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW4~input_o\,
	combout => \inst|s_memory~61feeder_combout\);

-- Location: FF_X114_Y41_N21
\inst|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~61feeder_combout\,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~61_q\);

-- Location: FF_X114_Y40_N3
\inst|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~29_q\);

-- Location: LCCOMB_X114_Y40_N2
\inst|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~213_combout\ = (\SW2~input_o\ & ((\inst|s_memory~61_q\) # ((\SW3~input_o\)))) # (!\SW2~input_o\ & (((\inst|s_memory~29_q\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~61_q\,
	datab => \SW2~input_o\,
	datac => \inst|s_memory~29_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~213_combout\);

-- Location: FF_X114_Y40_N13
\inst|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~125_q\);

-- Location: LCCOMB_X114_Y40_N12
\inst|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~214_combout\ = (\inst|s_memory~213_combout\ & (((\inst|s_memory~125_q\) # (!\SW3~input_o\)))) # (!\inst|s_memory~213_combout\ & (\inst|s_memory~93_q\ & ((\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~93_q\,
	datab => \inst|s_memory~213_combout\,
	datac => \inst|s_memory~125_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~214_combout\);

-- Location: LCCOMB_X109_Y40_N6
\inst|s_memory~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~77feeder_combout\ = \SW4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW4~input_o\,
	combout => \inst|s_memory~77feeder_combout\);

-- Location: FF_X109_Y40_N7
\inst|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~77feeder_combout\,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~77_q\);

-- Location: FF_X111_Y40_N25
\inst|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~109_q\);

-- Location: LCCOMB_X114_Y41_N14
\inst|s_memory~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~45feeder_combout\ = \SW4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW4~input_o\,
	combout => \inst|s_memory~45feeder_combout\);

-- Location: FF_X114_Y41_N15
\inst|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_memory~45feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~45_q\);

-- Location: FF_X113_Y40_N23
\inst|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW4~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~13_q\);

-- Location: LCCOMB_X113_Y40_N22
\inst|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~215_combout\ = (\SW2~input_o\ & ((\inst|s_memory~45_q\) # ((\SW3~input_o\)))) # (!\SW2~input_o\ & (((\inst|s_memory~13_q\ & !\SW3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2~input_o\,
	datab => \inst|s_memory~45_q\,
	datac => \inst|s_memory~13_q\,
	datad => \SW3~input_o\,
	combout => \inst|s_memory~215_combout\);

-- Location: LCCOMB_X111_Y40_N24
\inst|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~216_combout\ = (\SW3~input_o\ & ((\inst|s_memory~215_combout\ & ((\inst|s_memory~109_q\))) # (!\inst|s_memory~215_combout\ & (\inst|s_memory~77_q\)))) # (!\SW3~input_o\ & (((\inst|s_memory~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datab => \inst|s_memory~77_q\,
	datac => \inst|s_memory~109_q\,
	datad => \inst|s_memory~215_combout\,
	combout => \inst|s_memory~216_combout\);

-- Location: LCCOMB_X111_Y40_N2
\inst|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~217_combout\ = (\SW0~input_o\ & (((\SW1~input_o\)))) # (!\SW0~input_o\ & ((\SW1~input_o\ & (\inst|s_memory~214_combout\)) # (!\SW1~input_o\ & ((\inst|s_memory~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~214_combout\,
	datab => \inst|s_memory~216_combout\,
	datac => \SW0~input_o\,
	datad => \SW1~input_o\,
	combout => \inst|s_memory~217_combout\);

-- Location: LCCOMB_X111_Y41_N28
\inst|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~220_combout\ = (\inst|s_memory~217_combout\ & ((\inst|s_memory~219_combout\) # ((!\SW0~input_o\)))) # (!\inst|s_memory~217_combout\ & (((\inst|s_memory~212_combout\ & \SW0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~219_combout\,
	datab => \inst|s_memory~212_combout\,
	datac => \inst|s_memory~217_combout\,
	datad => \SW0~input_o\,
	combout => \inst|s_memory~220_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


