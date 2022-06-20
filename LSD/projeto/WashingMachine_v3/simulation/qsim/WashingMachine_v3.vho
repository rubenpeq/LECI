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

-- DATE "06/20/2022 22:41:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END WashingMachine_v3;

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
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
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
SIGNAL \reg|p_out~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \reg|p_out~0_combout\ : std_logic;
SIGNAL \display_decoder|Equal1~0_combout\ : std_logic;
SIGNAL \top_level|Selector2~0_combout\ : std_logic;
SIGNAL \top_level|Selector1~0_combout\ : std_logic;
SIGNAL \top_level|Selector19~0_combout\ : std_logic;
SIGNAL \top_level|Selector19~1_combout\ : std_logic;
SIGNAL \top_level|Selector13~0_combout\ : std_logic;
SIGNAL \top_level|Selector13~1_combout\ : std_logic;
SIGNAL \top_level|Selector13~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \reg|st_out~0_combout\ : std_logic;
SIGNAL \reg|st_out~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \reg|lid_out~0_combout\ : std_logic;
SIGNAL \reg|lid_out~q\ : std_logic;
SIGNAL \top_level|Selector17~3_combout\ : std_logic;
SIGNAL \timer_aux|Add0~6_combout\ : std_logic;
SIGNAL \top_level|Selector16~0_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tsoak_335~combout\ : std_logic;
SIGNAL \reg|reset_out~q\ : std_logic;
SIGNAL \top_level|s_currentState~9_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tsoak~q\ : std_logic;
SIGNAL \top_level|Selector11~0_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Trinse_316~combout\ : std_logic;
SIGNAL \top_level|s_currentState~10_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Trinse~q\ : std_logic;
SIGNAL \timer_aux|Add0~0_combout\ : std_logic;
SIGNAL \top_level|Selector7~0_combout\ : std_logic;
SIGNAL \top_level|Selector7~1_combout\ : std_logic;
SIGNAL \top_level|Selector7~2_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tspin_278~combout\ : std_logic;
SIGNAL \top_level|s_currentState~11_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tspin~q\ : std_logic;
SIGNAL \top_level|s_stateChanged~0_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~1_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~2_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~3_combout\ : std_logic;
SIGNAL \top_level|s_stateChanged~q\ : std_logic;
SIGNAL \top_level|Selector17~4_combout\ : std_logic;
SIGNAL \top_level|Selector17~2_combout\ : std_logic;
SIGNAL \top_level|Selector18~0_combout\ : std_logic;
SIGNAL \top_level|s_timeEnable~combout\ : std_logic;
SIGNAL \timer_aux|s_counter~6_combout\ : std_logic;
SIGNAL \timer_aux|s_counter~7_combout\ : std_logic;
SIGNAL \timer_aux|Add0~1_combout\ : std_logic;
SIGNAL \timer_aux|Add0~2_combout\ : std_logic;
SIGNAL \timer_aux|Add0~3_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[1]~0_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[1]~1_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[1]~2_combout\ : std_logic;
SIGNAL \timer_aux|Add0~4_combout\ : std_logic;
SIGNAL \timer_aux|Add0~5_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[2]~8_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[2]~9_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[3]~3_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[3]~4_combout\ : std_logic;
SIGNAL \timer_aux|s_counter[3]~5_combout\ : std_logic;
SIGNAL \timer_aux|Equal0~3_combout\ : std_logic;
SIGNAL \timer_aux|s_cntZero~0_combout\ : std_logic;
SIGNAL \timer_aux|s_cntZero~q\ : std_logic;
SIGNAL \top_level|Selector9~0_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Trm_water_297~combout\ : std_logic;
SIGNAL \top_level|s_currentState~12_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Trm_water~q\ : std_logic;
SIGNAL \top_level|Selector0~0_combout\ : std_logic;
SIGNAL \top_level|Selector0~1_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tfinished_259~combout\ : std_logic;
SIGNAL \top_level|s_currentState~13_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tfinished~q\ : std_logic;
SIGNAL \top_level|Selector15~0_combout\ : std_logic;
SIGNAL \top_level|Selector15~1_combout\ : std_logic;
SIGNAL \top_level|s_nextState.Tidle_354~combout\ : std_logic;
SIGNAL \top_level|s_currentState~8_combout\ : std_logic;
SIGNAL \top_level|s_currentState.Tidle~q\ : std_logic;
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
SIGNAL \timer_aux|s_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \top_level|s_mode\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \reg|p_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \top_level|s_nextStateAUX\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_CLOCK_50~input_o\ : std_logic;
SIGNAL \top_level|ALT_INV_s_mode\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \display_decoder|ALT_INV_time1[6]~0_combout\ : std_logic;
SIGNAL \display_decoder|ALT_INV_time0[6]~5_combout\ : std_logic;
SIGNAL \display_decoder|ALT_INV_Equal1~1_combout\ : std_logic;

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
\ALT_INV_CLOCK_50~input_o\ <= NOT \CLOCK_50~input_o\;
\top_level|ALT_INV_s_mode\(0) <= NOT \top_level|s_mode\(0);
\top_level|ALT_INV_s_mode\(1) <= NOT \top_level|s_mode\(1);
\display_decoder|ALT_INV_time1[6]~0_combout\ <= NOT \display_decoder|time1[6]~0_combout\;
\display_decoder|ALT_INV_time0[6]~5_combout\ <= NOT \display_decoder|time0[6]~5_combout\;
\display_decoder|ALT_INV_Equal1~1_combout\ <= NOT \display_decoder|Equal1~1_combout\;

\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|s_currentState.Tidle~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|ALT_INV_s_mode\(1),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|Selector15~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|ALT_INV_s_mode\(0),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

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

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_level|ALT_INV_s_mode\(1),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\reg|p_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|p_out~1_combout\ = (\SW[0]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \reg|p_out~1_combout\);

\reg|p_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \reg|p_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|p_out\(0));

\top_level|s_mode[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_mode\(0) = (\top_level|s_currentState.Tidle~q\ & ((\top_level|s_mode\(0)))) # (!\top_level|s_currentState.Tidle~q\ & (\reg|p_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|p_out\(0),
	datac => \top_level|s_mode\(0),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|s_mode\(0));

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\reg|p_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|p_out~0_combout\ = (\SW[1]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \reg|p_out~0_combout\);

\reg|p_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \reg|p_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|p_out\(1));

\top_level|s_mode[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_mode\(1) = (\top_level|s_currentState.Tidle~q\ & ((\top_level|s_mode\(1)))) # (!\top_level|s_currentState.Tidle~q\ & (\reg|p_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|p_out\(1),
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|s_mode\(1));

\display_decoder|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|Equal1~0_combout\ = (\top_level|s_mode\(0) & !\top_level|s_mode\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(0),
	datad => \top_level|s_mode\(1),
	combout => \display_decoder|Equal1~0_combout\);

\top_level|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector2~0_combout\ = (\top_level|s_currentState.Trm_water~q\ & !\top_level|s_nextStateAUX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datad => \top_level|s_nextStateAUX\(0),
	combout => \top_level|Selector2~0_combout\);

\top_level|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector1~0_combout\ = (\top_level|s_currentState.Trm_water~q\ & (\top_level|s_nextStateAUX\(0) $ (\top_level|s_nextStateAUX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datac => \top_level|s_nextStateAUX\(0),
	datad => \top_level|s_nextStateAUX\(1),
	combout => \top_level|Selector1~0_combout\);

\top_level|s_nextStateAUX[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextStateAUX\(1) = (\top_level|Selector19~1_combout\ & (\top_level|Selector1~0_combout\)) # (!\top_level|Selector19~1_combout\ & ((\top_level|s_nextStateAUX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector1~0_combout\,
	datac => \top_level|s_nextStateAUX\(1),
	datad => \top_level|Selector19~1_combout\,
	combout => \top_level|s_nextStateAUX\(1));

\top_level|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector19~0_combout\ = (\top_level|s_mode\(0) & (!\top_level|s_mode\(1) & ((\top_level|s_nextStateAUX\(0)) # (!\top_level|s_nextStateAUX\(1))))) # (!\top_level|s_mode\(0) & (\top_level|s_mode\(1) & ((\top_level|s_nextStateAUX\(1)) # 
-- (!\top_level|s_nextStateAUX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(0),
	datab => \top_level|s_nextStateAUX\(0),
	datac => \top_level|s_nextStateAUX\(1),
	datad => \top_level|s_mode\(1),
	combout => \top_level|Selector19~0_combout\);

\top_level|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector19~1_combout\ = ((\top_level|s_currentState.Trm_water~q\ & (\timer_aux|s_cntZero~q\ & \top_level|Selector19~0_combout\))) # (!\top_level|s_currentState.Tidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \timer_aux|s_cntZero~q\,
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|Selector19~0_combout\,
	combout => \top_level|Selector19~1_combout\);

\top_level|s_nextStateAUX[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextStateAUX\(0) = (\top_level|Selector19~1_combout\ & (\top_level|Selector2~0_combout\)) # (!\top_level|Selector19~1_combout\ & ((\top_level|s_nextStateAUX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector2~0_combout\,
	datac => \top_level|s_nextStateAUX\(0),
	datad => \top_level|Selector19~1_combout\,
	combout => \top_level|s_nextStateAUX\(0));

\top_level|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector13~0_combout\ = (\top_level|s_currentState.Trm_water~q\ & (\display_decoder|Equal1~0_combout\ & (\top_level|s_nextStateAUX\(0) $ (!\top_level|s_nextStateAUX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \display_decoder|Equal1~0_combout\,
	datac => \top_level|s_nextStateAUX\(0),
	datad => \top_level|s_nextStateAUX\(1),
	combout => \top_level|Selector13~0_combout\);

\top_level|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector13~1_combout\ = (!\top_level|s_currentState.Tidle~q\ & (\top_level|s_mode\(1) $ (\top_level|s_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_mode\(1),
	datac => \top_level|s_mode\(0),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|Selector13~1_combout\);

\top_level|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector13~2_combout\ = (\top_level|Selector13~0_combout\) # ((\top_level|Selector13~1_combout\) # ((\top_level|s_currentState.Tsoak~q\ & !\timer_aux|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|Selector13~0_combout\,
	datab => \top_level|Selector13~1_combout\,
	datac => \top_level|s_currentState.Tsoak~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector13~2_combout\);

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\reg|st_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|st_out~0_combout\ = (!\SW[3]~input_o\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \KEY[0]~input_o\,
	combout => \reg|st_out~0_combout\);

\reg|st_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \reg|st_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|st_out~q\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\reg|lid_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|lid_out~0_combout\ = (\SW[2]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \reg|lid_out~0_combout\);

\reg|lid_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \reg|lid_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|lid_out~q\);

\top_level|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector17~3_combout\ = (\reg|st_out~q\ & !\reg|lid_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|st_out~q\,
	datad => \reg|lid_out~q\,
	combout => \top_level|Selector17~3_combout\);

\timer_aux|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~6_combout\ = (!\top_level|s_currentState.Tidle~q\ & ((\top_level|s_mode\(1)) # (\top_level|s_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datab => \top_level|s_mode\(0),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \timer_aux|Add0~6_combout\);

\top_level|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector16~0_combout\ = (\top_level|Selector17~3_combout\ & ((\timer_aux|s_cntZero~q\) # ((!\top_level|s_currentState.Trm_water~q\)))) # (!\top_level|Selector17~3_combout\ & (!\timer_aux|Add0~6_combout\ & ((\timer_aux|s_cntZero~q\) # 
-- (!\top_level|s_currentState.Trm_water~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|Selector17~3_combout\,
	datab => \timer_aux|s_cntZero~q\,
	datac => \top_level|s_currentState.Trm_water~q\,
	datad => \timer_aux|Add0~6_combout\,
	combout => \top_level|Selector16~0_combout\);

\top_level|s_nextState.Tsoak_335\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tsoak_335~combout\ = (\top_level|Selector16~0_combout\ & (\top_level|Selector13~2_combout\)) # (!\top_level|Selector16~0_combout\ & ((\top_level|s_nextState.Tsoak_335~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector13~2_combout\,
	datac => \top_level|s_nextState.Tsoak_335~combout\,
	datad => \top_level|Selector16~0_combout\,
	combout => \top_level|s_nextState.Tsoak_335~combout\);

\reg|reset_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SW[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reset_out~q\);

\top_level|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~9_combout\ = (\top_level|s_nextState.Tsoak_335~combout\ & !\reg|reset_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tsoak_335~combout\,
	datad => \reg|reset_out~q\,
	combout => \top_level|s_currentState~9_combout\);

\top_level|s_currentState.Tsoak\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tsoak~q\);

\top_level|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector11~0_combout\ = (\timer_aux|s_cntZero~q\ & (\top_level|s_currentState.Tsoak~q\)) # (!\timer_aux|s_cntZero~q\ & ((\top_level|s_currentState.Trinse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tsoak~q\,
	datab => \top_level|s_currentState.Trinse~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector11~0_combout\);

\top_level|s_nextState.Trinse_316\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Trinse_316~combout\ = (\top_level|Selector16~0_combout\ & (\top_level|Selector11~0_combout\)) # (!\top_level|Selector16~0_combout\ & ((\top_level|s_nextState.Trinse_316~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector11~0_combout\,
	datac => \top_level|s_nextState.Trinse_316~combout\,
	datad => \top_level|Selector16~0_combout\,
	combout => \top_level|s_nextState.Trinse_316~combout\);

\top_level|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~10_combout\ = (\top_level|s_nextState.Trinse_316~combout\ & !\reg|reset_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Trinse_316~combout\,
	datad => \reg|reset_out~q\,
	combout => \top_level|s_currentState~10_combout\);

\top_level|s_currentState.Trinse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Trinse~q\);

\timer_aux|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~0_combout\ = (\top_level|s_currentState.Tsoak~q\) # ((\top_level|s_currentState.Trinse~q\) # ((\top_level|s_mode\(0) & !\top_level|s_currentState.Tidle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tsoak~q\,
	datab => \top_level|s_currentState.Trinse~q\,
	datac => \top_level|s_mode\(0),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \timer_aux|Add0~0_combout\);

\top_level|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector7~0_combout\ = (\top_level|s_mode\(1) & ((\top_level|s_mode\(0) & ((!\top_level|s_currentState.Tidle~q\))) # (!\top_level|s_mode\(0) & (\top_level|s_currentState.Trm_water~q\)))) # (!\top_level|s_mode\(1) & 
-- (\top_level|s_currentState.Trm_water~q\ & (\top_level|s_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|s_mode\(1),
	datac => \top_level|s_mode\(0),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|Selector7~0_combout\);

\top_level|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector7~1_combout\ = (\top_level|s_nextStateAUX\(0) & ((\top_level|s_mode\(1) & ((\top_level|s_nextStateAUX\(1)) # (\top_level|s_mode\(0)))) # (!\top_level|s_mode\(1) & (!\top_level|s_nextStateAUX\(1))))) # (!\top_level|s_nextStateAUX\(0) & 
-- (\top_level|s_mode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextStateAUX\(0),
	datab => \top_level|s_mode\(1),
	datac => \top_level|s_nextStateAUX\(1),
	datad => \top_level|s_mode\(0),
	combout => \top_level|Selector7~1_combout\);

\top_level|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector7~2_combout\ = (\top_level|s_currentState.Tspin~q\ & (((\top_level|Selector7~0_combout\ & \top_level|Selector7~1_combout\)) # (!\timer_aux|s_cntZero~q\))) # (!\top_level|s_currentState.Tspin~q\ & (((\top_level|Selector7~0_combout\ & 
-- \top_level|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tspin~q\,
	datab => \timer_aux|s_cntZero~q\,
	datac => \top_level|Selector7~0_combout\,
	datad => \top_level|Selector7~1_combout\,
	combout => \top_level|Selector7~2_combout\);

\top_level|s_nextState.Tspin_278\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tspin_278~combout\ = (\top_level|Selector16~0_combout\ & (\top_level|Selector7~2_combout\)) # (!\top_level|Selector16~0_combout\ & ((\top_level|s_nextState.Tspin_278~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector7~2_combout\,
	datac => \top_level|s_nextState.Tspin_278~combout\,
	datad => \top_level|Selector16~0_combout\,
	combout => \top_level|s_nextState.Tspin_278~combout\);

\top_level|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~11_combout\ = (\top_level|s_nextState.Tspin_278~combout\ & !\reg|reset_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tspin_278~combout\,
	datad => \reg|reset_out~q\,
	combout => \top_level|s_currentState~11_combout\);

\top_level|s_currentState.Tspin\ : dffeas
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
	q => \top_level|s_currentState.Tspin~q\);

\top_level|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~0_combout\ = (\top_level|s_currentState.Tspin~q\ & ((\top_level|s_currentState.Tfinished~q\ $ (\top_level|s_nextState.Tfinished_259~combout\)) # (!\top_level|s_nextState.Tspin_278~combout\))) # 
-- (!\top_level|s_currentState.Tspin~q\ & ((\top_level|s_nextState.Tspin_278~combout\) # (\top_level|s_currentState.Tfinished~q\ $ (\top_level|s_nextState.Tfinished_259~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tspin~q\,
	datab => \top_level|s_nextState.Tspin_278~combout\,
	datac => \top_level|s_currentState.Tfinished~q\,
	datad => \top_level|s_nextState.Tfinished_259~combout\,
	combout => \top_level|s_stateChanged~0_combout\);

\top_level|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~1_combout\ = (\top_level|s_currentState.Trinse~q\ & ((\top_level|s_currentState.Trm_water~q\ $ (\top_level|s_nextState.Trm_water_297~combout\)) # (!\top_level|s_nextState.Trinse_316~combout\))) # 
-- (!\top_level|s_currentState.Trinse~q\ & ((\top_level|s_nextState.Trinse_316~combout\) # (\top_level|s_currentState.Trm_water~q\ $ (\top_level|s_nextState.Trm_water_297~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trinse~q\,
	datab => \top_level|s_nextState.Trinse_316~combout\,
	datac => \top_level|s_currentState.Trm_water~q\,
	datad => \top_level|s_nextState.Trm_water_297~combout\,
	combout => \top_level|s_stateChanged~1_combout\);

\top_level|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~2_combout\ = (\top_level|s_currentState.Tidle~q\ & ((\top_level|s_nextState.Tidle_354~combout\) # (\top_level|s_currentState.Tsoak~q\ $ (\top_level|s_nextState.Tsoak_335~combout\)))) # (!\top_level|s_currentState.Tidle~q\ & 
-- ((\top_level|s_currentState.Tsoak~q\ $ (\top_level|s_nextState.Tsoak_335~combout\)) # (!\top_level|s_nextState.Tidle_354~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tidle~q\,
	datab => \top_level|s_nextState.Tidle_354~combout\,
	datac => \top_level|s_currentState.Tsoak~q\,
	datad => \top_level|s_nextState.Tsoak_335~combout\,
	combout => \top_level|s_stateChanged~2_combout\);

\top_level|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_stateChanged~3_combout\ = (!\reg|reset_out~q\ & (!\top_level|s_stateChanged~0_combout\ & (!\top_level|s_stateChanged~1_combout\ & !\top_level|s_stateChanged~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|reset_out~q\,
	datab => \top_level|s_stateChanged~0_combout\,
	datac => \top_level|s_stateChanged~1_combout\,
	datad => \top_level|s_stateChanged~2_combout\,
	combout => \top_level|s_stateChanged~3_combout\);

\top_level|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_stateChanged~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_stateChanged~q\);

\top_level|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector17~4_combout\ = (\top_level|s_currentState.Tidle~q\ & (((!\top_level|s_timeEnable~combout\)))) # (!\top_level|s_currentState.Tidle~q\ & ((\top_level|s_mode\(1)) # ((\top_level|s_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datab => \top_level|s_mode\(0),
	datac => \top_level|s_currentState.Tidle~q\,
	datad => \top_level|s_timeEnable~combout\,
	combout => \top_level|Selector17~4_combout\);

\top_level|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector17~2_combout\ = (\top_level|Selector17~4_combout\ & ((\top_level|s_currentState.Tidle~q\) # ((\reg|st_out~q\ & !\reg|lid_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tidle~q\,
	datab => \reg|st_out~q\,
	datac => \reg|lid_out~q\,
	datad => \top_level|Selector17~4_combout\,
	combout => \top_level|Selector17~2_combout\);

\top_level|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector18~0_combout\ = (\reg|st_out~q\) # (!\top_level|s_currentState.Tidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|st_out~q\,
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|Selector18~0_combout\);

\top_level|s_timeEnable\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_timeEnable~combout\ = (\top_level|Selector18~0_combout\ & (\top_level|Selector17~2_combout\)) # (!\top_level|Selector18~0_combout\ & ((\top_level|s_timeEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector17~2_combout\,
	datac => \top_level|s_timeEnable~combout\,
	datad => \top_level|Selector18~0_combout\,
	combout => \top_level|s_timeEnable~combout\);

\timer_aux|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter~6_combout\ = \timer_aux|s_counter\(0) $ (((!\timer_aux|Equal0~3_combout\ & \top_level|s_timeEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(0),
	datab => \timer_aux|Equal0~3_combout\,
	datad => \top_level|s_timeEnable~combout\,
	combout => \timer_aux|s_counter~6_combout\);

\timer_aux|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter~7_combout\ = (!\SW[3]~input_o\ & ((\top_level|s_stateChanged~q\ & ((\timer_aux|s_counter~6_combout\))) # (!\top_level|s_stateChanged~q\ & (\timer_aux|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \top_level|s_stateChanged~q\,
	datac => \timer_aux|Add0~0_combout\,
	datad => \timer_aux|s_counter~6_combout\,
	combout => \timer_aux|s_counter~7_combout\);

\timer_aux|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \timer_aux|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(0));

\timer_aux|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~1_combout\ = (\top_level|s_stateChanged~q\ & ((!\timer_aux|s_counter\(0)))) # (!\top_level|s_stateChanged~q\ & (\timer_aux|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Add0~0_combout\,
	datac => \top_level|s_stateChanged~q\,
	datad => \timer_aux|s_counter\(0),
	combout => \timer_aux|Add0~1_combout\);

\timer_aux|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~2_combout\ = (\top_level|s_currentState.Trm_water~q\) # ((\top_level|s_currentState.Tfinished~q\) # ((\top_level|s_mode\(1) & !\top_level|s_currentState.Tidle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|s_currentState.Tfinished~q\,
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \timer_aux|Add0~2_combout\);

\timer_aux|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~3_combout\ = (\top_level|s_stateChanged~q\ & ((!\timer_aux|s_counter\(1)))) # (!\top_level|s_stateChanged~q\ & (\timer_aux|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Add0~2_combout\,
	datac => \top_level|s_stateChanged~q\,
	datad => \timer_aux|s_counter\(1),
	combout => \timer_aux|Add0~3_combout\);

\timer_aux|s_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[1]~0_combout\ = (\top_level|s_stateChanged~q\ & (!\SW[3]~input_o\ & ((\timer_aux|Equal0~3_combout\) # (!\top_level|s_timeEnable~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_stateChanged~q\,
	datab => \timer_aux|Equal0~3_combout\,
	datac => \top_level|s_timeEnable~combout\,
	datad => \SW[3]~input_o\,
	combout => \timer_aux|s_counter[1]~0_combout\);

\timer_aux|s_counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[1]~1_combout\ = (\timer_aux|s_counter[1]~0_combout\ & (((!\timer_aux|s_counter\(1))))) # (!\timer_aux|s_counter[1]~0_combout\ & (\timer_aux|Add0~1_combout\ $ ((!\timer_aux|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Add0~1_combout\,
	datab => \timer_aux|Add0~3_combout\,
	datac => \timer_aux|s_counter[1]~0_combout\,
	datad => \timer_aux|s_counter\(1),
	combout => \timer_aux|s_counter[1]~1_combout\);

\timer_aux|s_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[1]~2_combout\ = (!\SW[3]~input_o\ & !\timer_aux|s_counter[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \timer_aux|s_counter[1]~1_combout\,
	combout => \timer_aux|s_counter[1]~2_combout\);

\timer_aux|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \timer_aux|s_counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(1));

\timer_aux|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~4_combout\ = (\top_level|s_currentState.Tsoak~q\) # ((!\top_level|s_currentState.Tidle~q\ & ((\top_level|s_mode\(1)) # (\top_level|s_mode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tidle~q\,
	datab => \top_level|s_currentState.Tsoak~q\,
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_mode\(0),
	combout => \timer_aux|Add0~4_combout\);

\timer_aux|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Add0~5_combout\ = (\top_level|s_stateChanged~q\ & (((!\timer_aux|s_counter\(2))))) # (!\top_level|s_stateChanged~q\ & ((\top_level|s_currentState.Tspin~q\) # ((\timer_aux|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_stateChanged~q\,
	datab => \top_level|s_currentState.Tspin~q\,
	datac => \timer_aux|s_counter\(2),
	datad => \timer_aux|Add0~4_combout\,
	combout => \timer_aux|Add0~5_combout\);

\timer_aux|s_counter[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[2]~8_combout\ = (!\timer_aux|s_counter[1]~0_combout\ & (\timer_aux|Add0~5_combout\ $ (((!\timer_aux|Add0~1_combout\ & !\timer_aux|Add0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Add0~5_combout\,
	datab => \timer_aux|Add0~1_combout\,
	datac => \timer_aux|Add0~3_combout\,
	datad => \timer_aux|s_counter[1]~0_combout\,
	combout => \timer_aux|s_counter[2]~8_combout\);

\timer_aux|s_counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[2]~9_combout\ = (!\SW[3]~input_o\ & (!\timer_aux|s_counter[2]~8_combout\ & ((\timer_aux|s_counter\(2)) # (!\timer_aux|s_counter[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \timer_aux|s_counter[2]~8_combout\,
	datac => \timer_aux|s_counter[1]~0_combout\,
	datad => \timer_aux|s_counter\(2),
	combout => \timer_aux|s_counter[2]~9_combout\);

\timer_aux|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \timer_aux|s_counter[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(2));

\timer_aux|s_counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[3]~3_combout\ = (\top_level|s_stateChanged~q\ & (!\timer_aux|s_counter\(3))) # (!\top_level|s_stateChanged~q\ & (((\top_level|s_currentState.Trinse~q\) # (\timer_aux|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \top_level|s_currentState.Trinse~q\,
	datac => \timer_aux|Add0~6_combout\,
	datad => \top_level|s_stateChanged~q\,
	combout => \timer_aux|s_counter[3]~3_combout\);

\timer_aux|s_counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[3]~4_combout\ = \timer_aux|s_counter[3]~3_combout\ $ (((\timer_aux|Add0~1_combout\) # ((\timer_aux|Add0~3_combout\) # (\timer_aux|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Add0~1_combout\,
	datab => \timer_aux|Add0~3_combout\,
	datac => \timer_aux|Add0~5_combout\,
	datad => \timer_aux|s_counter[3]~3_combout\,
	combout => \timer_aux|s_counter[3]~4_combout\);

\timer_aux|s_counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_counter[3]~5_combout\ = (!\SW[3]~input_o\ & ((\timer_aux|s_counter[1]~0_combout\ & (\timer_aux|s_counter\(3))) # (!\timer_aux|s_counter[1]~0_combout\ & ((\timer_aux|s_counter[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \timer_aux|s_counter[1]~0_combout\,
	datac => \timer_aux|s_counter\(3),
	datad => \timer_aux|s_counter[3]~4_combout\,
	combout => \timer_aux|s_counter[3]~5_combout\);

\timer_aux|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \timer_aux|s_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_counter\(3));

\timer_aux|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~3_combout\ = (\timer_aux|s_counter\(1) & (\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(0) & \timer_aux|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(1),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(0),
	datad => \timer_aux|s_counter\(3),
	combout => \timer_aux|Equal0~3_combout\);

\timer_aux|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|s_cntZero~0_combout\ = (\timer_aux|Equal0~3_combout\ & (\top_level|s_stateChanged~q\ & !\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|Equal0~3_combout\,
	datab => \top_level|s_stateChanged~q\,
	datad => \SW[3]~input_o\,
	combout => \timer_aux|s_cntZero~0_combout\);

\timer_aux|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~input_o\,
	d => \timer_aux|s_cntZero~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_aux|s_cntZero~q\);

\top_level|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector9~0_combout\ = (\timer_aux|s_cntZero~q\ & ((\top_level|s_currentState.Trinse~q\) # (\top_level|s_currentState.Tspin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_cntZero~q\,
	datab => \top_level|s_currentState.Trinse~q\,
	datac => \top_level|s_currentState.Tspin~q\,
	combout => \top_level|Selector9~0_combout\);

\top_level|s_nextState.Trm_water_297\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Trm_water_297~combout\ = (\top_level|Selector16~0_combout\ & (\top_level|Selector9~0_combout\)) # (!\top_level|Selector16~0_combout\ & ((\top_level|s_nextState.Trm_water_297~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector9~0_combout\,
	datac => \top_level|s_nextState.Trm_water_297~combout\,
	datad => \top_level|Selector16~0_combout\,
	combout => \top_level|s_nextState.Trm_water_297~combout\);

\top_level|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~12_combout\ = (\top_level|s_nextState.Trm_water_297~combout\ & !\reg|reset_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Trm_water_297~combout\,
	datad => \reg|reset_out~q\,
	combout => \top_level|s_currentState~12_combout\);

\top_level|s_currentState.Trm_water\ : dffeas
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
	q => \top_level|s_currentState.Trm_water~q\);

\top_level|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector0~0_combout\ = (\top_level|s_mode\(1) & ((\top_level|s_mode\(0)) # ((!\top_level|s_nextStateAUX\(1) & \top_level|s_nextStateAUX\(0))))) # (!\top_level|s_mode\(1) & (((\top_level|s_nextStateAUX\(1) & !\top_level|s_nextStateAUX\(0))) # 
-- (!\top_level|s_mode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datab => \top_level|s_mode\(0),
	datac => \top_level|s_nextStateAUX\(1),
	datad => \top_level|s_nextStateAUX\(0),
	combout => \top_level|Selector0~0_combout\);

\top_level|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector0~1_combout\ = (\top_level|s_currentState.Trm_water~q\ & ((\top_level|Selector0~0_combout\) # ((\top_level|s_currentState.Tfinished~q\ & !\timer_aux|s_cntZero~q\)))) # (!\top_level|s_currentState.Trm_water~q\ & 
-- (((\top_level|s_currentState.Tfinished~q\ & !\timer_aux|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Trm_water~q\,
	datab => \top_level|Selector0~0_combout\,
	datac => \top_level|s_currentState.Tfinished~q\,
	datad => \timer_aux|s_cntZero~q\,
	combout => \top_level|Selector0~1_combout\);

\top_level|s_nextState.Tfinished_259\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tfinished_259~combout\ = (\top_level|Selector16~0_combout\ & (\top_level|Selector0~1_combout\)) # (!\top_level|Selector16~0_combout\ & ((\top_level|s_nextState.Tfinished_259~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector0~1_combout\,
	datac => \top_level|s_nextState.Tfinished_259~combout\,
	datad => \top_level|Selector16~0_combout\,
	combout => \top_level|s_nextState.Tfinished_259~combout\);

\top_level|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~13_combout\ = (\top_level|s_nextState.Tfinished_259~combout\ & !\reg|reset_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tfinished_259~combout\,
	datad => \reg|reset_out~q\,
	combout => \top_level|s_currentState~13_combout\);

\top_level|s_currentState.Tfinished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tfinished~q\);

\top_level|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector15~0_combout\ = (!\top_level|s_mode\(1) & !\top_level|s_mode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_level|s_mode\(1),
	datad => \top_level|s_mode\(0),
	combout => \top_level|Selector15~0_combout\);

\top_level|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Selector15~1_combout\ = (\top_level|s_currentState.Tfinished~q\ & ((\timer_aux|s_cntZero~q\) # ((\top_level|Selector15~0_combout\ & !\top_level|s_currentState.Tidle~q\)))) # (!\top_level|s_currentState.Tfinished~q\ & 
-- (((\top_level|Selector15~0_combout\ & !\top_level|s_currentState.Tidle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_currentState.Tfinished~q\,
	datab => \timer_aux|s_cntZero~q\,
	datac => \top_level|Selector15~0_combout\,
	datad => \top_level|s_currentState.Tidle~q\,
	combout => \top_level|Selector15~1_combout\);

\top_level|s_nextState.Tidle_354\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_nextState.Tidle_354~combout\ = (\top_level|Selector16~0_combout\ & (\top_level|Selector15~1_combout\)) # (!\top_level|Selector16~0_combout\ & ((\top_level|s_nextState.Tidle_354~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|Selector15~1_combout\,
	datac => \top_level|s_nextState.Tidle_354~combout\,
	datad => \top_level|Selector16~0_combout\,
	combout => \top_level|s_nextState.Tidle_354~combout\);

\top_level|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~8_combout\ = (!\top_level|s_nextState.Tidle_354~combout\ & !\reg|reset_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_nextState.Tidle_354~combout\,
	datab => \reg|reset_out~q\,
	combout => \top_level|s_currentState~8_combout\);

\top_level|s_currentState.Tidle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \top_level|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.Tidle~q\);

\display_decoder|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|Equal1~1_combout\ = (\top_level|s_mode\(1) & !\top_level|s_mode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_mode\(1),
	datad => \top_level|s_mode\(0),
	combout => \display_decoder|Equal1~1_combout\);

\display_decoder|time0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[0]~0_combout\ = (\timer_aux|s_counter\(1) & (\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(0) $ (\timer_aux|s_counter\(2))))) # (!\timer_aux|s_counter\(1) & (!\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(0) & 
-- !\timer_aux|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(1),
	datab => \timer_aux|s_counter\(3),
	datac => \timer_aux|s_counter\(0),
	datad => \timer_aux|s_counter\(2),
	combout => \display_decoder|time0[0]~0_combout\);

\display_decoder|time0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[1]~1_combout\ = (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(0) $ (\timer_aux|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(0),
	datab => \timer_aux|s_counter\(1),
	datac => \timer_aux|s_counter\(2),
	datad => \timer_aux|s_counter\(3),
	combout => \display_decoder|time0[1]~1_combout\);

\timer_aux|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~0_combout\ = (\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(0) & (\timer_aux|s_counter\(3) & !\timer_aux|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(2),
	datab => \timer_aux|s_counter\(0),
	datac => \timer_aux|s_counter\(3),
	datad => \timer_aux|s_counter\(1),
	combout => \timer_aux|Equal0~0_combout\);

\display_decoder|time0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[3]~2_combout\ = (\timer_aux|s_counter\(1) & (\timer_aux|s_counter\(3) & (\timer_aux|s_counter\(0) $ (\timer_aux|s_counter\(2))))) # (!\timer_aux|s_counter\(1) & (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(3) $ 
-- (\timer_aux|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(1),
	datac => \timer_aux|s_counter\(0),
	datad => \timer_aux|s_counter\(2),
	combout => \display_decoder|time0[3]~2_combout\);

\display_decoder|time0[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[4]~3_combout\ = (\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(0) & ((\timer_aux|s_counter\(3)) # (\timer_aux|s_counter\(1))))) # (!\timer_aux|s_counter\(2) & (\timer_aux|s_counter\(3) $ (((!\timer_aux|s_counter\(1) & 
-- \timer_aux|s_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(3),
	datab => \timer_aux|s_counter\(1),
	datac => \timer_aux|s_counter\(2),
	datad => \timer_aux|s_counter\(0),
	combout => \display_decoder|time0[4]~3_combout\);

\display_decoder|time0[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_decoder|time0[5]~4_combout\ = (\timer_aux|s_counter\(3) & ((\timer_aux|s_counter\(0) & (!\timer_aux|s_counter\(1) & \timer_aux|s_counter\(2))) # (!\timer_aux|s_counter\(0) & ((\timer_aux|s_counter\(2)) # (!\timer_aux|s_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(0),
	datab => \timer_aux|s_counter\(1),
	datac => \timer_aux|s_counter\(2),
	datad => \timer_aux|s_counter\(3),
	combout => \display_decoder|time0[5]~4_combout\);

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

\timer_aux|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~1_combout\ = (\timer_aux|s_counter\(1) & (!\timer_aux|s_counter\(2) & (!\timer_aux|s_counter\(0) & !\timer_aux|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(1),
	datab => \timer_aux|s_counter\(2),
	datac => \timer_aux|s_counter\(0),
	datad => \timer_aux|s_counter\(3),
	combout => \timer_aux|Equal0~1_combout\);

\timer_aux|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_aux|Equal0~2_combout\ = (\timer_aux|s_counter\(0) & (!\timer_aux|s_counter\(1) & (!\timer_aux|s_counter\(2) & !\timer_aux|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_aux|s_counter\(0),
	datab => \timer_aux|s_counter\(1),
	datac => \timer_aux|s_counter\(2),
	datad => \timer_aux|s_counter\(3),
	combout => \timer_aux|Equal0~2_combout\);

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


