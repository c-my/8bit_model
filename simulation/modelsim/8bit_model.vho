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

-- DATE "07/13/2018 20:16:13"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	ar IS
    PORT (
	clk : IN std_logic;
	en_D : IN std_logic;
	addr_in : IN std_logic_vector(7 DOWNTO 0);
	addr_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ar;

-- Design Ports Information
-- addr_out[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_out[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_D	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[3]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[6]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_in[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ar IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_en_D : std_logic;
SIGNAL ww_addr_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addr_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr_out[0]~output_o\ : std_logic;
SIGNAL \addr_out[1]~output_o\ : std_logic;
SIGNAL \addr_out[2]~output_o\ : std_logic;
SIGNAL \addr_out[3]~output_o\ : std_logic;
SIGNAL \addr_out[4]~output_o\ : std_logic;
SIGNAL \addr_out[5]~output_o\ : std_logic;
SIGNAL \addr_out[6]~output_o\ : std_logic;
SIGNAL \addr_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr_in[0]~input_o\ : std_logic;
SIGNAL \addr_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \en_D~input_o\ : std_logic;
SIGNAL \addr_out[0]~reg0_q\ : std_logic;
SIGNAL \addr_in[1]~input_o\ : std_logic;
SIGNAL \addr_out[1]~reg0_q\ : std_logic;
SIGNAL \addr_in[2]~input_o\ : std_logic;
SIGNAL \addr_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \addr_out[2]~reg0_q\ : std_logic;
SIGNAL \addr_in[3]~input_o\ : std_logic;
SIGNAL \addr_out[3]~reg0_q\ : std_logic;
SIGNAL \addr_in[4]~input_o\ : std_logic;
SIGNAL \addr_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \addr_out[4]~reg0_q\ : std_logic;
SIGNAL \addr_in[5]~input_o\ : std_logic;
SIGNAL \addr_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \addr_out[5]~reg0_q\ : std_logic;
SIGNAL \addr_in[6]~input_o\ : std_logic;
SIGNAL \addr_out[6]~reg0_q\ : std_logic;
SIGNAL \addr_in[7]~input_o\ : std_logic;
SIGNAL \addr_out[7]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en_D <= en_D;
ww_addr_in <= addr_in;
addr_out <= ww_addr_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\addr_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\addr_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\addr_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\addr_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\addr_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\addr_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\addr_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\addr_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \addr_out[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N1
\addr_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(0),
	o => \addr_in[0]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\addr_out[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_out[0]~reg0feeder_combout\ = \addr_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr_in[0]~input_o\,
	combout => \addr_out[0]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y9_N8
\en_D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_D,
	o => \en_D~input_o\);

-- Location: FF_X1_Y7_N1
\addr_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_out[0]~reg0feeder_combout\,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[0]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N22
\addr_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(1),
	o => \addr_in[1]~input_o\);

-- Location: FF_X8_Y7_N9
\addr_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr_in[1]~input_o\,
	sload => VCC,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[1]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N1
\addr_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(2),
	o => \addr_in[2]~input_o\);

-- Location: LCCOMB_X8_Y7_N2
\addr_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_out[2]~reg0feeder_combout\ = \addr_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr_in[2]~input_o\,
	combout => \addr_out[2]~reg0feeder_combout\);

-- Location: FF_X8_Y7_N3
\addr_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_out[2]~reg0feeder_combout\,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[2]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N1
\addr_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(3),
	o => \addr_in[3]~input_o\);

-- Location: FF_X8_Y7_N13
\addr_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr_in[3]~input_o\,
	sload => VCC,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[3]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N15
\addr_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(4),
	o => \addr_in[4]~input_o\);

-- Location: LCCOMB_X1_Y7_N26
\addr_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_out[4]~reg0feeder_combout\ = \addr_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr_in[4]~input_o\,
	combout => \addr_out[4]~reg0feeder_combout\);

-- Location: FF_X1_Y7_N27
\addr_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_out[4]~reg0feeder_combout\,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[4]~reg0_q\);

-- Location: IOIBUF_X5_Y24_N8
\addr_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(5),
	o => \addr_in[5]~input_o\);

-- Location: LCCOMB_X8_Y7_N30
\addr_out[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_out[5]~reg0feeder_combout\ = \addr_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr_in[5]~input_o\,
	combout => \addr_out[5]~reg0feeder_combout\);

-- Location: FF_X8_Y7_N31
\addr_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_out[5]~reg0feeder_combout\,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[5]~reg0_q\);

-- Location: IOIBUF_X0_Y9_N1
\addr_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(6),
	o => \addr_in[6]~input_o\);

-- Location: FF_X1_Y7_N13
\addr_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr_in[6]~input_o\,
	sload => VCC,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[6]~reg0_q\);

-- Location: IOIBUF_X9_Y0_N8
\addr_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(7),
	o => \addr_in[7]~input_o\);

-- Location: FF_X8_Y7_N1
\addr_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr_in[7]~input_o\,
	sload => VCC,
	ena => \en_D~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addr_out[7]~reg0_q\);

ww_addr_out(0) <= \addr_out[0]~output_o\;

ww_addr_out(1) <= \addr_out[1]~output_o\;

ww_addr_out(2) <= \addr_out[2]~output_o\;

ww_addr_out(3) <= \addr_out[3]~output_o\;

ww_addr_out(4) <= \addr_out[4]~output_o\;

ww_addr_out(5) <= \addr_out[5]~output_o\;

ww_addr_out(6) <= \addr_out[6]~output_o\;

ww_addr_out(7) <= \addr_out[7]~output_o\;
END structure;


