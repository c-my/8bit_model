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

-- DATE "07/10/2018 00:01:36"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eight_bit_model IS
    PORT (
	test_RESULT : OUT std_logic;
	clk : IN std_logic;
	t0 : OUT std_logic;
	t1 : OUT std_logic;
	t2 : OUT std_logic;
	me_out : OUT std_logic;
	t3 : OUT std_logic;
	t5 : OUT std_logic;
	t4 : OUT std_logic;
	t6 : OUT std_logic;
	t7 : OUT std_logic;
	ADDR_WANTED : OUT std_logic_vector(7 DOWNTO 0);
	DATA : OUT std_logic_vector(7 DOWNTO 0)
	);
END eight_bit_model;

-- Design Ports Information
-- test_RESULT	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t0	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t1	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t2	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- me_out	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t3	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t5	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t4	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t6	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t7	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[7]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[4]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_WANTED[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eight_bit_model IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_test_RESULT : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_t0 : std_logic;
SIGNAL ww_t1 : std_logic;
SIGNAL ww_t2 : std_logic;
SIGNAL ww_me_out : std_logic;
SIGNAL ww_t3 : std_logic;
SIGNAL ww_t5 : std_logic;
SIGNAL ww_t4 : std_logic;
SIGNAL ww_t6 : std_logic;
SIGNAL ww_t7 : std_logic;
SIGNAL ww_ADDR_WANTED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \test_RESULT~output_o\ : std_logic;
SIGNAL \t0~output_o\ : std_logic;
SIGNAL \t1~output_o\ : std_logic;
SIGNAL \t2~output_o\ : std_logic;
SIGNAL \me_out~output_o\ : std_logic;
SIGNAL \t3~output_o\ : std_logic;
SIGNAL \t5~output_o\ : std_logic;
SIGNAL \t4~output_o\ : std_logic;
SIGNAL \t6~output_o\ : std_logic;
SIGNAL \t7~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[7]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[6]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[5]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[4]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[3]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[2]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[1]~output_o\ : std_logic;
SIGNAL \ADDR_WANTED[0]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

test_RESULT <= ww_test_RESULT;
ww_clk <= clk;
t0 <= ww_t0;
t1 <= ww_t1;
t2 <= ww_t2;
me_out <= ww_me_out;
t3 <= ww_t3;
t5 <= ww_t5;
t4 <= ww_t4;
t6 <= ww_t6;
t7 <= ww_t7;
ADDR_WANTED <= ww_ADDR_WANTED;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N23
\test_RESULT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \test_RESULT~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\t0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t0~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\t1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t1~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\t2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t2~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\me_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \me_out~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\t3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t3~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\t5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t5~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\t4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t4~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\t6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t6~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\t7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t7~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\ADDR_WANTED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[7]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\ADDR_WANTED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ADDR_WANTED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\ADDR_WANTED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ADDR_WANTED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ADDR_WANTED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ADDR_WANTED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\ADDR_WANTED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADDR_WANTED[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOIBUF_X28_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_test_RESULT <= \test_RESULT~output_o\;

ww_t0 <= \t0~output_o\;

ww_t1 <= \t1~output_o\;

ww_t2 <= \t2~output_o\;

ww_me_out <= \me_out~output_o\;

ww_t3 <= \t3~output_o\;

ww_t5 <= \t5~output_o\;

ww_t4 <= \t4~output_o\;

ww_t6 <= \t6~output_o\;

ww_t7 <= \t7~output_o\;

ww_ADDR_WANTED(7) <= \ADDR_WANTED[7]~output_o\;

ww_ADDR_WANTED(6) <= \ADDR_WANTED[6]~output_o\;

ww_ADDR_WANTED(5) <= \ADDR_WANTED[5]~output_o\;

ww_ADDR_WANTED(4) <= \ADDR_WANTED[4]~output_o\;

ww_ADDR_WANTED(3) <= \ADDR_WANTED[3]~output_o\;

ww_ADDR_WANTED(2) <= \ADDR_WANTED[2]~output_o\;

ww_ADDR_WANTED(1) <= \ADDR_WANTED[1]~output_o\;

ww_ADDR_WANTED(0) <= \ADDR_WANTED[0]~output_o\;

ww_DATA(7) <= \DATA[7]~output_o\;

ww_DATA(6) <= \DATA[6]~output_o\;

ww_DATA(5) <= \DATA[5]~output_o\;

ww_DATA(4) <= \DATA[4]~output_o\;

ww_DATA(3) <= \DATA[3]~output_o\;

ww_DATA(2) <= \DATA[2]~output_o\;

ww_DATA(1) <= \DATA[1]~output_o\;

ww_DATA(0) <= \DATA[0]~output_o\;
END structure;


