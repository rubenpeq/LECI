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

-- DATE "05/31/2022 14:21:55"

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

ENTITY 	SeqDetector IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor|s_divCounter[0]~28_combout\ : std_logic;
SIGNAL \divisor|LessThan0~4_combout\ : std_logic;
SIGNAL \divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \divisor|clkOut~0_combout\ : std_logic;
SIGNAL \divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \divisor|LessThan0~5_combout\ : std_logic;
SIGNAL \divisor|LessThan0~10_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[0]~29\ : std_logic;
SIGNAL \divisor|s_divCounter[1]~30_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[1]~31\ : std_logic;
SIGNAL \divisor|s_divCounter[2]~32_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[2]~33\ : std_logic;
SIGNAL \divisor|s_divCounter[3]~34_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[3]~35\ : std_logic;
SIGNAL \divisor|s_divCounter[4]~36_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[4]~37\ : std_logic;
SIGNAL \divisor|s_divCounter[5]~38_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[5]~39\ : std_logic;
SIGNAL \divisor|s_divCounter[6]~40_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[6]~41\ : std_logic;
SIGNAL \divisor|s_divCounter[7]~42_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[7]~43\ : std_logic;
SIGNAL \divisor|s_divCounter[8]~44_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[8]~45\ : std_logic;
SIGNAL \divisor|s_divCounter[9]~46_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[9]~47\ : std_logic;
SIGNAL \divisor|s_divCounter[10]~48_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[10]~49\ : std_logic;
SIGNAL \divisor|s_divCounter[11]~50_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[11]~51\ : std_logic;
SIGNAL \divisor|s_divCounter[12]~52_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[12]~53\ : std_logic;
SIGNAL \divisor|s_divCounter[13]~54_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[13]~55\ : std_logic;
SIGNAL \divisor|s_divCounter[14]~56_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[14]~57\ : std_logic;
SIGNAL \divisor|s_divCounter[15]~58_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[15]~59\ : std_logic;
SIGNAL \divisor|s_divCounter[16]~60_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[16]~61\ : std_logic;
SIGNAL \divisor|s_divCounter[17]~62_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[17]~63\ : std_logic;
SIGNAL \divisor|s_divCounter[18]~64_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[18]~65\ : std_logic;
SIGNAL \divisor|s_divCounter[19]~66_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[19]~67\ : std_logic;
SIGNAL \divisor|s_divCounter[20]~68_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[20]~69\ : std_logic;
SIGNAL \divisor|s_divCounter[21]~70_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[21]~71\ : std_logic;
SIGNAL \divisor|s_divCounter[22]~72_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[22]~73\ : std_logic;
SIGNAL \divisor|s_divCounter[23]~74_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[23]~75\ : std_logic;
SIGNAL \divisor|s_divCounter[24]~76_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[24]~77\ : std_logic;
SIGNAL \divisor|s_divCounter[25]~78_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[25]~79\ : std_logic;
SIGNAL \divisor|s_divCounter[26]~80_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[26]~81\ : std_logic;
SIGNAL \divisor|s_divCounter[27]~82_combout\ : std_logic;
SIGNAL \divisor|LessThan0~7_combout\ : std_logic;
SIGNAL \divisor|LessThan0~8_combout\ : std_logic;
SIGNAL \divisor|LessThan0~6_combout\ : std_logic;
SIGNAL \divisor|LessThan0~9_combout\ : std_logic;
SIGNAL \divisor|clkOut~2_combout\ : std_logic;
SIGNAL \divisor|clkOut~5_combout\ : std_logic;
SIGNAL \divisor|clkOut~3_combout\ : std_logic;
SIGNAL \divisor|clkOut~4_combout\ : std_logic;
SIGNAL \divisor|clkOut~6_combout\ : std_logic;
SIGNAL \divisor|clkOut~7_combout\ : std_logic;
SIGNAL \divisor|clkOut~1_combout\ : std_logic;
SIGNAL \divisor|clkOut~8_combout\ : std_logic;
SIGNAL \divisor|clkOut~9_combout\ : std_logic;
SIGNAL \divisor|clkOut~q\ : std_logic;
SIGNAL \divisor|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \top_level|s_currentState~8_combout\ : std_logic;
SIGNAL \top_level|s_currentState.S1~q\ : std_logic;
SIGNAL \top_level|s_currentState~7_combout\ : std_logic;
SIGNAL \top_level|s_currentState.S2~q\ : std_logic;
SIGNAL \top_level|s_currentState~6_combout\ : std_logic;
SIGNAL \top_level|s_currentState.S3~q\ : std_logic;
SIGNAL \top_level|Yout~1_combout\ : std_logic;
SIGNAL \divisor|s_divCounter\ : std_logic_vector(27 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\divisor|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor|clkOut~q\);
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
	i => \top_level|Yout~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor|clkOut~q\,
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

-- Location: LCCOMB_X110_Y53_N4
\divisor|s_divCounter[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[0]~28_combout\ = \divisor|s_divCounter\(0) $ (VCC)
-- \divisor|s_divCounter[0]~29\ = CARRY(\divisor|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(0),
	datad => VCC,
	combout => \divisor|s_divCounter[0]~28_combout\,
	cout => \divisor|s_divCounter[0]~29\);

-- Location: LCCOMB_X111_Y52_N20
\divisor|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~4_combout\ = (!\divisor|s_divCounter\(20) & (!\divisor|s_divCounter\(24) & !\divisor|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(20),
	datab => \divisor|s_divCounter\(24),
	datad => \divisor|s_divCounter\(19),
	combout => \divisor|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y52_N14
\divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~2_combout\ = (!\divisor|s_divCounter\(10) & (!\divisor|s_divCounter\(11) & (!\divisor|s_divCounter\(8) & !\divisor|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(10),
	datab => \divisor|s_divCounter\(11),
	datac => \divisor|s_divCounter\(8),
	datad => \divisor|s_divCounter\(7),
	combout => \divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y53_N2
\divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~0_combout\ = ((!\divisor|s_divCounter\(9) & (!\divisor|s_divCounter\(10) & !\divisor|s_divCounter\(11)))) # (!\divisor|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(9),
	datab => \divisor|s_divCounter\(10),
	datac => \divisor|s_divCounter\(11),
	datad => \divisor|s_divCounter\(12),
	combout => \divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y53_N0
\divisor|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~0_combout\ = (\divisor|s_divCounter\(1) & (\divisor|s_divCounter\(0) & (\divisor|s_divCounter\(2) & \divisor|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(1),
	datab => \divisor|s_divCounter\(0),
	datac => \divisor|s_divCounter\(2),
	datad => \divisor|s_divCounter\(3),
	combout => \divisor|clkOut~0_combout\);

-- Location: LCCOMB_X111_Y52_N2
\divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~1_combout\ = (((!\divisor|s_divCounter\(5)) # (!\divisor|clkOut~0_combout\)) # (!\divisor|s_divCounter\(6))) # (!\divisor|s_divCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(4),
	datab => \divisor|s_divCounter\(6),
	datac => \divisor|clkOut~0_combout\,
	datad => \divisor|s_divCounter\(5),
	combout => \divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y52_N28
\divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~3_combout\ = ((\divisor|LessThan0~0_combout\) # ((\divisor|LessThan0~2_combout\ & \divisor|LessThan0~1_combout\))) # (!\divisor|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(13),
	datab => \divisor|LessThan0~2_combout\,
	datac => \divisor|LessThan0~0_combout\,
	datad => \divisor|LessThan0~1_combout\,
	combout => \divisor|LessThan0~3_combout\);

-- Location: LCCOMB_X111_Y52_N4
\divisor|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~5_combout\ = (!\divisor|s_divCounter\(14) & (\divisor|LessThan0~4_combout\ & (!\divisor|s_divCounter\(16) & \divisor|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(14),
	datab => \divisor|LessThan0~4_combout\,
	datac => \divisor|s_divCounter\(16),
	datad => \divisor|LessThan0~3_combout\,
	combout => \divisor|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y52_N0
\divisor|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~10_combout\ = (!\divisor|LessThan0~5_combout\ & !\divisor|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|LessThan0~5_combout\,
	datad => \divisor|LessThan0~9_combout\,
	combout => \divisor|LessThan0~10_combout\);

-- Location: FF_X110_Y53_N5
\divisor|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[0]~28_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(0));

-- Location: LCCOMB_X110_Y53_N6
\divisor|s_divCounter[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[1]~30_combout\ = (\divisor|s_divCounter\(1) & (!\divisor|s_divCounter[0]~29\)) # (!\divisor|s_divCounter\(1) & ((\divisor|s_divCounter[0]~29\) # (GND)))
-- \divisor|s_divCounter[1]~31\ = CARRY((!\divisor|s_divCounter[0]~29\) # (!\divisor|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(1),
	datad => VCC,
	cin => \divisor|s_divCounter[0]~29\,
	combout => \divisor|s_divCounter[1]~30_combout\,
	cout => \divisor|s_divCounter[1]~31\);

-- Location: FF_X110_Y53_N7
\divisor|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[1]~30_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(1));

-- Location: LCCOMB_X110_Y53_N8
\divisor|s_divCounter[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[2]~32_combout\ = (\divisor|s_divCounter\(2) & (\divisor|s_divCounter[1]~31\ $ (GND))) # (!\divisor|s_divCounter\(2) & (!\divisor|s_divCounter[1]~31\ & VCC))
-- \divisor|s_divCounter[2]~33\ = CARRY((\divisor|s_divCounter\(2) & !\divisor|s_divCounter[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(2),
	datad => VCC,
	cin => \divisor|s_divCounter[1]~31\,
	combout => \divisor|s_divCounter[2]~32_combout\,
	cout => \divisor|s_divCounter[2]~33\);

-- Location: FF_X110_Y53_N9
\divisor|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[2]~32_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(2));

-- Location: LCCOMB_X110_Y53_N10
\divisor|s_divCounter[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[3]~34_combout\ = (\divisor|s_divCounter\(3) & (!\divisor|s_divCounter[2]~33\)) # (!\divisor|s_divCounter\(3) & ((\divisor|s_divCounter[2]~33\) # (GND)))
-- \divisor|s_divCounter[3]~35\ = CARRY((!\divisor|s_divCounter[2]~33\) # (!\divisor|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(3),
	datad => VCC,
	cin => \divisor|s_divCounter[2]~33\,
	combout => \divisor|s_divCounter[3]~34_combout\,
	cout => \divisor|s_divCounter[3]~35\);

-- Location: FF_X110_Y53_N11
\divisor|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[3]~34_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(3));

-- Location: LCCOMB_X110_Y53_N12
\divisor|s_divCounter[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[4]~36_combout\ = (\divisor|s_divCounter\(4) & (\divisor|s_divCounter[3]~35\ $ (GND))) # (!\divisor|s_divCounter\(4) & (!\divisor|s_divCounter[3]~35\ & VCC))
-- \divisor|s_divCounter[4]~37\ = CARRY((\divisor|s_divCounter\(4) & !\divisor|s_divCounter[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(4),
	datad => VCC,
	cin => \divisor|s_divCounter[3]~35\,
	combout => \divisor|s_divCounter[4]~36_combout\,
	cout => \divisor|s_divCounter[4]~37\);

-- Location: FF_X110_Y53_N13
\divisor|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[4]~36_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(4));

-- Location: LCCOMB_X110_Y53_N14
\divisor|s_divCounter[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[5]~38_combout\ = (\divisor|s_divCounter\(5) & (!\divisor|s_divCounter[4]~37\)) # (!\divisor|s_divCounter\(5) & ((\divisor|s_divCounter[4]~37\) # (GND)))
-- \divisor|s_divCounter[5]~39\ = CARRY((!\divisor|s_divCounter[4]~37\) # (!\divisor|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(5),
	datad => VCC,
	cin => \divisor|s_divCounter[4]~37\,
	combout => \divisor|s_divCounter[5]~38_combout\,
	cout => \divisor|s_divCounter[5]~39\);

-- Location: FF_X110_Y53_N15
\divisor|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[5]~38_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(5));

-- Location: LCCOMB_X110_Y53_N16
\divisor|s_divCounter[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[6]~40_combout\ = (\divisor|s_divCounter\(6) & (\divisor|s_divCounter[5]~39\ $ (GND))) # (!\divisor|s_divCounter\(6) & (!\divisor|s_divCounter[5]~39\ & VCC))
-- \divisor|s_divCounter[6]~41\ = CARRY((\divisor|s_divCounter\(6) & !\divisor|s_divCounter[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(6),
	datad => VCC,
	cin => \divisor|s_divCounter[5]~39\,
	combout => \divisor|s_divCounter[6]~40_combout\,
	cout => \divisor|s_divCounter[6]~41\);

-- Location: FF_X110_Y53_N17
\divisor|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[6]~40_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(6));

-- Location: LCCOMB_X110_Y53_N18
\divisor|s_divCounter[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[7]~42_combout\ = (\divisor|s_divCounter\(7) & (!\divisor|s_divCounter[6]~41\)) # (!\divisor|s_divCounter\(7) & ((\divisor|s_divCounter[6]~41\) # (GND)))
-- \divisor|s_divCounter[7]~43\ = CARRY((!\divisor|s_divCounter[6]~41\) # (!\divisor|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(7),
	datad => VCC,
	cin => \divisor|s_divCounter[6]~41\,
	combout => \divisor|s_divCounter[7]~42_combout\,
	cout => \divisor|s_divCounter[7]~43\);

-- Location: FF_X110_Y53_N19
\divisor|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[7]~42_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(7));

-- Location: LCCOMB_X110_Y53_N20
\divisor|s_divCounter[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[8]~44_combout\ = (\divisor|s_divCounter\(8) & (\divisor|s_divCounter[7]~43\ $ (GND))) # (!\divisor|s_divCounter\(8) & (!\divisor|s_divCounter[7]~43\ & VCC))
-- \divisor|s_divCounter[8]~45\ = CARRY((\divisor|s_divCounter\(8) & !\divisor|s_divCounter[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(8),
	datad => VCC,
	cin => \divisor|s_divCounter[7]~43\,
	combout => \divisor|s_divCounter[8]~44_combout\,
	cout => \divisor|s_divCounter[8]~45\);

-- Location: FF_X110_Y53_N21
\divisor|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[8]~44_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(8));

-- Location: LCCOMB_X110_Y53_N22
\divisor|s_divCounter[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[9]~46_combout\ = (\divisor|s_divCounter\(9) & (!\divisor|s_divCounter[8]~45\)) # (!\divisor|s_divCounter\(9) & ((\divisor|s_divCounter[8]~45\) # (GND)))
-- \divisor|s_divCounter[9]~47\ = CARRY((!\divisor|s_divCounter[8]~45\) # (!\divisor|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(9),
	datad => VCC,
	cin => \divisor|s_divCounter[8]~45\,
	combout => \divisor|s_divCounter[9]~46_combout\,
	cout => \divisor|s_divCounter[9]~47\);

-- Location: FF_X110_Y53_N23
\divisor|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[9]~46_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(9));

-- Location: LCCOMB_X110_Y53_N24
\divisor|s_divCounter[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[10]~48_combout\ = (\divisor|s_divCounter\(10) & (\divisor|s_divCounter[9]~47\ $ (GND))) # (!\divisor|s_divCounter\(10) & (!\divisor|s_divCounter[9]~47\ & VCC))
-- \divisor|s_divCounter[10]~49\ = CARRY((\divisor|s_divCounter\(10) & !\divisor|s_divCounter[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(10),
	datad => VCC,
	cin => \divisor|s_divCounter[9]~47\,
	combout => \divisor|s_divCounter[10]~48_combout\,
	cout => \divisor|s_divCounter[10]~49\);

-- Location: FF_X110_Y53_N25
\divisor|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[10]~48_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(10));

-- Location: LCCOMB_X110_Y53_N26
\divisor|s_divCounter[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[11]~50_combout\ = (\divisor|s_divCounter\(11) & (!\divisor|s_divCounter[10]~49\)) # (!\divisor|s_divCounter\(11) & ((\divisor|s_divCounter[10]~49\) # (GND)))
-- \divisor|s_divCounter[11]~51\ = CARRY((!\divisor|s_divCounter[10]~49\) # (!\divisor|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(11),
	datad => VCC,
	cin => \divisor|s_divCounter[10]~49\,
	combout => \divisor|s_divCounter[11]~50_combout\,
	cout => \divisor|s_divCounter[11]~51\);

-- Location: FF_X110_Y53_N27
\divisor|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[11]~50_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(11));

-- Location: LCCOMB_X110_Y53_N28
\divisor|s_divCounter[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[12]~52_combout\ = (\divisor|s_divCounter\(12) & (\divisor|s_divCounter[11]~51\ $ (GND))) # (!\divisor|s_divCounter\(12) & (!\divisor|s_divCounter[11]~51\ & VCC))
-- \divisor|s_divCounter[12]~53\ = CARRY((\divisor|s_divCounter\(12) & !\divisor|s_divCounter[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(12),
	datad => VCC,
	cin => \divisor|s_divCounter[11]~51\,
	combout => \divisor|s_divCounter[12]~52_combout\,
	cout => \divisor|s_divCounter[12]~53\);

-- Location: FF_X110_Y53_N29
\divisor|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[12]~52_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(12));

-- Location: LCCOMB_X110_Y53_N30
\divisor|s_divCounter[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[13]~54_combout\ = (\divisor|s_divCounter\(13) & (!\divisor|s_divCounter[12]~53\)) # (!\divisor|s_divCounter\(13) & ((\divisor|s_divCounter[12]~53\) # (GND)))
-- \divisor|s_divCounter[13]~55\ = CARRY((!\divisor|s_divCounter[12]~53\) # (!\divisor|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(13),
	datad => VCC,
	cin => \divisor|s_divCounter[12]~53\,
	combout => \divisor|s_divCounter[13]~54_combout\,
	cout => \divisor|s_divCounter[13]~55\);

-- Location: FF_X110_Y53_N31
\divisor|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[13]~54_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(13));

-- Location: LCCOMB_X110_Y52_N0
\divisor|s_divCounter[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[14]~56_combout\ = (\divisor|s_divCounter\(14) & (\divisor|s_divCounter[13]~55\ $ (GND))) # (!\divisor|s_divCounter\(14) & (!\divisor|s_divCounter[13]~55\ & VCC))
-- \divisor|s_divCounter[14]~57\ = CARRY((\divisor|s_divCounter\(14) & !\divisor|s_divCounter[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(14),
	datad => VCC,
	cin => \divisor|s_divCounter[13]~55\,
	combout => \divisor|s_divCounter[14]~56_combout\,
	cout => \divisor|s_divCounter[14]~57\);

-- Location: FF_X110_Y52_N1
\divisor|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[14]~56_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(14));

-- Location: LCCOMB_X110_Y52_N2
\divisor|s_divCounter[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[15]~58_combout\ = (\divisor|s_divCounter\(15) & (!\divisor|s_divCounter[14]~57\)) # (!\divisor|s_divCounter\(15) & ((\divisor|s_divCounter[14]~57\) # (GND)))
-- \divisor|s_divCounter[15]~59\ = CARRY((!\divisor|s_divCounter[14]~57\) # (!\divisor|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(15),
	datad => VCC,
	cin => \divisor|s_divCounter[14]~57\,
	combout => \divisor|s_divCounter[15]~58_combout\,
	cout => \divisor|s_divCounter[15]~59\);

-- Location: FF_X110_Y52_N3
\divisor|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[15]~58_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(15));

-- Location: LCCOMB_X110_Y52_N4
\divisor|s_divCounter[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[16]~60_combout\ = (\divisor|s_divCounter\(16) & (\divisor|s_divCounter[15]~59\ $ (GND))) # (!\divisor|s_divCounter\(16) & (!\divisor|s_divCounter[15]~59\ & VCC))
-- \divisor|s_divCounter[16]~61\ = CARRY((\divisor|s_divCounter\(16) & !\divisor|s_divCounter[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(16),
	datad => VCC,
	cin => \divisor|s_divCounter[15]~59\,
	combout => \divisor|s_divCounter[16]~60_combout\,
	cout => \divisor|s_divCounter[16]~61\);

-- Location: FF_X110_Y52_N5
\divisor|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[16]~60_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(16));

-- Location: LCCOMB_X110_Y52_N6
\divisor|s_divCounter[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[17]~62_combout\ = (\divisor|s_divCounter\(17) & (!\divisor|s_divCounter[16]~61\)) # (!\divisor|s_divCounter\(17) & ((\divisor|s_divCounter[16]~61\) # (GND)))
-- \divisor|s_divCounter[17]~63\ = CARRY((!\divisor|s_divCounter[16]~61\) # (!\divisor|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(17),
	datad => VCC,
	cin => \divisor|s_divCounter[16]~61\,
	combout => \divisor|s_divCounter[17]~62_combout\,
	cout => \divisor|s_divCounter[17]~63\);

-- Location: FF_X110_Y52_N7
\divisor|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[17]~62_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(17));

-- Location: LCCOMB_X110_Y52_N8
\divisor|s_divCounter[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[18]~64_combout\ = (\divisor|s_divCounter\(18) & (\divisor|s_divCounter[17]~63\ $ (GND))) # (!\divisor|s_divCounter\(18) & (!\divisor|s_divCounter[17]~63\ & VCC))
-- \divisor|s_divCounter[18]~65\ = CARRY((\divisor|s_divCounter\(18) & !\divisor|s_divCounter[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(18),
	datad => VCC,
	cin => \divisor|s_divCounter[17]~63\,
	combout => \divisor|s_divCounter[18]~64_combout\,
	cout => \divisor|s_divCounter[18]~65\);

-- Location: FF_X110_Y52_N9
\divisor|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[18]~64_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(18));

-- Location: LCCOMB_X110_Y52_N10
\divisor|s_divCounter[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[19]~66_combout\ = (\divisor|s_divCounter\(19) & (!\divisor|s_divCounter[18]~65\)) # (!\divisor|s_divCounter\(19) & ((\divisor|s_divCounter[18]~65\) # (GND)))
-- \divisor|s_divCounter[19]~67\ = CARRY((!\divisor|s_divCounter[18]~65\) # (!\divisor|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datad => VCC,
	cin => \divisor|s_divCounter[18]~65\,
	combout => \divisor|s_divCounter[19]~66_combout\,
	cout => \divisor|s_divCounter[19]~67\);

-- Location: FF_X110_Y52_N11
\divisor|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[19]~66_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(19));

-- Location: LCCOMB_X110_Y52_N12
\divisor|s_divCounter[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[20]~68_combout\ = (\divisor|s_divCounter\(20) & (\divisor|s_divCounter[19]~67\ $ (GND))) # (!\divisor|s_divCounter\(20) & (!\divisor|s_divCounter[19]~67\ & VCC))
-- \divisor|s_divCounter[20]~69\ = CARRY((\divisor|s_divCounter\(20) & !\divisor|s_divCounter[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(20),
	datad => VCC,
	cin => \divisor|s_divCounter[19]~67\,
	combout => \divisor|s_divCounter[20]~68_combout\,
	cout => \divisor|s_divCounter[20]~69\);

-- Location: FF_X110_Y52_N13
\divisor|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[20]~68_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(20));

-- Location: LCCOMB_X110_Y52_N14
\divisor|s_divCounter[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[21]~70_combout\ = (\divisor|s_divCounter\(21) & (!\divisor|s_divCounter[20]~69\)) # (!\divisor|s_divCounter\(21) & ((\divisor|s_divCounter[20]~69\) # (GND)))
-- \divisor|s_divCounter[21]~71\ = CARRY((!\divisor|s_divCounter[20]~69\) # (!\divisor|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(21),
	datad => VCC,
	cin => \divisor|s_divCounter[20]~69\,
	combout => \divisor|s_divCounter[21]~70_combout\,
	cout => \divisor|s_divCounter[21]~71\);

-- Location: FF_X110_Y52_N15
\divisor|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[21]~70_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(21));

-- Location: LCCOMB_X110_Y52_N16
\divisor|s_divCounter[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[22]~72_combout\ = (\divisor|s_divCounter\(22) & (\divisor|s_divCounter[21]~71\ $ (GND))) # (!\divisor|s_divCounter\(22) & (!\divisor|s_divCounter[21]~71\ & VCC))
-- \divisor|s_divCounter[22]~73\ = CARRY((\divisor|s_divCounter\(22) & !\divisor|s_divCounter[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(22),
	datad => VCC,
	cin => \divisor|s_divCounter[21]~71\,
	combout => \divisor|s_divCounter[22]~72_combout\,
	cout => \divisor|s_divCounter[22]~73\);

-- Location: FF_X110_Y52_N17
\divisor|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[22]~72_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(22));

-- Location: LCCOMB_X110_Y52_N18
\divisor|s_divCounter[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[23]~74_combout\ = (\divisor|s_divCounter\(23) & (!\divisor|s_divCounter[22]~73\)) # (!\divisor|s_divCounter\(23) & ((\divisor|s_divCounter[22]~73\) # (GND)))
-- \divisor|s_divCounter[23]~75\ = CARRY((!\divisor|s_divCounter[22]~73\) # (!\divisor|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(23),
	datad => VCC,
	cin => \divisor|s_divCounter[22]~73\,
	combout => \divisor|s_divCounter[23]~74_combout\,
	cout => \divisor|s_divCounter[23]~75\);

-- Location: FF_X110_Y52_N19
\divisor|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[23]~74_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(23));

-- Location: LCCOMB_X110_Y52_N20
\divisor|s_divCounter[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[24]~76_combout\ = (\divisor|s_divCounter\(24) & (\divisor|s_divCounter[23]~75\ $ (GND))) # (!\divisor|s_divCounter\(24) & (!\divisor|s_divCounter[23]~75\ & VCC))
-- \divisor|s_divCounter[24]~77\ = CARRY((\divisor|s_divCounter\(24) & !\divisor|s_divCounter[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(24),
	datad => VCC,
	cin => \divisor|s_divCounter[23]~75\,
	combout => \divisor|s_divCounter[24]~76_combout\,
	cout => \divisor|s_divCounter[24]~77\);

-- Location: FF_X110_Y52_N21
\divisor|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[24]~76_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(24));

-- Location: LCCOMB_X110_Y52_N22
\divisor|s_divCounter[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[25]~78_combout\ = (\divisor|s_divCounter\(25) & (!\divisor|s_divCounter[24]~77\)) # (!\divisor|s_divCounter\(25) & ((\divisor|s_divCounter[24]~77\) # (GND)))
-- \divisor|s_divCounter[25]~79\ = CARRY((!\divisor|s_divCounter[24]~77\) # (!\divisor|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(25),
	datad => VCC,
	cin => \divisor|s_divCounter[24]~77\,
	combout => \divisor|s_divCounter[25]~78_combout\,
	cout => \divisor|s_divCounter[25]~79\);

-- Location: FF_X110_Y52_N23
\divisor|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[25]~78_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(25));

-- Location: LCCOMB_X110_Y52_N24
\divisor|s_divCounter[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[26]~80_combout\ = (\divisor|s_divCounter\(26) & (\divisor|s_divCounter[25]~79\ $ (GND))) # (!\divisor|s_divCounter\(26) & (!\divisor|s_divCounter[25]~79\ & VCC))
-- \divisor|s_divCounter[26]~81\ = CARRY((\divisor|s_divCounter\(26) & !\divisor|s_divCounter[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(26),
	datad => VCC,
	cin => \divisor|s_divCounter[25]~79\,
	combout => \divisor|s_divCounter[26]~80_combout\,
	cout => \divisor|s_divCounter[26]~81\);

-- Location: FF_X110_Y52_N25
\divisor|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[26]~80_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(26));

-- Location: LCCOMB_X110_Y52_N26
\divisor|s_divCounter[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[27]~82_combout\ = \divisor|s_divCounter\(27) $ (\divisor|s_divCounter[26]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(27),
	cin => \divisor|s_divCounter[26]~81\,
	combout => \divisor|s_divCounter[27]~82_combout\);

-- Location: FF_X110_Y52_N27
\divisor|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[27]~82_combout\,
	sclr => \divisor|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(27));

-- Location: LCCOMB_X111_Y52_N10
\divisor|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~7_combout\ = ((!\divisor|s_divCounter\(26)) # (!\divisor|s_divCounter\(25))) # (!\divisor|s_divCounter\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(27),
	datab => \divisor|s_divCounter\(25),
	datad => \divisor|s_divCounter\(26),
	combout => \divisor|LessThan0~7_combout\);

-- Location: LCCOMB_X110_Y52_N30
\divisor|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~8_combout\ = (((!\divisor|s_divCounter\(16) & !\divisor|s_divCounter\(15))) # (!\divisor|s_divCounter\(18))) # (!\divisor|s_divCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(17),
	datab => \divisor|s_divCounter\(16),
	datac => \divisor|s_divCounter\(18),
	datad => \divisor|s_divCounter\(15),
	combout => \divisor|LessThan0~8_combout\);

-- Location: LCCOMB_X110_Y52_N28
\divisor|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~6_combout\ = (!\divisor|s_divCounter\(24) & (((!\divisor|s_divCounter\(22)) # (!\divisor|s_divCounter\(21))) # (!\divisor|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(24),
	datab => \divisor|s_divCounter\(23),
	datac => \divisor|s_divCounter\(21),
	datad => \divisor|s_divCounter\(22),
	combout => \divisor|LessThan0~6_combout\);

-- Location: LCCOMB_X111_Y52_N12
\divisor|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~9_combout\ = (\divisor|LessThan0~7_combout\) # ((\divisor|LessThan0~6_combout\) # ((\divisor|LessThan0~8_combout\ & \divisor|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~7_combout\,
	datab => \divisor|LessThan0~8_combout\,
	datac => \divisor|LessThan0~6_combout\,
	datad => \divisor|LessThan0~4_combout\,
	combout => \divisor|LessThan0~9_combout\);

-- Location: LCCOMB_X111_Y52_N18
\divisor|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~2_combout\ = (!\divisor|s_divCounter\(15) & (\divisor|s_divCounter\(16) & (\divisor|s_divCounter\(17) & \divisor|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(15),
	datab => \divisor|s_divCounter\(16),
	datac => \divisor|s_divCounter\(17),
	datad => \divisor|s_divCounter\(14),
	combout => \divisor|clkOut~2_combout\);

-- Location: LCCOMB_X111_Y52_N6
\divisor|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~5_combout\ = (!\divisor|s_divCounter\(19) & (!\divisor|s_divCounter\(23) & (!\divisor|s_divCounter\(18) & \divisor|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datab => \divisor|s_divCounter\(23),
	datac => \divisor|s_divCounter\(18),
	datad => \divisor|s_divCounter\(20),
	combout => \divisor|clkOut~5_combout\);

-- Location: LCCOMB_X111_Y52_N16
\divisor|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~3_combout\ = (\divisor|s_divCounter\(21) & (\divisor|s_divCounter\(22) & (!\divisor|s_divCounter\(10) & !\divisor|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(21),
	datab => \divisor|s_divCounter\(22),
	datac => \divisor|s_divCounter\(10),
	datad => \divisor|s_divCounter\(7),
	combout => \divisor|clkOut~3_combout\);

-- Location: LCCOMB_X111_Y52_N22
\divisor|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~4_combout\ = (\divisor|s_divCounter\(25) & (\divisor|s_divCounter\(8) & (!\divisor|s_divCounter\(6) & \divisor|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(25),
	datab => \divisor|s_divCounter\(8),
	datac => \divisor|s_divCounter\(6),
	datad => \divisor|s_divCounter\(26),
	combout => \divisor|clkOut~4_combout\);

-- Location: LCCOMB_X111_Y52_N24
\divisor|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~6_combout\ = (!\divisor|s_divCounter\(27) & (\divisor|s_divCounter\(24) & (\divisor|s_divCounter\(4) & \divisor|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(27),
	datab => \divisor|s_divCounter\(24),
	datac => \divisor|s_divCounter\(4),
	datad => \divisor|s_divCounter\(5),
	combout => \divisor|clkOut~6_combout\);

-- Location: LCCOMB_X111_Y52_N30
\divisor|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~7_combout\ = (\divisor|clkOut~5_combout\ & (\divisor|clkOut~3_combout\ & (\divisor|clkOut~4_combout\ & \divisor|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|clkOut~5_combout\,
	datab => \divisor|clkOut~3_combout\,
	datac => \divisor|clkOut~4_combout\,
	datad => \divisor|clkOut~6_combout\,
	combout => \divisor|clkOut~7_combout\);

-- Location: LCCOMB_X111_Y53_N20
\divisor|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~1_combout\ = (\divisor|s_divCounter\(12) & (\divisor|s_divCounter\(11) & (!\divisor|s_divCounter\(13) & !\divisor|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(12),
	datab => \divisor|s_divCounter\(11),
	datac => \divisor|s_divCounter\(13),
	datad => \divisor|s_divCounter\(9),
	combout => \divisor|clkOut~1_combout\);

-- Location: LCCOMB_X111_Y52_N8
\divisor|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~8_combout\ = (\divisor|clkOut~0_combout\ & (\divisor|clkOut~2_combout\ & (\divisor|clkOut~7_combout\ & \divisor|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|clkOut~0_combout\,
	datab => \divisor|clkOut~2_combout\,
	datac => \divisor|clkOut~7_combout\,
	datad => \divisor|clkOut~1_combout\,
	combout => \divisor|clkOut~8_combout\);

-- Location: LCCOMB_X111_Y52_N26
\divisor|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|clkOut~9_combout\ = (\divisor|LessThan0~9_combout\ & (((\divisor|clkOut~8_combout\) # (\divisor|clkOut~q\)))) # (!\divisor|LessThan0~9_combout\ & (\divisor|LessThan0~5_combout\ & ((\divisor|clkOut~8_combout\) # (\divisor|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~9_combout\,
	datab => \divisor|LessThan0~5_combout\,
	datac => \divisor|clkOut~8_combout\,
	datad => \divisor|clkOut~q\,
	combout => \divisor|clkOut~9_combout\);

-- Location: FF_X111_Y52_N11
\divisor|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \divisor|clkOut~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clkOut~q\);

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X114_Y17_N18
\top_level|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~8_combout\ = (!\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \top_level|s_currentState~8_combout\);

-- Location: FF_X114_Y17_N19
\top_level|s_currentState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clkOut~clkctrl_outclk\,
	d => \top_level|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.S1~q\);

-- Location: LCCOMB_X114_Y17_N12
\top_level|s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~7_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \top_level|s_currentState.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \top_level|s_currentState.S1~q\,
	combout => \top_level|s_currentState~7_combout\);

-- Location: FF_X114_Y17_N13
\top_level|s_currentState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clkOut~clkctrl_outclk\,
	d => \top_level|s_currentState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.S2~q\);

-- Location: LCCOMB_X114_Y17_N28
\top_level|s_currentState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|s_currentState~6_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \top_level|s_currentState.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \top_level|s_currentState.S2~q\,
	combout => \top_level|s_currentState~6_combout\);

-- Location: FF_X114_Y17_N29
\top_level|s_currentState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clkOut~clkctrl_outclk\,
	d => \top_level|s_currentState~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_level|s_currentState.S3~q\);

-- Location: LCCOMB_X114_Y17_N6
\top_level|Yout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_level|Yout~1_combout\ = (\top_level|s_currentState.S3~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_level|s_currentState.S3~q\,
	datad => \SW[0]~input_o\,
	combout => \top_level|Yout~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


