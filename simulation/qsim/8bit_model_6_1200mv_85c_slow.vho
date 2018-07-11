-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "07/11/2018 19:28:08"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	clk_div IS
    PORT (
	clk_50M : IN std_logic;
	clk_out : OUT std_logic
	);
END clk_div;

-- Design Ports Information
-- clk_out	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_div IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~72_combout\ : std_logic;
SIGNAL \count[1]~24_combout\ : std_logic;
SIGNAL \count[1]~25\ : std_logic;
SIGNAL \count[2]~26_combout\ : std_logic;
SIGNAL \count[2]~27\ : std_logic;
SIGNAL \count[3]~28_combout\ : std_logic;
SIGNAL \count[3]~29\ : std_logic;
SIGNAL \count[4]~30_combout\ : std_logic;
SIGNAL \count[4]~31\ : std_logic;
SIGNAL \count[5]~32_combout\ : std_logic;
SIGNAL \count[5]~33\ : std_logic;
SIGNAL \count[6]~34_combout\ : std_logic;
SIGNAL \count[6]~35\ : std_logic;
SIGNAL \count[7]~36_combout\ : std_logic;
SIGNAL \count[7]~37\ : std_logic;
SIGNAL \count[8]~38_combout\ : std_logic;
SIGNAL \count[8]~39\ : std_logic;
SIGNAL \count[9]~40_combout\ : std_logic;
SIGNAL \count[9]~41\ : std_logic;
SIGNAL \count[10]~42_combout\ : std_logic;
SIGNAL \count[10]~43\ : std_logic;
SIGNAL \count[11]~44_combout\ : std_logic;
SIGNAL \count[11]~45\ : std_logic;
SIGNAL \count[12]~46_combout\ : std_logic;
SIGNAL \count[12]~47\ : std_logic;
SIGNAL \count[13]~48_combout\ : std_logic;
SIGNAL \count[13]~49\ : std_logic;
SIGNAL \count[14]~50_combout\ : std_logic;
SIGNAL \count[14]~51\ : std_logic;
SIGNAL \count[15]~52_combout\ : std_logic;
SIGNAL \count[15]~53\ : std_logic;
SIGNAL \count[16]~54_combout\ : std_logic;
SIGNAL \count[16]~55\ : std_logic;
SIGNAL \count[17]~56_combout\ : std_logic;
SIGNAL \count[17]~57\ : std_logic;
SIGNAL \count[18]~58_combout\ : std_logic;
SIGNAL \count[18]~59\ : std_logic;
SIGNAL \count[19]~60_combout\ : std_logic;
SIGNAL \count[19]~61\ : std_logic;
SIGNAL \count[20]~62_combout\ : std_logic;
SIGNAL \count[20]~63\ : std_logic;
SIGNAL \count[21]~64_combout\ : std_logic;
SIGNAL \count[21]~65\ : std_logic;
SIGNAL \count[22]~66_combout\ : std_logic;
SIGNAL \count[22]~67\ : std_logic;
SIGNAL \count[23]~68_combout\ : std_logic;
SIGNAL \count[23]~69\ : std_logic;
SIGNAL \count[24]~70_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50M <= clk_50M;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y5_N16
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tmp~0_combout\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G2
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N6
\count[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~72_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~72_combout\);

-- Location: FF_X1_Y4_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[0]~72_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y4_N8
\count[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~24_combout\ = (count(0) & (count(1) $ (VCC))) # (!count(0) & (count(1) & VCC))
-- \count[1]~25\ = CARRY((count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => VCC,
	combout => \count[1]~24_combout\,
	cout => \count[1]~25\);

-- Location: FF_X1_Y4_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[1]~24_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y4_N10
\count[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~26_combout\ = (count(2) & (!\count[1]~25\)) # (!count(2) & ((\count[1]~25\) # (GND)))
-- \count[2]~27\ = CARRY((!\count[1]~25\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~25\,
	combout => \count[2]~26_combout\,
	cout => \count[2]~27\);

-- Location: FF_X1_Y4_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[2]~26_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y4_N12
\count[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~28_combout\ = (count(3) & (\count[2]~27\ $ (GND))) # (!count(3) & (!\count[2]~27\ & VCC))
-- \count[3]~29\ = CARRY((count(3) & !\count[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~27\,
	combout => \count[3]~28_combout\,
	cout => \count[3]~29\);

-- Location: FF_X1_Y4_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[3]~28_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y4_N14
\count[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~30_combout\ = (count(4) & (!\count[3]~29\)) # (!count(4) & ((\count[3]~29\) # (GND)))
-- \count[4]~31\ = CARRY((!\count[3]~29\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~29\,
	combout => \count[4]~30_combout\,
	cout => \count[4]~31\);

-- Location: FF_X1_Y4_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[4]~30_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X1_Y4_N16
\count[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~32_combout\ = (count(5) & (\count[4]~31\ $ (GND))) # (!count(5) & (!\count[4]~31\ & VCC))
-- \count[5]~33\ = CARRY((count(5) & !\count[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~31\,
	combout => \count[5]~32_combout\,
	cout => \count[5]~33\);

-- Location: FF_X1_Y4_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[5]~32_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X1_Y4_N18
\count[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~34_combout\ = (count(6) & (!\count[5]~33\)) # (!count(6) & ((\count[5]~33\) # (GND)))
-- \count[6]~35\ = CARRY((!\count[5]~33\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~33\,
	combout => \count[6]~34_combout\,
	cout => \count[6]~35\);

-- Location: FF_X1_Y4_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[6]~34_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X1_Y4_N20
\count[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~36_combout\ = (count(7) & (\count[6]~35\ $ (GND))) # (!count(7) & (!\count[6]~35\ & VCC))
-- \count[7]~37\ = CARRY((count(7) & !\count[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~35\,
	combout => \count[7]~36_combout\,
	cout => \count[7]~37\);

-- Location: FF_X1_Y4_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[7]~36_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X1_Y4_N22
\count[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~38_combout\ = (count(8) & (!\count[7]~37\)) # (!count(8) & ((\count[7]~37\) # (GND)))
-- \count[8]~39\ = CARRY((!\count[7]~37\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~37\,
	combout => \count[8]~38_combout\,
	cout => \count[8]~39\);

-- Location: FF_X1_Y4_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[8]~38_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X1_Y4_N24
\count[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~40_combout\ = (count(9) & (\count[8]~39\ $ (GND))) # (!count(9) & (!\count[8]~39\ & VCC))
-- \count[9]~41\ = CARRY((count(9) & !\count[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~39\,
	combout => \count[9]~40_combout\,
	cout => \count[9]~41\);

-- Location: FF_X1_Y4_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[9]~40_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X1_Y4_N26
\count[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~42_combout\ = (count(10) & (!\count[9]~41\)) # (!count(10) & ((\count[9]~41\) # (GND)))
-- \count[10]~43\ = CARRY((!\count[9]~41\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~41\,
	combout => \count[10]~42_combout\,
	cout => \count[10]~43\);

-- Location: FF_X1_Y4_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[10]~42_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X1_Y4_N28
\count[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~44_combout\ = (count(11) & (\count[10]~43\ $ (GND))) # (!count(11) & (!\count[10]~43\ & VCC))
-- \count[11]~45\ = CARRY((count(11) & !\count[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~43\,
	combout => \count[11]~44_combout\,
	cout => \count[11]~45\);

-- Location: FF_X1_Y4_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[11]~44_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X1_Y4_N30
\count[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~46_combout\ = (count(12) & (!\count[11]~45\)) # (!count(12) & ((\count[11]~45\) # (GND)))
-- \count[12]~47\ = CARRY((!\count[11]~45\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~45\,
	combout => \count[12]~46_combout\,
	cout => \count[12]~47\);

-- Location: FF_X1_Y4_N31
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[12]~46_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X1_Y3_N0
\count[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~48_combout\ = (count(13) & (\count[12]~47\ $ (GND))) # (!count(13) & (!\count[12]~47\ & VCC))
-- \count[13]~49\ = CARRY((count(13) & !\count[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~47\,
	combout => \count[13]~48_combout\,
	cout => \count[13]~49\);

-- Location: FF_X1_Y3_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[13]~48_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X1_Y3_N2
\count[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~50_combout\ = (count(14) & (!\count[13]~49\)) # (!count(14) & ((\count[13]~49\) # (GND)))
-- \count[14]~51\ = CARRY((!\count[13]~49\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~49\,
	combout => \count[14]~50_combout\,
	cout => \count[14]~51\);

-- Location: FF_X1_Y3_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[14]~50_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X1_Y3_N4
\count[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~52_combout\ = (count(15) & (\count[14]~51\ $ (GND))) # (!count(15) & (!\count[14]~51\ & VCC))
-- \count[15]~53\ = CARRY((count(15) & !\count[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~51\,
	combout => \count[15]~52_combout\,
	cout => \count[15]~53\);

-- Location: FF_X1_Y3_N5
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[15]~52_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X1_Y3_N6
\count[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~54_combout\ = (count(16) & (!\count[15]~53\)) # (!count(16) & ((\count[15]~53\) # (GND)))
-- \count[16]~55\ = CARRY((!\count[15]~53\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~53\,
	combout => \count[16]~54_combout\,
	cout => \count[16]~55\);

-- Location: FF_X1_Y3_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[16]~54_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X1_Y3_N8
\count[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~56_combout\ = (count(17) & (\count[16]~55\ $ (GND))) # (!count(17) & (!\count[16]~55\ & VCC))
-- \count[17]~57\ = CARRY((count(17) & !\count[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~55\,
	combout => \count[17]~56_combout\,
	cout => \count[17]~57\);

-- Location: FF_X1_Y3_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[17]~56_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X1_Y3_N10
\count[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~58_combout\ = (count(18) & (!\count[17]~57\)) # (!count(18) & ((\count[17]~57\) # (GND)))
-- \count[18]~59\ = CARRY((!\count[17]~57\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~57\,
	combout => \count[18]~58_combout\,
	cout => \count[18]~59\);

-- Location: FF_X1_Y3_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[18]~58_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X1_Y3_N12
\count[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~60_combout\ = (count(19) & (\count[18]~59\ $ (GND))) # (!count(19) & (!\count[18]~59\ & VCC))
-- \count[19]~61\ = CARRY((count(19) & !\count[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~59\,
	combout => \count[19]~60_combout\,
	cout => \count[19]~61\);

-- Location: FF_X1_Y3_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[19]~60_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X1_Y3_N14
\count[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~62_combout\ = (count(20) & (!\count[19]~61\)) # (!count(20) & ((\count[19]~61\) # (GND)))
-- \count[20]~63\ = CARRY((!\count[19]~61\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~61\,
	combout => \count[20]~62_combout\,
	cout => \count[20]~63\);

-- Location: FF_X1_Y3_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[20]~62_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X1_Y3_N16
\count[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~64_combout\ = (count(21) & (\count[20]~63\ $ (GND))) # (!count(21) & (!\count[20]~63\ & VCC))
-- \count[21]~65\ = CARRY((count(21) & !\count[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~63\,
	combout => \count[21]~64_combout\,
	cout => \count[21]~65\);

-- Location: FF_X1_Y3_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[21]~64_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X1_Y3_N18
\count[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~66_combout\ = (count(22) & (!\count[21]~65\)) # (!count(22) & ((\count[21]~65\) # (GND)))
-- \count[22]~67\ = CARRY((!\count[21]~65\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~65\,
	combout => \count[22]~66_combout\,
	cout => \count[22]~67\);

-- Location: FF_X1_Y3_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[22]~66_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X1_Y3_N20
\count[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~68_combout\ = (count(23) & (\count[22]~67\ $ (GND))) # (!count(23) & (!\count[22]~67\ & VCC))
-- \count[23]~69\ = CARRY((count(23) & !\count[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~67\,
	combout => \count[23]~68_combout\,
	cout => \count[23]~69\);

-- Location: FF_X1_Y3_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[23]~68_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X1_Y3_N22
\count[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~70_combout\ = count(24) $ (\count[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	cin => \count[23]~69\,
	combout => \count[24]~70_combout\);

-- Location: FF_X1_Y3_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \count[24]~70_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X1_Y3_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(24) & (!count(8) & (!count(2) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(8),
	datac => count(2),
	datad => count(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y3_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(12) & (count(14) & (!count(15) & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(14),
	datac => count(15),
	datad => count(13),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y4_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(7) & (!count(5) & (!count(4) & count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(5),
	datac => count(4),
	datad => count(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y3_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(17) & (count(16) & (count(18) & count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(16),
	datac => count(18),
	datad => count(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X1_Y4_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(3) & (count(11) & (!count(10) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(11),
	datac => count(10),
	datad => count(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X2_Y3_N6
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (count(20) & (count(22) & (count(21) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(22),
	datac => count(21),
	datad => count(23),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y3_N24
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~3_combout\ & (!count(0) & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => count(0),
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X1_Y3_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X1_Y5_N16
\tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = \Equal0~7_combout\ $ (\tmp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \tmp~0_combout\,
	combout => \tmp~0_combout\);

ww_clk_out <= \clk_out~output_o\;
END structure;


