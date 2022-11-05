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

-- DATE "05/17/2022 14:37:02"

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

ENTITY 	mini_proj IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mini_proj;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mini_proj IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulse_generator|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[8]~43\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[9]~45\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[10]~47\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[11]~49\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[12]~51\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[13]~53\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[14]~55\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[15]~57\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[16]~59\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[17]~61\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[18]~63\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[19]~65\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[20]~67\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[21]~69\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[22]~71\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[23]~73\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~2_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~3_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[24]~75\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~4_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~4_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~5_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~6_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[0]~27\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[1]~29\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[2]~31\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[3]~33\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[4]~35\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[5]~37\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[6]~39\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[7]~41\ : std_logic;
SIGNAL \pulse_generator|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~3_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~0_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~1_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~0_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~1_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~2_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~5_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~6_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~7_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~8_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~9_combout\ : std_logic;
SIGNAL \pulse_generator|clkOut~q\ : std_logic;
SIGNAL \pulse_generator|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \top_level|s_counter~3_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \top_level|s_counter[2]~1_combout\ : std_logic;
SIGNAL \top_level|Add0~0_combout\ : std_logic;
SIGNAL \top_level|s_counter~0_combout\ : std_logic;
SIGNAL \Bin7Seg|Equal7~0_combout\ : std_logic;
SIGNAL \top_level|s_counter~2_combout\ : std_logic;
SIGNAL \top_level|s_counter~4_combout\ : std_logic;
SIGNAL \top_level|s_counter~5_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~0_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~1_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~2_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~3_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~4_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~5_combout\ : std_logic;
SIGNAL \Bin7Seg|decOut~6_combout\ : std_logic;
SIGNAL \pulse_generator|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \top_level|s_counter\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\pulse_generator|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulse_generator|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7Seg|decOut~0_combout\,
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
	i => \Bin7Seg|decOut~1_combout\,
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
	i => \Bin7Seg|decOut~2_combout\,
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
	i => \Bin7Seg|decOut~3_combout\,
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
	i => \Bin7Seg|decOut~4_combout\,
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
	i => \Bin7Seg|decOut~5_combout\,
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
	i => \Bin7Seg|decOut~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X55_Y14_N6
\pulse_generator|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[0]~26_combout\ = \pulse_generator|s_divCounter\(0) $ (VCC)
-- \pulse_generator|s_divCounter[0]~27\ = CARRY(\pulse_generator|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(0),
	datad => VCC,
	combout => \pulse_generator|s_divCounter[0]~26_combout\,
	cout => \pulse_generator|s_divCounter[0]~27\);

-- Location: LCCOMB_X55_Y14_N22
\pulse_generator|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[8]~42_combout\ = (\pulse_generator|s_divCounter\(8) & (\pulse_generator|s_divCounter[7]~41\ $ (GND))) # (!\pulse_generator|s_divCounter\(8) & (!\pulse_generator|s_divCounter[7]~41\ & VCC))
-- \pulse_generator|s_divCounter[8]~43\ = CARRY((\pulse_generator|s_divCounter\(8) & !\pulse_generator|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(8),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[7]~41\,
	combout => \pulse_generator|s_divCounter[8]~42_combout\,
	cout => \pulse_generator|s_divCounter[8]~43\);

-- Location: LCCOMB_X55_Y14_N24
\pulse_generator|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[9]~44_combout\ = (\pulse_generator|s_divCounter\(9) & (!\pulse_generator|s_divCounter[8]~43\)) # (!\pulse_generator|s_divCounter\(9) & ((\pulse_generator|s_divCounter[8]~43\) # (GND)))
-- \pulse_generator|s_divCounter[9]~45\ = CARRY((!\pulse_generator|s_divCounter[8]~43\) # (!\pulse_generator|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(9),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[8]~43\,
	combout => \pulse_generator|s_divCounter[9]~44_combout\,
	cout => \pulse_generator|s_divCounter[9]~45\);

-- Location: FF_X55_Y14_N25
\pulse_generator|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[9]~44_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(9));

-- Location: LCCOMB_X55_Y14_N26
\pulse_generator|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[10]~46_combout\ = (\pulse_generator|s_divCounter\(10) & (\pulse_generator|s_divCounter[9]~45\ $ (GND))) # (!\pulse_generator|s_divCounter\(10) & (!\pulse_generator|s_divCounter[9]~45\ & VCC))
-- \pulse_generator|s_divCounter[10]~47\ = CARRY((\pulse_generator|s_divCounter\(10) & !\pulse_generator|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(10),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[9]~45\,
	combout => \pulse_generator|s_divCounter[10]~46_combout\,
	cout => \pulse_generator|s_divCounter[10]~47\);

-- Location: FF_X55_Y14_N27
\pulse_generator|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[10]~46_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(10));

-- Location: LCCOMB_X55_Y14_N28
\pulse_generator|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[11]~48_combout\ = (\pulse_generator|s_divCounter\(11) & (!\pulse_generator|s_divCounter[10]~47\)) # (!\pulse_generator|s_divCounter\(11) & ((\pulse_generator|s_divCounter[10]~47\) # (GND)))
-- \pulse_generator|s_divCounter[11]~49\ = CARRY((!\pulse_generator|s_divCounter[10]~47\) # (!\pulse_generator|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(11),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[10]~47\,
	combout => \pulse_generator|s_divCounter[11]~48_combout\,
	cout => \pulse_generator|s_divCounter[11]~49\);

-- Location: FF_X55_Y14_N29
\pulse_generator|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[11]~48_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(11));

-- Location: LCCOMB_X55_Y14_N30
\pulse_generator|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[12]~50_combout\ = (\pulse_generator|s_divCounter\(12) & (\pulse_generator|s_divCounter[11]~49\ $ (GND))) # (!\pulse_generator|s_divCounter\(12) & (!\pulse_generator|s_divCounter[11]~49\ & VCC))
-- \pulse_generator|s_divCounter[12]~51\ = CARRY((\pulse_generator|s_divCounter\(12) & !\pulse_generator|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(12),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[11]~49\,
	combout => \pulse_generator|s_divCounter[12]~50_combout\,
	cout => \pulse_generator|s_divCounter[12]~51\);

-- Location: FF_X55_Y14_N31
\pulse_generator|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[12]~50_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(12));

-- Location: LCCOMB_X55_Y13_N0
\pulse_generator|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[13]~52_combout\ = (\pulse_generator|s_divCounter\(13) & (!\pulse_generator|s_divCounter[12]~51\)) # (!\pulse_generator|s_divCounter\(13) & ((\pulse_generator|s_divCounter[12]~51\) # (GND)))
-- \pulse_generator|s_divCounter[13]~53\ = CARRY((!\pulse_generator|s_divCounter[12]~51\) # (!\pulse_generator|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(13),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[12]~51\,
	combout => \pulse_generator|s_divCounter[13]~52_combout\,
	cout => \pulse_generator|s_divCounter[13]~53\);

-- Location: FF_X56_Y14_N27
\pulse_generator|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_generator|s_divCounter[13]~52_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(13));

-- Location: LCCOMB_X55_Y13_N2
\pulse_generator|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[14]~54_combout\ = (\pulse_generator|s_divCounter\(14) & (\pulse_generator|s_divCounter[13]~53\ $ (GND))) # (!\pulse_generator|s_divCounter\(14) & (!\pulse_generator|s_divCounter[13]~53\ & VCC))
-- \pulse_generator|s_divCounter[14]~55\ = CARRY((\pulse_generator|s_divCounter\(14) & !\pulse_generator|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(14),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[13]~53\,
	combout => \pulse_generator|s_divCounter[14]~54_combout\,
	cout => \pulse_generator|s_divCounter[14]~55\);

-- Location: FF_X56_Y14_N7
\pulse_generator|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_generator|s_divCounter[14]~54_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(14));

-- Location: LCCOMB_X55_Y13_N4
\pulse_generator|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[15]~56_combout\ = (\pulse_generator|s_divCounter\(15) & (!\pulse_generator|s_divCounter[14]~55\)) # (!\pulse_generator|s_divCounter\(15) & ((\pulse_generator|s_divCounter[14]~55\) # (GND)))
-- \pulse_generator|s_divCounter[15]~57\ = CARRY((!\pulse_generator|s_divCounter[14]~55\) # (!\pulse_generator|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(15),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[14]~55\,
	combout => \pulse_generator|s_divCounter[15]~56_combout\,
	cout => \pulse_generator|s_divCounter[15]~57\);

-- Location: FF_X56_Y14_N25
\pulse_generator|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_generator|s_divCounter[15]~56_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(15));

-- Location: LCCOMB_X55_Y13_N6
\pulse_generator|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[16]~58_combout\ = (\pulse_generator|s_divCounter\(16) & (\pulse_generator|s_divCounter[15]~57\ $ (GND))) # (!\pulse_generator|s_divCounter\(16) & (!\pulse_generator|s_divCounter[15]~57\ & VCC))
-- \pulse_generator|s_divCounter[16]~59\ = CARRY((\pulse_generator|s_divCounter\(16) & !\pulse_generator|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(16),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[15]~57\,
	combout => \pulse_generator|s_divCounter[16]~58_combout\,
	cout => \pulse_generator|s_divCounter[16]~59\);

-- Location: FF_X55_Y13_N7
\pulse_generator|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[16]~58_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(16));

-- Location: LCCOMB_X55_Y13_N8
\pulse_generator|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[17]~60_combout\ = (\pulse_generator|s_divCounter\(17) & (!\pulse_generator|s_divCounter[16]~59\)) # (!\pulse_generator|s_divCounter\(17) & ((\pulse_generator|s_divCounter[16]~59\) # (GND)))
-- \pulse_generator|s_divCounter[17]~61\ = CARRY((!\pulse_generator|s_divCounter[16]~59\) # (!\pulse_generator|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(17),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[16]~59\,
	combout => \pulse_generator|s_divCounter[17]~60_combout\,
	cout => \pulse_generator|s_divCounter[17]~61\);

-- Location: FF_X55_Y13_N9
\pulse_generator|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[17]~60_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(17));

-- Location: LCCOMB_X55_Y13_N10
\pulse_generator|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[18]~62_combout\ = (\pulse_generator|s_divCounter\(18) & (\pulse_generator|s_divCounter[17]~61\ $ (GND))) # (!\pulse_generator|s_divCounter\(18) & (!\pulse_generator|s_divCounter[17]~61\ & VCC))
-- \pulse_generator|s_divCounter[18]~63\ = CARRY((\pulse_generator|s_divCounter\(18) & !\pulse_generator|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(18),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[17]~61\,
	combout => \pulse_generator|s_divCounter[18]~62_combout\,
	cout => \pulse_generator|s_divCounter[18]~63\);

-- Location: FF_X55_Y13_N11
\pulse_generator|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[18]~62_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(18));

-- Location: LCCOMB_X55_Y13_N12
\pulse_generator|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[19]~64_combout\ = (\pulse_generator|s_divCounter\(19) & (!\pulse_generator|s_divCounter[18]~63\)) # (!\pulse_generator|s_divCounter\(19) & ((\pulse_generator|s_divCounter[18]~63\) # (GND)))
-- \pulse_generator|s_divCounter[19]~65\ = CARRY((!\pulse_generator|s_divCounter[18]~63\) # (!\pulse_generator|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(19),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[18]~63\,
	combout => \pulse_generator|s_divCounter[19]~64_combout\,
	cout => \pulse_generator|s_divCounter[19]~65\);

-- Location: FF_X55_Y13_N13
\pulse_generator|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[19]~64_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(19));

-- Location: LCCOMB_X55_Y13_N14
\pulse_generator|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[20]~66_combout\ = (\pulse_generator|s_divCounter\(20) & (\pulse_generator|s_divCounter[19]~65\ $ (GND))) # (!\pulse_generator|s_divCounter\(20) & (!\pulse_generator|s_divCounter[19]~65\ & VCC))
-- \pulse_generator|s_divCounter[20]~67\ = CARRY((\pulse_generator|s_divCounter\(20) & !\pulse_generator|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(20),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[19]~65\,
	combout => \pulse_generator|s_divCounter[20]~66_combout\,
	cout => \pulse_generator|s_divCounter[20]~67\);

-- Location: FF_X55_Y13_N15
\pulse_generator|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[20]~66_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(20));

-- Location: LCCOMB_X55_Y13_N16
\pulse_generator|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[21]~68_combout\ = (\pulse_generator|s_divCounter\(21) & (!\pulse_generator|s_divCounter[20]~67\)) # (!\pulse_generator|s_divCounter\(21) & ((\pulse_generator|s_divCounter[20]~67\) # (GND)))
-- \pulse_generator|s_divCounter[21]~69\ = CARRY((!\pulse_generator|s_divCounter[20]~67\) # (!\pulse_generator|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(21),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[20]~67\,
	combout => \pulse_generator|s_divCounter[21]~68_combout\,
	cout => \pulse_generator|s_divCounter[21]~69\);

-- Location: FF_X55_Y13_N17
\pulse_generator|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[21]~68_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(21));

-- Location: LCCOMB_X55_Y13_N18
\pulse_generator|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[22]~70_combout\ = (\pulse_generator|s_divCounter\(22) & (\pulse_generator|s_divCounter[21]~69\ $ (GND))) # (!\pulse_generator|s_divCounter\(22) & (!\pulse_generator|s_divCounter[21]~69\ & VCC))
-- \pulse_generator|s_divCounter[22]~71\ = CARRY((\pulse_generator|s_divCounter\(22) & !\pulse_generator|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(22),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[21]~69\,
	combout => \pulse_generator|s_divCounter[22]~70_combout\,
	cout => \pulse_generator|s_divCounter[22]~71\);

-- Location: FF_X55_Y13_N19
\pulse_generator|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[22]~70_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(22));

-- Location: LCCOMB_X55_Y13_N20
\pulse_generator|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[23]~72_combout\ = (\pulse_generator|s_divCounter\(23) & (!\pulse_generator|s_divCounter[22]~71\)) # (!\pulse_generator|s_divCounter\(23) & ((\pulse_generator|s_divCounter[22]~71\) # (GND)))
-- \pulse_generator|s_divCounter[23]~73\ = CARRY((!\pulse_generator|s_divCounter[22]~71\) # (!\pulse_generator|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(23),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[22]~71\,
	combout => \pulse_generator|s_divCounter[23]~72_combout\,
	cout => \pulse_generator|s_divCounter[23]~73\);

-- Location: FF_X55_Y13_N21
\pulse_generator|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[23]~72_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(23));

-- Location: LCCOMB_X55_Y13_N22
\pulse_generator|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[24]~74_combout\ = (\pulse_generator|s_divCounter\(24) & (\pulse_generator|s_divCounter[23]~73\ $ (GND))) # (!\pulse_generator|s_divCounter\(24) & (!\pulse_generator|s_divCounter[23]~73\ & VCC))
-- \pulse_generator|s_divCounter[24]~75\ = CARRY((\pulse_generator|s_divCounter\(24) & !\pulse_generator|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(24),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[23]~73\,
	combout => \pulse_generator|s_divCounter[24]~74_combout\,
	cout => \pulse_generator|s_divCounter[24]~75\);

-- Location: FF_X55_Y13_N23
\pulse_generator|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[24]~74_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(24));

-- Location: LCCOMB_X56_Y14_N10
\pulse_generator|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~2_combout\ = (((!\pulse_generator|s_divCounter\(12)) # (!\pulse_generator|s_divCounter\(13))) # (!\pulse_generator|s_divCounter\(15))) # (!\pulse_generator|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(14),
	datab => \pulse_generator|s_divCounter\(15),
	datac => \pulse_generator|s_divCounter\(13),
	datad => \pulse_generator|s_divCounter\(12),
	combout => \pulse_generator|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y14_N28
\pulse_generator|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~3_combout\ = (!\pulse_generator|s_divCounter\(16) & (!\pulse_generator|s_divCounter\(24) & (!\pulse_generator|s_divCounter\(18) & \pulse_generator|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(16),
	datab => \pulse_generator|s_divCounter\(24),
	datac => \pulse_generator|s_divCounter\(18),
	datad => \pulse_generator|LessThan0~2_combout\,
	combout => \pulse_generator|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y13_N24
\pulse_generator|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[25]~76_combout\ = \pulse_generator|s_divCounter\(25) $ (\pulse_generator|s_divCounter[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(25),
	cin => \pulse_generator|s_divCounter[24]~75\,
	combout => \pulse_generator|s_divCounter[25]~76_combout\);

-- Location: FF_X55_Y13_N25
\pulse_generator|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[25]~76_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(25));

-- Location: LCCOMB_X55_Y13_N26
\pulse_generator|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~4_combout\ = (\pulse_generator|s_divCounter\(19) & (\pulse_generator|s_divCounter\(22) & (\pulse_generator|s_divCounter\(20) & \pulse_generator|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(19),
	datab => \pulse_generator|s_divCounter\(22),
	datac => \pulse_generator|s_divCounter\(20),
	datad => \pulse_generator|s_divCounter\(21),
	combout => \pulse_generator|clkOut~4_combout\);

-- Location: LCCOMB_X55_Y13_N30
\pulse_generator|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~4_combout\ = ((!\pulse_generator|s_divCounter\(17) & !\pulse_generator|s_divCounter\(18))) # (!\pulse_generator|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(23),
	datac => \pulse_generator|s_divCounter\(17),
	datad => \pulse_generator|s_divCounter\(18),
	combout => \pulse_generator|LessThan0~4_combout\);

-- Location: LCCOMB_X56_Y14_N4
\pulse_generator|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~5_combout\ = ((!\pulse_generator|s_divCounter\(24) & ((\pulse_generator|LessThan0~4_combout\) # (!\pulse_generator|clkOut~4_combout\)))) # (!\pulse_generator|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(25),
	datab => \pulse_generator|s_divCounter\(24),
	datac => \pulse_generator|clkOut~4_combout\,
	datad => \pulse_generator|LessThan0~4_combout\,
	combout => \pulse_generator|LessThan0~5_combout\);

-- Location: LCCOMB_X56_Y14_N30
\pulse_generator|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~6_combout\ = (!\pulse_generator|LessThan0~3_combout\ & (!\pulse_generator|LessThan0~5_combout\ & !\pulse_generator|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|LessThan0~3_combout\,
	datac => \pulse_generator|LessThan0~5_combout\,
	datad => \pulse_generator|LessThan0~1_combout\,
	combout => \pulse_generator|LessThan0~6_combout\);

-- Location: FF_X55_Y14_N7
\pulse_generator|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[0]~26_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(0));

-- Location: LCCOMB_X55_Y14_N8
\pulse_generator|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[1]~28_combout\ = (\pulse_generator|s_divCounter\(1) & (!\pulse_generator|s_divCounter[0]~27\)) # (!\pulse_generator|s_divCounter\(1) & ((\pulse_generator|s_divCounter[0]~27\) # (GND)))
-- \pulse_generator|s_divCounter[1]~29\ = CARRY((!\pulse_generator|s_divCounter[0]~27\) # (!\pulse_generator|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(1),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[0]~27\,
	combout => \pulse_generator|s_divCounter[1]~28_combout\,
	cout => \pulse_generator|s_divCounter[1]~29\);

-- Location: FF_X55_Y14_N9
\pulse_generator|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[1]~28_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(1));

-- Location: LCCOMB_X55_Y14_N10
\pulse_generator|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[2]~30_combout\ = (\pulse_generator|s_divCounter\(2) & (\pulse_generator|s_divCounter[1]~29\ $ (GND))) # (!\pulse_generator|s_divCounter\(2) & (!\pulse_generator|s_divCounter[1]~29\ & VCC))
-- \pulse_generator|s_divCounter[2]~31\ = CARRY((\pulse_generator|s_divCounter\(2) & !\pulse_generator|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(2),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[1]~29\,
	combout => \pulse_generator|s_divCounter[2]~30_combout\,
	cout => \pulse_generator|s_divCounter[2]~31\);

-- Location: FF_X55_Y14_N11
\pulse_generator|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[2]~30_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(2));

-- Location: LCCOMB_X55_Y14_N12
\pulse_generator|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[3]~32_combout\ = (\pulse_generator|s_divCounter\(3) & (!\pulse_generator|s_divCounter[2]~31\)) # (!\pulse_generator|s_divCounter\(3) & ((\pulse_generator|s_divCounter[2]~31\) # (GND)))
-- \pulse_generator|s_divCounter[3]~33\ = CARRY((!\pulse_generator|s_divCounter[2]~31\) # (!\pulse_generator|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(3),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[2]~31\,
	combout => \pulse_generator|s_divCounter[3]~32_combout\,
	cout => \pulse_generator|s_divCounter[3]~33\);

-- Location: FF_X55_Y14_N13
\pulse_generator|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[3]~32_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(3));

-- Location: LCCOMB_X55_Y14_N14
\pulse_generator|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[4]~34_combout\ = (\pulse_generator|s_divCounter\(4) & (\pulse_generator|s_divCounter[3]~33\ $ (GND))) # (!\pulse_generator|s_divCounter\(4) & (!\pulse_generator|s_divCounter[3]~33\ & VCC))
-- \pulse_generator|s_divCounter[4]~35\ = CARRY((\pulse_generator|s_divCounter\(4) & !\pulse_generator|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(4),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[3]~33\,
	combout => \pulse_generator|s_divCounter[4]~34_combout\,
	cout => \pulse_generator|s_divCounter[4]~35\);

-- Location: FF_X55_Y14_N15
\pulse_generator|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[4]~34_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(4));

-- Location: LCCOMB_X55_Y14_N16
\pulse_generator|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[5]~36_combout\ = (\pulse_generator|s_divCounter\(5) & (!\pulse_generator|s_divCounter[4]~35\)) # (!\pulse_generator|s_divCounter\(5) & ((\pulse_generator|s_divCounter[4]~35\) # (GND)))
-- \pulse_generator|s_divCounter[5]~37\ = CARRY((!\pulse_generator|s_divCounter[4]~35\) # (!\pulse_generator|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(5),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[4]~35\,
	combout => \pulse_generator|s_divCounter[5]~36_combout\,
	cout => \pulse_generator|s_divCounter[5]~37\);

-- Location: FF_X55_Y14_N17
\pulse_generator|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[5]~36_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(5));

-- Location: LCCOMB_X55_Y14_N18
\pulse_generator|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[6]~38_combout\ = (\pulse_generator|s_divCounter\(6) & (\pulse_generator|s_divCounter[5]~37\ $ (GND))) # (!\pulse_generator|s_divCounter\(6) & (!\pulse_generator|s_divCounter[5]~37\ & VCC))
-- \pulse_generator|s_divCounter[6]~39\ = CARRY((\pulse_generator|s_divCounter\(6) & !\pulse_generator|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(6),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[5]~37\,
	combout => \pulse_generator|s_divCounter[6]~38_combout\,
	cout => \pulse_generator|s_divCounter[6]~39\);

-- Location: FF_X55_Y14_N19
\pulse_generator|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[6]~38_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(6));

-- Location: LCCOMB_X55_Y14_N20
\pulse_generator|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_divCounter[7]~40_combout\ = (\pulse_generator|s_divCounter\(7) & (!\pulse_generator|s_divCounter[6]~39\)) # (!\pulse_generator|s_divCounter\(7) & ((\pulse_generator|s_divCounter[6]~39\) # (GND)))
-- \pulse_generator|s_divCounter[7]~41\ = CARRY((!\pulse_generator|s_divCounter[6]~39\) # (!\pulse_generator|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(7),
	datad => VCC,
	cin => \pulse_generator|s_divCounter[6]~39\,
	combout => \pulse_generator|s_divCounter[7]~40_combout\,
	cout => \pulse_generator|s_divCounter[7]~41\);

-- Location: FF_X55_Y14_N21
\pulse_generator|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[7]~40_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(7));

-- Location: FF_X55_Y14_N23
\pulse_generator|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|s_divCounter[8]~42_combout\,
	sclr => \pulse_generator|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_divCounter\(8));

-- Location: LCCOMB_X55_Y14_N0
\pulse_generator|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~3_combout\ = (!\pulse_generator|s_divCounter\(8) & (!\pulse_generator|s_divCounter\(7) & (!\pulse_generator|s_divCounter\(10) & !\pulse_generator|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(8),
	datab => \pulse_generator|s_divCounter\(7),
	datac => \pulse_generator|s_divCounter\(10),
	datad => \pulse_generator|s_divCounter\(9),
	combout => \pulse_generator|clkOut~3_combout\);

-- Location: LCCOMB_X55_Y14_N4
\pulse_generator|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~0_combout\ = (\pulse_generator|s_divCounter\(3) & (\pulse_generator|s_divCounter\(1) & (\pulse_generator|s_divCounter\(0) & \pulse_generator|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(3),
	datab => \pulse_generator|s_divCounter\(1),
	datac => \pulse_generator|s_divCounter\(0),
	datad => \pulse_generator|s_divCounter\(2),
	combout => \pulse_generator|clkOut~0_combout\);

-- Location: LCCOMB_X55_Y14_N2
\pulse_generator|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~1_combout\ = (\pulse_generator|s_divCounter\(5) & (\pulse_generator|clkOut~0_combout\ & \pulse_generator|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_divCounter\(5),
	datac => \pulse_generator|clkOut~0_combout\,
	datad => \pulse_generator|s_divCounter\(4),
	combout => \pulse_generator|clkOut~1_combout\);

-- Location: LCCOMB_X56_Y14_N8
\pulse_generator|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~0_combout\ = (!\pulse_generator|s_divCounter\(16) & (!\pulse_generator|s_divCounter\(11) & (!\pulse_generator|s_divCounter\(18) & !\pulse_generator|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(16),
	datab => \pulse_generator|s_divCounter\(11),
	datac => \pulse_generator|s_divCounter\(18),
	datad => \pulse_generator|s_divCounter\(24),
	combout => \pulse_generator|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y14_N12
\pulse_generator|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~1_combout\ = (\pulse_generator|clkOut~3_combout\ & (\pulse_generator|LessThan0~0_combout\ & ((!\pulse_generator|s_divCounter\(6)) # (!\pulse_generator|clkOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|clkOut~3_combout\,
	datab => \pulse_generator|clkOut~1_combout\,
	datac => \pulse_generator|LessThan0~0_combout\,
	datad => \pulse_generator|s_divCounter\(6),
	combout => \pulse_generator|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y14_N22
\pulse_generator|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~2_combout\ = (\pulse_generator|s_divCounter\(16) & (\pulse_generator|s_divCounter\(11) & (!\pulse_generator|s_divCounter\(17) & !\pulse_generator|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(16),
	datab => \pulse_generator|s_divCounter\(11),
	datac => \pulse_generator|s_divCounter\(17),
	datad => \pulse_generator|s_divCounter\(15),
	combout => \pulse_generator|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y13_N28
\pulse_generator|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~5_combout\ = (\pulse_generator|s_divCounter\(18) & (!\pulse_generator|s_divCounter\(25) & (\pulse_generator|s_divCounter\(24) & !\pulse_generator|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(18),
	datab => \pulse_generator|s_divCounter\(25),
	datac => \pulse_generator|s_divCounter\(24),
	datad => \pulse_generator|s_divCounter\(23),
	combout => \pulse_generator|clkOut~5_combout\);

-- Location: LCCOMB_X56_Y14_N16
\pulse_generator|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~6_combout\ = (\pulse_generator|s_divCounter\(14) & (!\pulse_generator|s_divCounter\(6) & (\pulse_generator|s_divCounter\(13) & \pulse_generator|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_divCounter\(14),
	datab => \pulse_generator|s_divCounter\(6),
	datac => \pulse_generator|s_divCounter\(13),
	datad => \pulse_generator|clkOut~5_combout\,
	combout => \pulse_generator|clkOut~6_combout\);

-- Location: LCCOMB_X56_Y14_N20
\pulse_generator|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~7_combout\ = (\pulse_generator|clkOut~3_combout\ & (\pulse_generator|s_divCounter\(12) & (\pulse_generator|clkOut~4_combout\ & \pulse_generator|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|clkOut~3_combout\,
	datab => \pulse_generator|s_divCounter\(12),
	datac => \pulse_generator|clkOut~4_combout\,
	datad => \pulse_generator|clkOut~6_combout\,
	combout => \pulse_generator|clkOut~7_combout\);

-- Location: LCCOMB_X56_Y14_N14
\pulse_generator|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~8_combout\ = (\pulse_generator|clkOut~q\) # ((\pulse_generator|clkOut~2_combout\ & (\pulse_generator|clkOut~1_combout\ & \pulse_generator|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|clkOut~2_combout\,
	datab => \pulse_generator|clkOut~q\,
	datac => \pulse_generator|clkOut~1_combout\,
	datad => \pulse_generator|clkOut~7_combout\,
	combout => \pulse_generator|clkOut~8_combout\);

-- Location: LCCOMB_X56_Y14_N18
\pulse_generator|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|clkOut~9_combout\ = (\pulse_generator|clkOut~8_combout\ & ((\pulse_generator|LessThan0~1_combout\) # ((\pulse_generator|LessThan0~5_combout\) # (\pulse_generator|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan0~1_combout\,
	datab => \pulse_generator|LessThan0~5_combout\,
	datac => \pulse_generator|clkOut~8_combout\,
	datad => \pulse_generator|LessThan0~3_combout\,
	combout => \pulse_generator|clkOut~9_combout\);

-- Location: FF_X56_Y14_N19
\pulse_generator|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_generator|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|clkOut~q\);

-- Location: CLKCTRL_G18
\pulse_generator|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulse_generator|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulse_generator|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y69_N20
\top_level|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_counter~3_combout\ = (\KEY[0]~input_o\ & !\top_level|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \top_level|s_counter\(0),
	combout => \top_level|s_counter~3_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X114_Y69_N18
\top_level|s_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_counter[2]~1_combout\ = (\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \top_level|s_counter[2]~1_combout\);

-- Location: FF_X114_Y69_N21
\top_level|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse_generator|clkOut~clkctrl_outclk\,
	d => \top_level|s_counter~3_combout\,
	ena => \top_level|s_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_counter\(0));

-- Location: LCCOMB_X114_Y69_N30
\top_level|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Add0~0_combout\ = \top_level|s_counter\(2) $ (((\top_level|s_counter\(1) & \top_level|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_counter\(2),
	datac => \top_level|s_counter\(1),
	datad => \top_level|s_counter\(0),
	combout => \top_level|Add0~0_combout\);

-- Location: LCCOMB_X114_Y69_N4
\top_level|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_counter~0_combout\ = (\KEY[0]~input_o\ & (\top_level|Add0~0_combout\ & !\Bin7Seg|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \top_level|Add0~0_combout\,
	datad => \Bin7Seg|Equal7~0_combout\,
	combout => \top_level|s_counter~0_combout\);

-- Location: FF_X114_Y69_N5
\top_level|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse_generator|clkOut~clkctrl_outclk\,
	d => \top_level|s_counter~0_combout\,
	ena => \top_level|s_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_counter\(2));

-- Location: LCCOMB_X114_Y69_N28
\Bin7Seg|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|Equal7~0_combout\ = (\top_level|s_counter\(3) & (!\top_level|s_counter\(1) & (!\top_level|s_counter\(2) & \top_level|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|Equal7~0_combout\);

-- Location: LCCOMB_X114_Y69_N22
\top_level|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_counter~2_combout\ = (\KEY[0]~input_o\ & (!\Bin7Seg|Equal7~0_combout\ & (\top_level|s_counter\(0) $ (\top_level|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \top_level|s_counter\(0),
	datac => \top_level|s_counter\(1),
	datad => \Bin7Seg|Equal7~0_combout\,
	combout => \top_level|s_counter~2_combout\);

-- Location: FF_X114_Y69_N23
\top_level|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse_generator|clkOut~clkctrl_outclk\,
	d => \top_level|s_counter~2_combout\,
	ena => \top_level|s_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_counter\(1));

-- Location: LCCOMB_X114_Y69_N0
\top_level|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_counter~4_combout\ = (\top_level|s_counter\(1) $ (\top_level|s_counter\(2))) # (!\top_level|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_counter\(0),
	datac => \top_level|s_counter\(1),
	datad => \top_level|s_counter\(2),
	combout => \top_level|s_counter~4_combout\);

-- Location: LCCOMB_X114_Y69_N26
\top_level|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_counter~5_combout\ = (\KEY[0]~input_o\ & ((\top_level|s_counter\(3) & ((\top_level|s_counter~4_combout\))) # (!\top_level|s_counter\(3) & (\top_level|s_counter\(1) & !\top_level|s_counter~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(3),
	datad => \top_level|s_counter~4_combout\,
	combout => \top_level|s_counter~5_combout\);

-- Location: FF_X114_Y69_N27
\top_level|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse_generator|clkOut~clkctrl_outclk\,
	d => \top_level|s_counter~5_combout\,
	ena => \top_level|s_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_counter\(3));

-- Location: LCCOMB_X114_Y69_N12
\Bin7Seg|decOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~0_combout\ = (\top_level|s_counter\(3) & (\top_level|s_counter\(0) & (\top_level|s_counter\(1) $ (\top_level|s_counter\(2))))) # (!\top_level|s_counter\(3) & (!\top_level|s_counter\(1) & (\top_level|s_counter\(2) $ 
-- (\top_level|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~0_combout\);

-- Location: LCCOMB_X114_Y69_N2
\Bin7Seg|decOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~1_combout\ = (\top_level|s_counter\(3) & ((\top_level|s_counter\(0) & (\top_level|s_counter\(1))) # (!\top_level|s_counter\(0) & ((\top_level|s_counter\(2)))))) # (!\top_level|s_counter\(3) & (\top_level|s_counter\(2) & 
-- (\top_level|s_counter\(1) $ (\top_level|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~1_combout\);

-- Location: LCCOMB_X114_Y69_N8
\Bin7Seg|decOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~2_combout\ = (\top_level|s_counter\(3) & (\top_level|s_counter\(2) & ((\top_level|s_counter\(1)) # (!\top_level|s_counter\(0))))) # (!\top_level|s_counter\(3) & (\top_level|s_counter\(1) & (!\top_level|s_counter\(2) & 
-- !\top_level|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~2_combout\);

-- Location: LCCOMB_X114_Y69_N10
\Bin7Seg|decOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~3_combout\ = (\top_level|s_counter\(1) & ((\top_level|s_counter\(2) & ((\top_level|s_counter\(0)))) # (!\top_level|s_counter\(2) & (\top_level|s_counter\(3) & !\top_level|s_counter\(0))))) # (!\top_level|s_counter\(1) & 
-- (!\top_level|s_counter\(3) & (\top_level|s_counter\(2) $ (\top_level|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~3_combout\);

-- Location: LCCOMB_X114_Y69_N24
\Bin7Seg|decOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~4_combout\ = (\top_level|s_counter\(1) & (!\top_level|s_counter\(3) & ((\top_level|s_counter\(0))))) # (!\top_level|s_counter\(1) & ((\top_level|s_counter\(2) & (!\top_level|s_counter\(3))) # (!\top_level|s_counter\(2) & 
-- ((\top_level|s_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~4_combout\);

-- Location: LCCOMB_X114_Y69_N14
\Bin7Seg|decOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~5_combout\ = (\top_level|s_counter\(1) & (!\top_level|s_counter\(3) & ((\top_level|s_counter\(0)) # (!\top_level|s_counter\(2))))) # (!\top_level|s_counter\(1) & (\top_level|s_counter\(0) & (\top_level|s_counter\(3) $ 
-- (!\top_level|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~5_combout\);

-- Location: LCCOMB_X114_Y69_N16
\Bin7Seg|decOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7Seg|decOut~6_combout\ = (\top_level|s_counter\(0) & (!\top_level|s_counter\(3) & (\top_level|s_counter\(1) $ (!\top_level|s_counter\(2))))) # (!\top_level|s_counter\(0) & (!\top_level|s_counter\(1) & (\top_level|s_counter\(3) $ 
-- (!\top_level|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_level|s_counter\(3),
	datab => \top_level|s_counter\(1),
	datac => \top_level|s_counter\(2),
	datad => \top_level|s_counter\(0),
	combout => \Bin7Seg|decOut~6_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


