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

-- DATE "07/11/2018 00:43:28"

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

ENTITY 	eight_bit_model IS
    PORT (
	test_res : OUT std_logic;
	clk : IN std_logic;
	acc_out : OUT std_logic_vector(7 DOWNTO 0);
	accD : OUT std_logic_vector(7 DOWNTO 0);
	alu_out : OUT std_logic_vector(7 DOWNTO 0);
	ar_out : OUT std_logic_vector(7 DOWNTO 0);
	dBus : OUT std_logic_vector(7 DOWNTO 0);
	pc_out : OUT std_logic_vector(7 DOWNTO 0);
	ram0_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END eight_bit_model;

-- Design Ports Information
-- test_res	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[6]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[5]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[6]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[7]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[6]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[5]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_out[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[7]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[6]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[5]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram0_out[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_test_res : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_acc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_accD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ar_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ram0_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_res~output_o\ : std_logic;
SIGNAL \acc_out[7]~output_o\ : std_logic;
SIGNAL \acc_out[6]~output_o\ : std_logic;
SIGNAL \acc_out[5]~output_o\ : std_logic;
SIGNAL \acc_out[4]~output_o\ : std_logic;
SIGNAL \acc_out[3]~output_o\ : std_logic;
SIGNAL \acc_out[2]~output_o\ : std_logic;
SIGNAL \acc_out[1]~output_o\ : std_logic;
SIGNAL \acc_out[0]~output_o\ : std_logic;
SIGNAL \accD[7]~output_o\ : std_logic;
SIGNAL \accD[6]~output_o\ : std_logic;
SIGNAL \accD[5]~output_o\ : std_logic;
SIGNAL \accD[4]~output_o\ : std_logic;
SIGNAL \accD[3]~output_o\ : std_logic;
SIGNAL \accD[2]~output_o\ : std_logic;
SIGNAL \accD[1]~output_o\ : std_logic;
SIGNAL \accD[0]~output_o\ : std_logic;
SIGNAL \alu_out[7]~output_o\ : std_logic;
SIGNAL \alu_out[6]~output_o\ : std_logic;
SIGNAL \alu_out[5]~output_o\ : std_logic;
SIGNAL \alu_out[4]~output_o\ : std_logic;
SIGNAL \alu_out[3]~output_o\ : std_logic;
SIGNAL \alu_out[2]~output_o\ : std_logic;
SIGNAL \alu_out[1]~output_o\ : std_logic;
SIGNAL \alu_out[0]~output_o\ : std_logic;
SIGNAL \ar_out[7]~output_o\ : std_logic;
SIGNAL \ar_out[6]~output_o\ : std_logic;
SIGNAL \ar_out[5]~output_o\ : std_logic;
SIGNAL \ar_out[4]~output_o\ : std_logic;
SIGNAL \ar_out[3]~output_o\ : std_logic;
SIGNAL \ar_out[2]~output_o\ : std_logic;
SIGNAL \ar_out[1]~output_o\ : std_logic;
SIGNAL \ar_out[0]~output_o\ : std_logic;
SIGNAL \dBus[7]~output_o\ : std_logic;
SIGNAL \dBus[6]~output_o\ : std_logic;
SIGNAL \dBus[5]~output_o\ : std_logic;
SIGNAL \dBus[4]~output_o\ : std_logic;
SIGNAL \dBus[3]~output_o\ : std_logic;
SIGNAL \dBus[2]~output_o\ : std_logic;
SIGNAL \dBus[1]~output_o\ : std_logic;
SIGNAL \dBus[0]~output_o\ : std_logic;
SIGNAL \pc_out[7]~output_o\ : std_logic;
SIGNAL \pc_out[6]~output_o\ : std_logic;
SIGNAL \pc_out[5]~output_o\ : std_logic;
SIGNAL \pc_out[4]~output_o\ : std_logic;
SIGNAL \pc_out[3]~output_o\ : std_logic;
SIGNAL \pc_out[2]~output_o\ : std_logic;
SIGNAL \pc_out[1]~output_o\ : std_logic;
SIGNAL \pc_out[0]~output_o\ : std_logic;
SIGNAL \ram0_out[7]~output_o\ : std_logic;
SIGNAL \ram0_out[6]~output_o\ : std_logic;
SIGNAL \ram0_out[5]~output_o\ : std_logic;
SIGNAL \ram0_out[4]~output_o\ : std_logic;
SIGNAL \ram0_out[3]~output_o\ : std_logic;
SIGNAL \ram0_out[2]~output_o\ : std_logic;
SIGNAL \ram0_out[1]~output_o\ : std_logic;
SIGNAL \ram0_out[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pc|pcout[1]~7_combout\ : std_logic;
SIGNAL \inst|tmp[1]~1_combout\ : std_logic;
SIGNAL \pc|pcout[1]~8\ : std_logic;
SIGNAL \pc|pcout[2]~9_combout\ : std_logic;
SIGNAL \ar|addr_out[2]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[2]~10\ : std_logic;
SIGNAL \pc|pcout[3]~11_combout\ : std_logic;
SIGNAL \ar|addr_out[3]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[3]~12\ : std_logic;
SIGNAL \pc|pcout[4]~13_combout\ : std_logic;
SIGNAL \ar|addr_out[4]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[4]~14\ : std_logic;
SIGNAL \pc|pcout[5]~15_combout\ : std_logic;
SIGNAL \pc|pcout[5]~16\ : std_logic;
SIGNAL \pc|pcout[6]~17_combout\ : std_logic;
SIGNAL \ar|addr_out[6]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[6]~18\ : std_logic;
SIGNAL \pc|pcout[7]~19_combout\ : std_logic;
SIGNAL \ar|addr_out[7]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[6]~feeder_combout\ : std_logic;
SIGNAL \ir|regq[6]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[5]~feeder_combout\ : std_logic;
SIGNAL \ir|regq[5]~feeder_combout\ : std_logic;
SIGNAL \inst9|en_ALU~2_combout\ : std_logic;
SIGNAL \inst9|clr_ME~1_combout\ : std_logic;
SIGNAL \inst9|clr_ME~q\ : std_logic;
SIGNAL \inst|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \inst|tmp[0]~0_combout\ : std_logic;
SIGNAL \inst9|en_PC~0_combout\ : std_logic;
SIGNAL \inst9|o_SUB~0_combout\ : std_logic;
SIGNAL \inst9|clr_ME~0_combout\ : std_logic;
SIGNAL \inst9|clr_PC~q\ : std_logic;
SIGNAL \ar|addr_out[1]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[7]~feeder_combout\ : std_logic;
SIGNAL \ir|regq[7]~feeder_combout\ : std_logic;
SIGNAL \inst9|en_PC~2_combout\ : std_logic;
SIGNAL \inst9|en_ALU~3_combout\ : std_logic;
SIGNAL \inst9|en_PC~3_combout\ : std_logic;
SIGNAL \inst9|en_PC~q\ : std_logic;
SIGNAL \pc|pcout[0]~21_combout\ : std_logic;
SIGNAL \dr|regq[4]~feeder_combout\ : std_logic;
SIGNAL \ir|regq[4]~feeder_combout\ : std_logic;
SIGNAL \ir|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|test_RESULT~q\ : std_logic;
SIGNAL \inst9|en_PC~1_combout\ : std_logic;
SIGNAL \inst9|o_NOT~0_combout\ : std_logic;
SIGNAL \inst9|o_ADD~0_combout\ : std_logic;
SIGNAL \inst9|o_ADD~q\ : std_logic;
SIGNAL \inst9|o_SUB~1_combout\ : std_logic;
SIGNAL \inst9|o_SUB~q\ : std_logic;
SIGNAL \inst14|Add0~0_combout\ : std_logic;
SIGNAL \inst9|o_OR~0_combout\ : std_logic;
SIGNAL \inst9|o_OR~q\ : std_logic;
SIGNAL \inst9|o_AND~0_combout\ : std_logic;
SIGNAL \inst9|o_AND~q\ : std_logic;
SIGNAL \inst9|o_NOT~1_combout\ : std_logic;
SIGNAL \inst9|o_NOT~q\ : std_logic;
SIGNAL \inst14|regq[7]~10_combout\ : std_logic;
SIGNAL \inst14|regq~8_combout\ : std_logic;
SIGNAL \inst14|regq~9_combout\ : std_logic;
SIGNAL \inst14|Add0~1_combout\ : std_logic;
SIGNAL \inst14|Add0~2_combout\ : std_logic;
SIGNAL \inst14|regq~13_combout\ : std_logic;
SIGNAL \inst14|regq~15_combout\ : std_logic;
SIGNAL \inst9|en_ALU~0_combout\ : std_logic;
SIGNAL \inst9|en_ALU~1_combout\ : std_logic;
SIGNAL \inst9|en_ALU~q\ : std_logic;
SIGNAL \inst14|regq[0]~20_combout\ : std_logic;
SIGNAL \inst14|regq[0]~19_combout\ : std_logic;
SIGNAL \inst14|Add0~7_combout\ : std_logic;
SIGNAL \dr|regq[2]~feeder_combout\ : std_logic;
SIGNAL \inst14|Add0~9_combout\ : std_logic;
SIGNAL \dr|regq[1]~feeder_combout\ : std_logic;
SIGNAL \ir|regq[1]~feeder_combout\ : std_logic;
SIGNAL \inst14|Add0~11_combout\ : std_logic;
SIGNAL \dr|regq[0]~feeder_combout\ : std_logic;
SIGNAL \inst14|Add0~13_combout\ : std_logic;
SIGNAL \inst14|Add0~15_cout\ : std_logic;
SIGNAL \inst14|Add0~16_combout\ : std_logic;
SIGNAL \inst14|regq~21_combout\ : std_logic;
SIGNAL \inst14|regq~22_combout\ : std_logic;
SIGNAL \inst9|en_ALU_D~0_combout\ : std_logic;
SIGNAL \inst9|en_ALU_D~q\ : std_logic;
SIGNAL \inst9|o_NEG~0_combout\ : std_logic;
SIGNAL \inst9|o_NEG~1_combout\ : std_logic;
SIGNAL \inst9|o_NEG~q\ : std_logic;
SIGNAL \inst14|regq[7]~12_combout\ : std_logic;
SIGNAL \inst5|accReg~8_combout\ : std_logic;
SIGNAL \inst9|en_dBus~0_combout\ : std_logic;
SIGNAL \inst9|en_dBus~q\ : std_logic;
SIGNAL \inst5|accReg[7]~1_combout\ : std_logic;
SIGNAL \inst14|Add0~12_combout\ : std_logic;
SIGNAL \inst14|Add0~17\ : std_logic;
SIGNAL \inst14|Add0~18_combout\ : std_logic;
SIGNAL \inst14|regq~23_combout\ : std_logic;
SIGNAL \inst14|regq~24_combout\ : std_logic;
SIGNAL \inst5|accReg~7_combout\ : std_logic;
SIGNAL \inst14|Add0~10_combout\ : std_logic;
SIGNAL \inst14|Add0~19\ : std_logic;
SIGNAL \inst14|Add0~20_combout\ : std_logic;
SIGNAL \inst14|regq~25_combout\ : std_logic;
SIGNAL \inst14|regq~26_combout\ : std_logic;
SIGNAL \inst5|accReg~6_combout\ : std_logic;
SIGNAL \inst14|Add0~8_combout\ : std_logic;
SIGNAL \inst14|Add0~21\ : std_logic;
SIGNAL \inst14|Add0~22_combout\ : std_logic;
SIGNAL \inst14|regq~27_combout\ : std_logic;
SIGNAL \inst14|regq~28_combout\ : std_logic;
SIGNAL \inst5|accReg~5_combout\ : std_logic;
SIGNAL \inst14|Add0~6_combout\ : std_logic;
SIGNAL \inst14|Add0~23\ : std_logic;
SIGNAL \inst14|Add0~24_combout\ : std_logic;
SIGNAL \inst14|regq~18_combout\ : std_logic;
SIGNAL \inst14|regq~17_combout\ : std_logic;
SIGNAL \inst5|accReg~4_combout\ : std_logic;
SIGNAL \inst14|Add0~5_combout\ : std_logic;
SIGNAL \inst14|Add0~25\ : std_logic;
SIGNAL \inst14|Add0~26_combout\ : std_logic;
SIGNAL \inst14|regq~16_combout\ : std_logic;
SIGNAL \inst5|accReg~3_combout\ : std_logic;
SIGNAL \inst14|Add0~4_combout\ : std_logic;
SIGNAL \inst14|Add0~27\ : std_logic;
SIGNAL \inst14|Add0~28_combout\ : std_logic;
SIGNAL \inst14|regq~14_combout\ : std_logic;
SIGNAL \inst5|accReg~2_combout\ : std_logic;
SIGNAL \inst14|Add0~3_combout\ : std_logic;
SIGNAL \inst14|Add0~29\ : std_logic;
SIGNAL \inst14|Add0~30_combout\ : std_logic;
SIGNAL \inst14|regq~11_combout\ : std_logic;
SIGNAL \inst5|accReg~0_combout\ : std_logic;
SIGNAL \pc|pcout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|accReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|regq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ir|regq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ar|addr_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dr|regq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|ALT_INV_clr_PC~q\ : std_logic;
SIGNAL \inst9|ALT_INV_clr_ME~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

test_res <= ww_test_res;
ww_clk <= clk;
acc_out <= ww_acc_out;
accD <= ww_accD;
alu_out <= ww_alu_out;
ar_out <= ww_ar_out;
dBus <= ww_dBus;
pc_out <= ww_pc_out;
ram0_out <= ww_ram0_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\);

\ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ar|addr_out\(7) & \ar|addr_out\(6) & \ar|addr_out\(5) & \ar|addr_out\(4) & \ar|addr_out\(3) & \ar|addr_out\(2) & \ar|addr_out\(1) & \ar|addr_out\(0));

\ram0|altsyncram_component|auto_generated|q_a\(0) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram0|altsyncram_component|auto_generated|q_a\(1) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram0|altsyncram_component|auto_generated|q_a\(2) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram0|altsyncram_component|auto_generated|q_a\(3) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram0|altsyncram_component|auto_generated|q_a\(4) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram0|altsyncram_component|auto_generated|q_a\(5) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram0|altsyncram_component|auto_generated|q_a\(6) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram0|altsyncram_component|auto_generated|q_a\(7) <= \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst9|ALT_INV_clr_PC~q\ <= NOT \inst9|clr_PC~q\;
\inst9|ALT_INV_clr_ME~q\ <= NOT \inst9|clr_ME~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N16
\test_res~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|test_RESULT~q\,
	devoe => ww_devoe,
	o => \test_res~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\acc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(7),
	devoe => ww_devoe,
	o => \acc_out[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\acc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(6),
	devoe => ww_devoe,
	o => \acc_out[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\acc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(5),
	devoe => ww_devoe,
	o => \acc_out[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\acc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(4),
	devoe => ww_devoe,
	o => \acc_out[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\acc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(3),
	devoe => ww_devoe,
	o => \acc_out[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\acc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(2),
	devoe => ww_devoe,
	o => \acc_out[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\acc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(1),
	devoe => ww_devoe,
	o => \acc_out[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\acc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(0),
	devoe => ww_devoe,
	o => \acc_out[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\accD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(7),
	devoe => ww_devoe,
	o => \accD[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\accD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(6),
	devoe => ww_devoe,
	o => \accD[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\accD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(5),
	devoe => ww_devoe,
	o => \accD[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\accD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(4),
	devoe => ww_devoe,
	o => \accD[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\accD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(3),
	devoe => ww_devoe,
	o => \accD[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\accD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(2),
	devoe => ww_devoe,
	o => \accD[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\accD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(1),
	devoe => ww_devoe,
	o => \accD[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\accD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|accReg\(0),
	devoe => ww_devoe,
	o => \accD[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\alu_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(7),
	devoe => ww_devoe,
	o => \alu_out[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\alu_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(6),
	devoe => ww_devoe,
	o => \alu_out[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\alu_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(5),
	devoe => ww_devoe,
	o => \alu_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\alu_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(4),
	devoe => ww_devoe,
	o => \alu_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\alu_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(3),
	devoe => ww_devoe,
	o => \alu_out[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\alu_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(2),
	devoe => ww_devoe,
	o => \alu_out[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\alu_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(1),
	devoe => ww_devoe,
	o => \alu_out[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\alu_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|regq\(0),
	devoe => ww_devoe,
	o => \alu_out[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\ar_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(7),
	devoe => ww_devoe,
	o => \ar_out[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\ar_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(6),
	devoe => ww_devoe,
	o => \ar_out[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ar_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(5),
	devoe => ww_devoe,
	o => \ar_out[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\ar_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(4),
	devoe => ww_devoe,
	o => \ar_out[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\ar_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(3),
	devoe => ww_devoe,
	o => \ar_out[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\ar_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(2),
	devoe => ww_devoe,
	o => \ar_out[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\ar_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(1),
	devoe => ww_devoe,
	o => \ar_out[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\ar_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ar|addr_out\(0),
	devoe => ww_devoe,
	o => \ar_out[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\dBus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dBus[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\dBus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dBus[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\dBus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dBus[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\dBus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dBus[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\dBus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(3),
	devoe => ww_devoe,
	o => \dBus[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\dBus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(2),
	devoe => ww_devoe,
	o => \dBus[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\dBus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(1),
	devoe => ww_devoe,
	o => \dBus[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\dBus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|data_out\(0),
	devoe => ww_devoe,
	o => \dBus[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\pc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(7),
	devoe => ww_devoe,
	o => \pc_out[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\pc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(6),
	devoe => ww_devoe,
	o => \pc_out[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\pc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(5),
	devoe => ww_devoe,
	o => \pc_out[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\pc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(4),
	devoe => ww_devoe,
	o => \pc_out[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\pc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(3),
	devoe => ww_devoe,
	o => \pc_out[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\pc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(2),
	devoe => ww_devoe,
	o => \pc_out[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\pc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(1),
	devoe => ww_devoe,
	o => \pc_out[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\pc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|pcout\(0),
	devoe => ww_devoe,
	o => \pc_out[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\ram0_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \ram0_out[7]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\ram0_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \ram0_out[6]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\ram0_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \ram0_out[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\ram0_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \ram0_out[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\ram0_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \ram0_out[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\ram0_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \ram0_out[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\ram0_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \ram0_out[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\ram0_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram0|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \ram0_out[0]~output_o\);

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

-- Location: LCCOMB_X28_Y5_N12
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X25_Y5_N10
\pc|pcout[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[1]~7_combout\ = (\pc|pcout\(1) & (\pc|pcout\(0) $ (VCC))) # (!\pc|pcout\(1) & (\pc|pcout\(0) & VCC))
-- \pc|pcout[1]~8\ = CARRY((\pc|pcout\(1) & \pc|pcout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcout\(1),
	datab => \pc|pcout\(0),
	datad => VCC,
	combout => \pc|pcout[1]~7_combout\,
	cout => \pc|pcout[1]~8\);

-- Location: LCCOMB_X24_Y5_N28
\inst|tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[1]~1_combout\ = !\inst|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tmp\(0),
	combout => \inst|tmp[1]~1_combout\);

-- Location: LCCOMB_X25_Y5_N12
\pc|pcout[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[2]~9_combout\ = (\pc|pcout\(2) & (!\pc|pcout[1]~8\)) # (!\pc|pcout\(2) & ((\pc|pcout[1]~8\) # (GND)))
-- \pc|pcout[2]~10\ = CARRY((!\pc|pcout[1]~8\) # (!\pc|pcout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcout\(2),
	datad => VCC,
	cin => \pc|pcout[1]~8\,
	combout => \pc|pcout[2]~9_combout\,
	cout => \pc|pcout[2]~10\);

-- Location: FF_X25_Y5_N13
\pc|pcout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[2]~9_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(2));

-- Location: LCCOMB_X28_Y5_N30
\ar|addr_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[2]~feeder_combout\ = \pc|pcout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pcout\(2),
	combout => \ar|addr_out[2]~feeder_combout\);

-- Location: FF_X28_Y5_N31
\ar|addr_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(2));

-- Location: LCCOMB_X25_Y5_N14
\pc|pcout[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[3]~11_combout\ = (\pc|pcout\(3) & (\pc|pcout[2]~10\ $ (GND))) # (!\pc|pcout\(3) & (!\pc|pcout[2]~10\ & VCC))
-- \pc|pcout[3]~12\ = CARRY((\pc|pcout\(3) & !\pc|pcout[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(3),
	datad => VCC,
	cin => \pc|pcout[2]~10\,
	combout => \pc|pcout[3]~11_combout\,
	cout => \pc|pcout[3]~12\);

-- Location: FF_X25_Y5_N15
\pc|pcout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[3]~11_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(3));

-- Location: LCCOMB_X28_Y5_N28
\ar|addr_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[3]~feeder_combout\ = \pc|pcout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(3),
	combout => \ar|addr_out[3]~feeder_combout\);

-- Location: FF_X28_Y5_N29
\ar|addr_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(3));

-- Location: LCCOMB_X25_Y5_N16
\pc|pcout[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[4]~13_combout\ = (\pc|pcout\(4) & (!\pc|pcout[3]~12\)) # (!\pc|pcout\(4) & ((\pc|pcout[3]~12\) # (GND)))
-- \pc|pcout[4]~14\ = CARRY((!\pc|pcout[3]~12\) # (!\pc|pcout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(4),
	datad => VCC,
	cin => \pc|pcout[3]~12\,
	combout => \pc|pcout[4]~13_combout\,
	cout => \pc|pcout[4]~14\);

-- Location: FF_X25_Y5_N17
\pc|pcout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[4]~13_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(4));

-- Location: LCCOMB_X26_Y5_N10
\ar|addr_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[4]~feeder_combout\ = \pc|pcout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pcout\(4),
	combout => \ar|addr_out[4]~feeder_combout\);

-- Location: FF_X26_Y5_N11
\ar|addr_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(4));

-- Location: LCCOMB_X25_Y5_N18
\pc|pcout[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[5]~15_combout\ = (\pc|pcout\(5) & (\pc|pcout[4]~14\ $ (GND))) # (!\pc|pcout\(5) & (!\pc|pcout[4]~14\ & VCC))
-- \pc|pcout[5]~16\ = CARRY((\pc|pcout\(5) & !\pc|pcout[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(5),
	datad => VCC,
	cin => \pc|pcout[4]~14\,
	combout => \pc|pcout[5]~15_combout\,
	cout => \pc|pcout[5]~16\);

-- Location: FF_X25_Y5_N19
\pc|pcout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[5]~15_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(5));

-- Location: FF_X25_Y5_N27
\ar|addr_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc|pcout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(5));

-- Location: LCCOMB_X25_Y5_N20
\pc|pcout[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[6]~17_combout\ = (\pc|pcout\(6) & (!\pc|pcout[5]~16\)) # (!\pc|pcout\(6) & ((\pc|pcout[5]~16\) # (GND)))
-- \pc|pcout[6]~18\ = CARRY((!\pc|pcout[5]~16\) # (!\pc|pcout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(6),
	datad => VCC,
	cin => \pc|pcout[5]~16\,
	combout => \pc|pcout[6]~17_combout\,
	cout => \pc|pcout[6]~18\);

-- Location: FF_X25_Y5_N21
\pc|pcout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[6]~17_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(6));

-- Location: LCCOMB_X26_Y5_N4
\ar|addr_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[6]~feeder_combout\ = \pc|pcout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(6),
	combout => \ar|addr_out[6]~feeder_combout\);

-- Location: FF_X26_Y5_N5
\ar|addr_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(6));

-- Location: LCCOMB_X25_Y5_N22
\pc|pcout[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[7]~19_combout\ = \pc|pcout\(7) $ (!\pc|pcout[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcout\(7),
	cin => \pc|pcout[6]~18\,
	combout => \pc|pcout[7]~19_combout\);

-- Location: FF_X25_Y5_N23
\pc|pcout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[7]~19_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(7));

-- Location: LCCOMB_X32_Y5_N0
\ar|addr_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[7]~feeder_combout\ = \pc|pcout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(7),
	combout => \ar|addr_out[7]~feeder_combout\);

-- Location: FF_X32_Y5_N1
\ar|addr_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(7));

-- Location: M9K_X27_Y5_N0
\ram0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090001C00083001800052001340033000940085",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "code.hex",
	init_file_layout => "port_a",
	logical_ram_name => "ram0:ram0|altsyncram:altsyncram_component|altsyncram_d3r3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y5_N18
\dr|regq[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[6]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(6),
	combout => \dr|regq[6]~feeder_combout\);

-- Location: FF_X28_Y5_N19
\dr|regq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(6));

-- Location: LCCOMB_X28_Y5_N8
\ir|regq[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|regq[6]~feeder_combout\ = \dr|regq\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(6),
	combout => \ir|regq[6]~feeder_combout\);

-- Location: FF_X28_Y5_N9
\ir|regq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir|regq[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(6));

-- Location: LCCOMB_X26_Y5_N16
\dr|regq[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[5]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(5),
	combout => \dr|regq[5]~feeder_combout\);

-- Location: FF_X26_Y5_N17
\dr|regq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(5));

-- Location: LCCOMB_X26_Y5_N22
\ir|regq[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|regq[5]~feeder_combout\ = \dr|regq\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(5),
	combout => \ir|regq[5]~feeder_combout\);

-- Location: FF_X26_Y5_N23
\ir|regq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir|regq[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(5));

-- Location: LCCOMB_X25_Y5_N28
\inst9|en_ALU~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_ALU~2_combout\ = (!\ir|regq\(6) & !\ir|regq\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|regq\(6),
	datad => \ir|regq\(5),
	combout => \inst9|en_ALU~2_combout\);

-- Location: LCCOMB_X24_Y5_N4
\inst9|clr_ME~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clr_ME~1_combout\ = (\inst9|en_PC~3_combout\) # ((\ir|regq\(7) & (\inst9|o_SUB~0_combout\ & \inst9|en_ALU~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(7),
	datab => \inst9|en_PC~3_combout\,
	datac => \inst9|o_SUB~0_combout\,
	datad => \inst9|en_ALU~2_combout\,
	combout => \inst9|clr_ME~1_combout\);

-- Location: FF_X24_Y5_N5
\inst9|clr_ME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|clr_ME~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clr_ME~q\);

-- Location: FF_X24_Y5_N29
\inst|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[1]~1_combout\,
	clrn => \inst9|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(1));

-- Location: LCCOMB_X24_Y5_N10
\inst|tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[2]~feeder_combout\ = \inst|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tmp\(1),
	combout => \inst|tmp[2]~feeder_combout\);

-- Location: FF_X24_Y5_N11
\inst|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[2]~feeder_combout\,
	clrn => \inst9|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(2));

-- Location: FF_X24_Y5_N13
\inst|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(2),
	clrn => \inst9|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(3));

-- Location: FF_X24_Y5_N9
\inst|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(3),
	clrn => \inst9|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(4));

-- Location: FF_X24_Y5_N31
\inst|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(4),
	clrn => \inst9|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(5));

-- Location: FF_X24_Y5_N17
\inst|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(5),
	clrn => \inst9|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(6));

-- Location: FF_X24_Y5_N7
\inst|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(6),
	clrn => \inst9|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(7));

-- Location: LCCOMB_X24_Y5_N0
\inst|tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[0]~0_combout\ = !\inst|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tmp\(7),
	combout => \inst|tmp[0]~0_combout\);

-- Location: FF_X24_Y5_N1
\inst|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[0]~0_combout\,
	clrn => \inst9|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(0));

-- Location: LCCOMB_X24_Y5_N30
\inst9|en_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_PC~0_combout\ = (!\inst|tmp\(2) & (!\inst|tmp\(1) & (!\inst|tmp\(4) & !\inst|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(2),
	datab => \inst|tmp\(1),
	datac => \inst|tmp\(4),
	datad => \inst|tmp\(3),
	combout => \inst9|en_PC~0_combout\);

-- Location: LCCOMB_X24_Y5_N20
\inst9|o_SUB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_SUB~0_combout\ = (\ir|regq\(4) & (\inst|tmp\(0) & (\inst|tmp\(5) & \inst9|en_PC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(4),
	datab => \inst|tmp\(0),
	datac => \inst|tmp\(5),
	datad => \inst9|en_PC~0_combout\,
	combout => \inst9|o_SUB~0_combout\);

-- Location: LCCOMB_X25_Y5_N8
\inst9|clr_ME~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clr_ME~0_combout\ = (\ir|regq\(7) & (\inst9|o_SUB~0_combout\ & (!\ir|regq\(6) & !\ir|regq\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(7),
	datab => \inst9|o_SUB~0_combout\,
	datac => \ir|regq\(6),
	datad => \ir|regq\(5),
	combout => \inst9|clr_ME~0_combout\);

-- Location: FF_X25_Y5_N9
\inst9|clr_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|clr_ME~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clr_PC~q\);

-- Location: FF_X25_Y5_N11
\pc|pcout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[1]~7_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	ena => \inst9|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(1));

-- Location: LCCOMB_X25_Y5_N2
\ar|addr_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[1]~feeder_combout\ = \pc|pcout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(1),
	combout => \ar|addr_out[1]~feeder_combout\);

-- Location: FF_X25_Y5_N3
\ar|addr_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(1));

-- Location: LCCOMB_X26_Y5_N20
\dr|regq[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[7]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram0|altsyncram_component|auto_generated|q_a\(7),
	combout => \dr|regq[7]~feeder_combout\);

-- Location: FF_X26_Y5_N21
\dr|regq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(7));

-- Location: LCCOMB_X26_Y5_N28
\ir|regq[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|regq[7]~feeder_combout\ = \dr|regq\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(7),
	combout => \ir|regq[7]~feeder_combout\);

-- Location: FF_X26_Y5_N29
\ir|regq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir|regq[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(7));

-- Location: LCCOMB_X24_Y5_N6
\inst9|en_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_PC~2_combout\ = (!\ir|regq\(7) & (\inst|tmp\(7) & ((\ir|regq\(5)) # (\ir|regq\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(7),
	datab => \ir|regq\(5),
	datac => \inst|tmp\(7),
	datad => \ir|regq\(6),
	combout => \inst9|en_PC~2_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst9|en_ALU~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_ALU~3_combout\ = (!\inst|tmp\(5) & (\inst|tmp\(0) & \inst9|en_PC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst|tmp\(0),
	datad => \inst9|en_PC~0_combout\,
	combout => \inst9|en_ALU~3_combout\);

-- Location: LCCOMB_X24_Y5_N24
\inst9|en_PC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_PC~3_combout\ = (\inst9|en_ALU~3_combout\ & ((\inst|tmp\(6) & ((\ir|Mux0~0_combout\))) # (!\inst|tmp\(6) & (\inst9|en_PC~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|en_PC~2_combout\,
	datab => \inst|tmp\(6),
	datac => \ir|Mux0~0_combout\,
	datad => \inst9|en_ALU~3_combout\,
	combout => \inst9|en_PC~3_combout\);

-- Location: FF_X24_Y5_N25
\inst9|en_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|en_PC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|en_PC~q\);

-- Location: LCCOMB_X25_Y5_N0
\pc|pcout[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[0]~21_combout\ = \pc|pcout\(0) $ (\inst9|en_PC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pcout\(0),
	datad => \inst9|en_PC~q\,
	combout => \pc|pcout[0]~21_combout\);

-- Location: FF_X25_Y5_N1
\pc|pcout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[0]~21_combout\,
	clrn => \inst9|ALT_INV_clr_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(0));

-- Location: FF_X25_Y5_N29
\ar|addr_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc|pcout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(0));

-- Location: LCCOMB_X26_Y5_N26
\dr|regq[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[4]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(4),
	combout => \dr|regq[4]~feeder_combout\);

-- Location: FF_X26_Y5_N27
\dr|regq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(4));

-- Location: LCCOMB_X25_Y5_N6
\ir|regq[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|regq[4]~feeder_combout\ = \dr|regq\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(4),
	combout => \ir|regq[4]~feeder_combout\);

-- Location: FF_X25_Y5_N7
\ir|regq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir|regq[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(4));

-- Location: LCCOMB_X24_Y5_N14
\ir|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|Mux0~0_combout\ = (!\ir|regq\(4) & (!\ir|regq\(5) & (\ir|regq\(7) & !\ir|regq\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(4),
	datab => \ir|regq\(5),
	datac => \ir|regq\(7),
	datad => \ir|regq\(6),
	combout => \ir|Mux0~0_combout\);

-- Location: FF_X24_Y5_N15
\inst9|test_RESULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|test_RESULT~q\);

-- Location: LCCOMB_X24_Y5_N16
\inst9|en_PC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_PC~1_combout\ = (\inst|tmp\(0) & \inst9|en_PC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|tmp\(0),
	datad => \inst9|en_PC~0_combout\,
	combout => \inst9|en_PC~1_combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst9|o_NOT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_NOT~0_combout\ = (\inst|tmp\(5) & (\inst9|en_PC~1_combout\ & (!\ir|regq\(7) & !\ir|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst9|en_PC~1_combout\,
	datac => \ir|regq\(7),
	datad => \ir|regq\(4),
	combout => \inst9|o_NOT~0_combout\);

-- Location: LCCOMB_X24_Y6_N6
\inst9|o_ADD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_ADD~0_combout\ = (!\ir|regq\(6) & (\ir|regq\(5) & \inst9|o_NOT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(6),
	datac => \ir|regq\(5),
	datad => \inst9|o_NOT~0_combout\,
	combout => \inst9|o_ADD~0_combout\);

-- Location: FF_X24_Y6_N7
\inst9|o_ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|o_ADD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|o_ADD~q\);

-- Location: LCCOMB_X24_Y6_N28
\inst9|o_SUB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_SUB~1_combout\ = (!\ir|regq\(6) & (!\ir|regq\(7) & (\ir|regq\(5) & \inst9|o_SUB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(6),
	datab => \ir|regq\(7),
	datac => \ir|regq\(5),
	datad => \inst9|o_SUB~0_combout\,
	combout => \inst9|o_SUB~1_combout\);

-- Location: FF_X24_Y6_N29
\inst9|o_SUB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|o_SUB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|o_SUB~q\);

-- Location: LCCOMB_X26_Y6_N16
\inst14|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~0_combout\ = (\inst9|o_ADD~q\) # (\inst9|o_SUB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|o_ADD~q\,
	datad => \inst9|o_SUB~q\,
	combout => \inst14|Add0~0_combout\);

-- Location: LCCOMB_X26_Y5_N24
\inst9|o_OR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_OR~0_combout\ = (!\ir|regq\(5) & (!\ir|regq\(7) & (\ir|regq\(6) & \inst9|o_SUB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(5),
	datab => \ir|regq\(7),
	datac => \ir|regq\(6),
	datad => \inst9|o_SUB~0_combout\,
	combout => \inst9|o_OR~0_combout\);

-- Location: FF_X26_Y5_N25
\inst9|o_OR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|o_OR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|o_OR~q\);

-- Location: LCCOMB_X26_Y5_N14
\inst9|o_AND~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_AND~0_combout\ = (!\ir|regq\(5) & (\ir|regq\(6) & \inst9|o_NOT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(5),
	datab => \ir|regq\(6),
	datad => \inst9|o_NOT~0_combout\,
	combout => \inst9|o_AND~0_combout\);

-- Location: FF_X26_Y5_N15
\inst9|o_AND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|o_AND~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|o_AND~q\);

-- Location: LCCOMB_X26_Y5_N0
\inst9|o_NOT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_NOT~1_combout\ = (\ir|regq\(5) & (\ir|regq\(6) & \inst9|o_NOT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(5),
	datab => \ir|regq\(6),
	datad => \inst9|o_NOT~0_combout\,
	combout => \inst9|o_NOT~1_combout\);

-- Location: FF_X26_Y5_N1
\inst9|o_NOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|o_NOT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|o_NOT~q\);

-- Location: LCCOMB_X26_Y5_N30
\inst14|regq[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq[7]~10_combout\ = (!\inst9|o_OR~q\ & (!\inst9|o_AND~q\ & !\inst9|o_NOT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|o_OR~q\,
	datac => \inst9|o_AND~q\,
	datad => \inst9|o_NOT~q\,
	combout => \inst14|regq[7]~10_combout\);

-- Location: LCCOMB_X26_Y6_N26
\inst14|regq~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~8_combout\ = (\inst9|o_AND~q\) # ((\inst14|Add0~0_combout\) # ((!\inst9|o_NOT~q\ & !\inst9|o_OR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_AND~q\,
	datab => \inst9|o_NOT~q\,
	datac => \inst9|o_OR~q\,
	datad => \inst14|Add0~0_combout\,
	combout => \inst14|regq~8_combout\);

-- Location: LCCOMB_X25_Y6_N30
\inst14|regq~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~9_combout\ = (!\inst14|regq~8_combout\ & (\inst5|accReg\(7) $ (!\inst9|o_OR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(7),
	datac => \inst9|o_OR~q\,
	datad => \inst14|regq~8_combout\,
	combout => \inst14|regq~9_combout\);

-- Location: LCCOMB_X24_Y6_N2
\inst14|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~1_combout\ = (!\inst9|o_ADD~q\ & \inst9|o_SUB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_ADD~q\,
	datad => \inst9|o_SUB~q\,
	combout => \inst14|Add0~1_combout\);

-- Location: LCCOMB_X23_Y6_N4
\inst14|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~2_combout\ = \inst5|accReg\(7) $ (((\inst9|o_SUB~q\) # (\inst9|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|o_SUB~q\,
	datac => \inst5|accReg\(7),
	datad => \inst9|o_ADD~q\,
	combout => \inst14|Add0~2_combout\);

-- Location: LCCOMB_X26_Y6_N10
\inst14|regq~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~13_combout\ = (!\inst14|regq~8_combout\ & (\inst9|o_OR~q\ $ (!\inst5|accReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|o_OR~q\,
	datac => \inst14|regq~8_combout\,
	datad => \inst5|accReg\(6),
	combout => \inst14|regq~13_combout\);

-- Location: LCCOMB_X25_Y6_N0
\inst14|regq~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~15_combout\ = (!\inst14|regq~8_combout\ & (\inst9|o_OR~q\ $ (!\inst5|accReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_OR~q\,
	datab => \inst5|accReg\(5),
	datad => \inst14|regq~8_combout\,
	combout => \inst14|regq~15_combout\);

-- Location: LCCOMB_X24_Y5_N26
\inst9|en_ALU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_ALU~0_combout\ = (\inst|tmp\(6) & (!\ir|regq\(7) & ((\ir|regq\(6)) # (\ir|regq\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(6),
	datab => \inst|tmp\(6),
	datac => \ir|regq\(7),
	datad => \ir|regq\(5),
	combout => \inst9|en_ALU~0_combout\);

-- Location: LCCOMB_X24_Y5_N22
\inst9|en_ALU~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_ALU~1_combout\ = (\inst9|en_ALU~0_combout\ & (\inst|tmp\(0) & (!\inst|tmp\(5) & \inst9|en_PC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|en_ALU~0_combout\,
	datab => \inst|tmp\(0),
	datac => \inst|tmp\(5),
	datad => \inst9|en_PC~0_combout\,
	combout => \inst9|en_ALU~1_combout\);

-- Location: FF_X24_Y5_N23
\inst9|en_ALU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|en_ALU~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|en_ALU~q\);

-- Location: FF_X24_Y6_N27
\dr|regq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ram0|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(3));

-- Location: FF_X24_Y6_N9
\ir|regq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(3));

-- Location: FF_X24_Y6_N13
\inst9|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir|regq\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(3));

-- Location: LCCOMB_X26_Y6_N2
\inst14|regq[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq[0]~20_combout\ = (\inst14|Add0~0_combout\) # ((!\inst9|o_AND~q\ & ((\inst9|o_OR~q\) # (!\inst9|o_NOT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_AND~q\,
	datab => \inst9|o_NOT~q\,
	datac => \inst9|o_OR~q\,
	datad => \inst14|Add0~0_combout\,
	combout => \inst14|regq[0]~20_combout\);

-- Location: LCCOMB_X26_Y6_N8
\inst14|regq[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq[0]~19_combout\ = (\inst9|o_AND~q\) # ((\inst9|o_ADD~q\) # ((\inst14|regq[7]~10_combout\) # (\inst9|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_AND~q\,
	datab => \inst9|o_ADD~q\,
	datac => \inst14|regq[7]~10_combout\,
	datad => \inst9|o_SUB~q\,
	combout => \inst14|regq[0]~19_combout\);

-- Location: LCCOMB_X24_Y6_N24
\inst14|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~7_combout\ = (\inst9|data_out\(3) & ((\inst9|o_ADD~q\))) # (!\inst9|data_out\(3) & (\inst9|o_SUB~q\ & !\inst9|o_ADD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(3),
	datab => \inst9|o_SUB~q\,
	datad => \inst9|o_ADD~q\,
	combout => \inst14|Add0~7_combout\);

-- Location: LCCOMB_X28_Y6_N8
\dr|regq[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[2]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(2),
	combout => \dr|regq[2]~feeder_combout\);

-- Location: FF_X28_Y6_N9
\dr|regq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(2));

-- Location: FF_X24_Y6_N5
\ir|regq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(2));

-- Location: FF_X24_Y6_N11
\inst9|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir|regq\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(2));

-- Location: LCCOMB_X24_Y6_N30
\inst14|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~9_combout\ = (\inst9|data_out\(2) & ((\inst9|o_ADD~q\))) # (!\inst9|data_out\(2) & (\inst9|o_SUB~q\ & !\inst9|o_ADD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(2),
	datab => \inst9|o_SUB~q\,
	datad => \inst9|o_ADD~q\,
	combout => \inst14|Add0~9_combout\);

-- Location: LCCOMB_X23_Y6_N12
\dr|regq[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[1]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(1),
	combout => \dr|regq[1]~feeder_combout\);

-- Location: FF_X23_Y6_N13
\dr|regq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(1));

-- Location: LCCOMB_X23_Y6_N6
\ir|regq[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|regq[1]~feeder_combout\ = \dr|regq\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(1),
	combout => \ir|regq[1]~feeder_combout\);

-- Location: FF_X23_Y6_N7
\ir|regq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ir|regq[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(1));

-- Location: FF_X24_Y6_N3
\inst9|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir|regq\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(1));

-- Location: LCCOMB_X24_Y6_N14
\inst14|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~11_combout\ = (\inst9|o_ADD~q\ & (\inst9|data_out\(1))) # (!\inst9|o_ADD~q\ & (!\inst9|data_out\(1) & \inst9|o_SUB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_ADD~q\,
	datab => \inst9|data_out\(1),
	datad => \inst9|o_SUB~q\,
	combout => \inst14|Add0~11_combout\);

-- Location: LCCOMB_X28_Y6_N6
\dr|regq[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[0]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram0|altsyncram_component|auto_generated|q_a\(0),
	combout => \dr|regq[0]~feeder_combout\);

-- Location: FF_X28_Y6_N7
\dr|regq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(0));

-- Location: FF_X24_Y6_N31
\ir|regq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|regq\(0));

-- Location: FF_X24_Y6_N19
\inst9|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir|regq\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|data_out\(0));

-- Location: LCCOMB_X24_Y6_N22
\inst14|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~13_combout\ = (\inst9|o_ADD~q\ & (\inst9|data_out\(0))) # (!\inst9|o_ADD~q\ & ((!\inst9|o_SUB~q\) # (!\inst9|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_ADD~q\,
	datab => \inst9|data_out\(0),
	datad => \inst9|o_SUB~q\,
	combout => \inst14|Add0~13_combout\);

-- Location: LCCOMB_X25_Y6_N4
\inst14|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~15_cout\ = CARRY((\inst9|o_SUB~q\ & !\inst9|o_ADD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_SUB~q\,
	datab => \inst9|o_ADD~q\,
	datad => VCC,
	cout => \inst14|Add0~15_cout\);

-- Location: LCCOMB_X25_Y6_N6
\inst14|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~16_combout\ = (\inst14|Add0~12_combout\ & ((\inst14|Add0~13_combout\ & (!\inst14|Add0~15_cout\)) # (!\inst14|Add0~13_combout\ & ((\inst14|Add0~15_cout\) # (GND))))) # (!\inst14|Add0~12_combout\ & ((\inst14|Add0~13_combout\ & 
-- (\inst14|Add0~15_cout\ & VCC)) # (!\inst14|Add0~13_combout\ & (!\inst14|Add0~15_cout\))))
-- \inst14|Add0~17\ = CARRY((\inst14|Add0~12_combout\ & ((!\inst14|Add0~15_cout\) # (!\inst14|Add0~13_combout\))) # (!\inst14|Add0~12_combout\ & (!\inst14|Add0~13_combout\ & !\inst14|Add0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~12_combout\,
	datab => \inst14|Add0~13_combout\,
	datad => VCC,
	cin => \inst14|Add0~15_cout\,
	combout => \inst14|Add0~16_combout\,
	cout => \inst14|Add0~17\);

-- Location: LCCOMB_X26_Y6_N0
\inst14|regq~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~21_combout\ = (\inst14|regq[0]~19_combout\ & ((\inst14|regq[0]~20_combout\ & ((\inst14|Add0~16_combout\))) # (!\inst14|regq[0]~20_combout\ & (\inst5|accReg\(0))))) # (!\inst14|regq[0]~19_combout\ & (\inst5|accReg\(0) $ 
-- (((!\inst14|regq[0]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(0),
	datab => \inst14|Add0~16_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|regq[0]~20_combout\,
	combout => \inst14|regq~21_combout\);

-- Location: LCCOMB_X26_Y6_N24
\inst14|regq~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~22_combout\ = (\inst9|data_out\(0) & ((\inst14|regq~21_combout\) # ((\inst14|regq[0]~20_combout\ & !\inst14|regq[0]~19_combout\)))) # (!\inst9|data_out\(0) & (\inst14|regq~21_combout\ & ((\inst14|regq[0]~20_combout\) # 
-- (!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(0),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|regq~21_combout\,
	combout => \inst14|regq~22_combout\);

-- Location: LCCOMB_X25_Y5_N24
\inst9|en_ALU_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_ALU_D~0_combout\ = (!\ir|regq\(7) & (\inst|tmp\(5) & (\inst9|en_PC~1_combout\ & !\inst9|en_ALU~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(7),
	datab => \inst|tmp\(5),
	datac => \inst9|en_PC~1_combout\,
	datad => \inst9|en_ALU~2_combout\,
	combout => \inst9|en_ALU_D~0_combout\);

-- Location: FF_X25_Y5_N25
\inst9|en_ALU_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|en_ALU_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|en_ALU_D~q\);

-- Location: LCCOMB_X25_Y5_N4
\inst9|o_NEG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_NEG~0_combout\ = (\ir|regq\(6) & (\ir|regq\(5) & ((\inst|tmp\(6)) # (\inst|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(6),
	datab => \inst|tmp\(5),
	datac => \ir|regq\(6),
	datad => \ir|regq\(5),
	combout => \inst9|o_NEG~0_combout\);

-- Location: LCCOMB_X25_Y5_N30
\inst9|o_NEG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|o_NEG~1_combout\ = (!\ir|regq\(7) & (\inst9|o_NEG~0_combout\ & (\inst9|en_PC~1_combout\ & \ir|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|regq\(7),
	datab => \inst9|o_NEG~0_combout\,
	datac => \inst9|en_PC~1_combout\,
	datad => \ir|regq\(4),
	combout => \inst9|o_NEG~1_combout\);

-- Location: FF_X25_Y5_N31
\inst9|o_NEG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|o_NEG~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|o_NEG~q\);

-- Location: LCCOMB_X26_Y6_N20
\inst14|regq[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq[7]~12_combout\ = (\inst9|en_ALU_D~q\ & ((\inst9|o_NEG~q\) # ((\inst14|Add0~0_combout\) # (!\inst14|regq[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|en_ALU_D~q\,
	datab => \inst9|o_NEG~q\,
	datac => \inst14|regq[7]~10_combout\,
	datad => \inst14|Add0~0_combout\,
	combout => \inst14|regq[7]~12_combout\);

-- Location: FF_X26_Y6_N25
\inst14|regq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~22_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(0));

-- Location: LCCOMB_X23_Y6_N26
\inst5|accReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~8_combout\ = (\inst9|en_ALU~q\ & ((\inst14|regq\(0)))) # (!\inst9|en_ALU~q\ & (\inst9|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|data_out\(0),
	datac => \inst14|regq\(0),
	datad => \inst9|en_ALU~q\,
	combout => \inst5|accReg~8_combout\);

-- Location: LCCOMB_X24_Y5_N18
\inst9|en_dBus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|en_dBus~0_combout\ = (\inst|tmp\(5) & (\inst9|en_PC~0_combout\ & (\ir|Mux0~0_combout\ & \inst|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst9|en_PC~0_combout\,
	datac => \ir|Mux0~0_combout\,
	datad => \inst|tmp\(0),
	combout => \inst9|en_dBus~0_combout\);

-- Location: FF_X24_Y5_N19
\inst9|en_dBus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|en_dBus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|en_dBus~q\);

-- Location: LCCOMB_X24_Y6_N20
\inst5|accReg[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg[7]~1_combout\ = (\inst9|en_dBus~q\) # (\inst9|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|en_dBus~q\,
	datad => \inst9|en_ALU~q\,
	combout => \inst5|accReg[7]~1_combout\);

-- Location: FF_X24_Y6_N21
\inst5|accReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~8_combout\,
	sload => VCC,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(0));

-- Location: LCCOMB_X24_Y6_N26
\inst14|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~12_combout\ = \inst5|accReg\(0) $ (((\inst9|o_ADD~q\) # (\inst9|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_ADD~q\,
	datab => \inst9|o_SUB~q\,
	datad => \inst5|accReg\(0),
	combout => \inst14|Add0~12_combout\);

-- Location: LCCOMB_X25_Y6_N8
\inst14|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~18_combout\ = ((\inst14|Add0~11_combout\ $ (\inst14|Add0~10_combout\ $ (\inst14|Add0~17\)))) # (GND)
-- \inst14|Add0~19\ = CARRY((\inst14|Add0~11_combout\ & ((!\inst14|Add0~17\) # (!\inst14|Add0~10_combout\))) # (!\inst14|Add0~11_combout\ & (!\inst14|Add0~10_combout\ & !\inst14|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~11_combout\,
	datab => \inst14|Add0~10_combout\,
	datad => VCC,
	cin => \inst14|Add0~17\,
	combout => \inst14|Add0~18_combout\,
	cout => \inst14|Add0~19\);

-- Location: LCCOMB_X26_Y6_N6
\inst14|regq~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~23_combout\ = (\inst14|regq[0]~20_combout\ & ((\inst14|regq[0]~19_combout\ & ((\inst14|Add0~18_combout\))) # (!\inst14|regq[0]~19_combout\ & (\inst5|accReg\(1))))) # (!\inst14|regq[0]~20_combout\ & (\inst5|accReg\(1) $ 
-- ((!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|Add0~18_combout\,
	combout => \inst14|regq~23_combout\);

-- Location: LCCOMB_X26_Y6_N30
\inst14|regq~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~24_combout\ = (\inst9|data_out\(1) & ((\inst14|regq~23_combout\) # ((\inst14|regq[0]~20_combout\ & !\inst14|regq[0]~19_combout\)))) # (!\inst9|data_out\(1) & (\inst14|regq~23_combout\ & ((\inst14|regq[0]~20_combout\) # 
-- (!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(1),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|regq~23_combout\,
	combout => \inst14|regq~24_combout\);

-- Location: FF_X26_Y6_N31
\inst14|regq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~24_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(1));

-- Location: LCCOMB_X26_Y6_N14
\inst5|accReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~7_combout\ = (\inst9|en_ALU~q\ & (\inst14|regq\(1))) # (!\inst9|en_ALU~q\ & ((\inst9|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|regq\(1),
	datac => \inst9|en_ALU~q\,
	datad => \inst9|data_out\(1),
	combout => \inst5|accReg~7_combout\);

-- Location: FF_X25_Y6_N1
\inst5|accReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~7_combout\,
	sload => VCC,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(1));

-- Location: LCCOMB_X25_Y6_N28
\inst14|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~10_combout\ = \inst5|accReg\(1) $ (((\inst9|o_ADD~q\) # (\inst9|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|accReg\(1),
	datac => \inst9|o_ADD~q\,
	datad => \inst9|o_SUB~q\,
	combout => \inst14|Add0~10_combout\);

-- Location: LCCOMB_X25_Y6_N10
\inst14|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~20_combout\ = (\inst14|Add0~9_combout\ & ((\inst14|Add0~8_combout\ & (!\inst14|Add0~19\)) # (!\inst14|Add0~8_combout\ & (\inst14|Add0~19\ & VCC)))) # (!\inst14|Add0~9_combout\ & ((\inst14|Add0~8_combout\ & ((\inst14|Add0~19\) # (GND))) # 
-- (!\inst14|Add0~8_combout\ & (!\inst14|Add0~19\))))
-- \inst14|Add0~21\ = CARRY((\inst14|Add0~9_combout\ & (\inst14|Add0~8_combout\ & !\inst14|Add0~19\)) # (!\inst14|Add0~9_combout\ & ((\inst14|Add0~8_combout\) # (!\inst14|Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~9_combout\,
	datab => \inst14|Add0~8_combout\,
	datad => VCC,
	cin => \inst14|Add0~19\,
	combout => \inst14|Add0~20_combout\,
	cout => \inst14|Add0~21\);

-- Location: LCCOMB_X26_Y6_N28
\inst14|regq~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~25_combout\ = (\inst14|regq[0]~20_combout\ & ((\inst14|regq[0]~19_combout\ & ((\inst14|Add0~20_combout\))) # (!\inst14|regq[0]~19_combout\ & (\inst5|accReg\(2))))) # (!\inst14|regq[0]~20_combout\ & (\inst5|accReg\(2) $ 
-- ((!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(2),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|Add0~20_combout\,
	combout => \inst14|regq~25_combout\);

-- Location: LCCOMB_X26_Y6_N12
\inst14|regq~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~26_combout\ = (\inst9|data_out\(2) & ((\inst14|regq~25_combout\) # ((\inst14|regq[0]~20_combout\ & !\inst14|regq[0]~19_combout\)))) # (!\inst9|data_out\(2) & (\inst14|regq~25_combout\ & ((\inst14|regq[0]~20_combout\) # 
-- (!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(2),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|regq~25_combout\,
	combout => \inst14|regq~26_combout\);

-- Location: FF_X26_Y6_N13
\inst14|regq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~26_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(2));

-- Location: LCCOMB_X24_Y6_N16
\inst5|accReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~6_combout\ = (\inst9|en_ALU~q\ & (\inst14|regq\(2))) # (!\inst9|en_ALU~q\ & ((\inst9|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|regq\(2),
	datac => \inst9|en_ALU~q\,
	datad => \inst9|data_out\(2),
	combout => \inst5|accReg~6_combout\);

-- Location: FF_X24_Y6_N17
\inst5|accReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~6_combout\,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(2));

-- Location: LCCOMB_X24_Y6_N4
\inst14|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~8_combout\ = \inst5|accReg\(2) $ (((\inst9|o_SUB~q\) # (\inst9|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_SUB~q\,
	datab => \inst5|accReg\(2),
	datad => \inst9|o_ADD~q\,
	combout => \inst14|Add0~8_combout\);

-- Location: LCCOMB_X25_Y6_N12
\inst14|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~22_combout\ = ((\inst14|Add0~6_combout\ $ (\inst14|Add0~7_combout\ $ (\inst14|Add0~21\)))) # (GND)
-- \inst14|Add0~23\ = CARRY((\inst14|Add0~6_combout\ & (\inst14|Add0~7_combout\ & !\inst14|Add0~21\)) # (!\inst14|Add0~6_combout\ & ((\inst14|Add0~7_combout\) # (!\inst14|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~6_combout\,
	datab => \inst14|Add0~7_combout\,
	datad => VCC,
	cin => \inst14|Add0~21\,
	combout => \inst14|Add0~22_combout\,
	cout => \inst14|Add0~23\);

-- Location: LCCOMB_X26_Y6_N18
\inst14|regq~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~27_combout\ = (\inst14|regq[0]~20_combout\ & ((\inst14|regq[0]~19_combout\ & ((\inst14|Add0~22_combout\))) # (!\inst14|regq[0]~19_combout\ & (\inst5|accReg\(3))))) # (!\inst14|regq[0]~20_combout\ & (\inst5|accReg\(3) $ 
-- ((!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(3),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|Add0~22_combout\,
	combout => \inst14|regq~27_combout\);

-- Location: LCCOMB_X26_Y6_N22
\inst14|regq~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~28_combout\ = (\inst9|data_out\(3) & ((\inst14|regq~27_combout\) # ((\inst14|regq[0]~20_combout\ & !\inst14|regq[0]~19_combout\)))) # (!\inst9|data_out\(3) & (\inst14|regq~27_combout\ & ((\inst14|regq[0]~20_combout\) # 
-- (!\inst14|regq[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|data_out\(3),
	datab => \inst14|regq[0]~20_combout\,
	datac => \inst14|regq[0]~19_combout\,
	datad => \inst14|regq~27_combout\,
	combout => \inst14|regq~28_combout\);

-- Location: FF_X26_Y6_N23
\inst14|regq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~28_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(3));

-- Location: LCCOMB_X24_Y6_N0
\inst5|accReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~5_combout\ = (\inst9|en_ALU~q\ & (\inst14|regq\(3))) # (!\inst9|en_ALU~q\ & ((\inst9|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|en_ALU~q\,
	datab => \inst14|regq\(3),
	datad => \inst9|data_out\(3),
	combout => \inst5|accReg~5_combout\);

-- Location: FF_X24_Y6_N1
\inst5|accReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~5_combout\,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(3));

-- Location: LCCOMB_X24_Y6_N8
\inst14|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~6_combout\ = \inst5|accReg\(3) $ (((\inst9|o_SUB~q\) # (\inst9|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_SUB~q\,
	datab => \inst5|accReg\(3),
	datad => \inst9|o_ADD~q\,
	combout => \inst14|Add0~6_combout\);

-- Location: LCCOMB_X25_Y6_N14
\inst14|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~24_combout\ = (\inst14|Add0~1_combout\ & ((\inst14|Add0~5_combout\ & (!\inst14|Add0~23\)) # (!\inst14|Add0~5_combout\ & (\inst14|Add0~23\ & VCC)))) # (!\inst14|Add0~1_combout\ & ((\inst14|Add0~5_combout\ & ((\inst14|Add0~23\) # (GND))) # 
-- (!\inst14|Add0~5_combout\ & (!\inst14|Add0~23\))))
-- \inst14|Add0~25\ = CARRY((\inst14|Add0~1_combout\ & (\inst14|Add0~5_combout\ & !\inst14|Add0~23\)) # (!\inst14|Add0~1_combout\ & ((\inst14|Add0~5_combout\) # (!\inst14|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~1_combout\,
	datab => \inst14|Add0~5_combout\,
	datad => VCC,
	cin => \inst14|Add0~23\,
	combout => \inst14|Add0~24_combout\,
	cout => \inst14|Add0~25\);

-- Location: LCCOMB_X25_Y6_N2
\inst14|regq~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~18_combout\ = (\inst14|Add0~24_combout\ & ((\inst9|o_SUB~q\) # ((\inst14|regq[7]~10_combout\) # (\inst9|o_ADD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_SUB~q\,
	datab => \inst14|regq[7]~10_combout\,
	datac => \inst14|Add0~24_combout\,
	datad => \inst9|o_ADD~q\,
	combout => \inst14|regq~18_combout\);

-- Location: LCCOMB_X25_Y6_N24
\inst14|regq~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~17_combout\ = (\inst14|regq~18_combout\) # ((!\inst14|regq~8_combout\ & (\inst9|o_OR~q\ $ (!\inst5|accReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_OR~q\,
	datab => \inst14|regq~8_combout\,
	datac => \inst5|accReg\(4),
	datad => \inst14|regq~18_combout\,
	combout => \inst14|regq~17_combout\);

-- Location: FF_X25_Y6_N25
\inst14|regq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~17_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(4));

-- Location: LCCOMB_X25_Y5_N26
\inst5|accReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~4_combout\ = (\inst9|en_ALU~q\ & \inst14|regq\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|en_ALU~q\,
	datad => \inst14|regq\(4),
	combout => \inst5|accReg~4_combout\);

-- Location: FF_X24_Y6_N15
\inst5|accReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~4_combout\,
	sload => VCC,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(4));

-- Location: LCCOMB_X24_Y6_N18
\inst14|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~5_combout\ = \inst5|accReg\(4) $ (((\inst9|o_ADD~q\) # (\inst9|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_ADD~q\,
	datab => \inst9|o_SUB~q\,
	datad => \inst5|accReg\(4),
	combout => \inst14|Add0~5_combout\);

-- Location: LCCOMB_X25_Y6_N16
\inst14|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~26_combout\ = ((\inst14|Add0~1_combout\ $ (\inst14|Add0~4_combout\ $ (\inst14|Add0~25\)))) # (GND)
-- \inst14|Add0~27\ = CARRY((\inst14|Add0~1_combout\ & ((!\inst14|Add0~25\) # (!\inst14|Add0~4_combout\))) # (!\inst14|Add0~1_combout\ & (!\inst14|Add0~4_combout\ & !\inst14|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~1_combout\,
	datab => \inst14|Add0~4_combout\,
	datad => VCC,
	cin => \inst14|Add0~25\,
	combout => \inst14|Add0~26_combout\,
	cout => \inst14|Add0~27\);

-- Location: LCCOMB_X25_Y6_N26
\inst14|regq~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~16_combout\ = (\inst14|regq~15_combout\) # ((\inst14|Add0~26_combout\ & ((\inst14|Add0~0_combout\) # (\inst14|regq[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~0_combout\,
	datab => \inst14|regq[7]~10_combout\,
	datac => \inst14|regq~15_combout\,
	datad => \inst14|Add0~26_combout\,
	combout => \inst14|regq~16_combout\);

-- Location: FF_X25_Y6_N27
\inst14|regq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~16_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(5));

-- Location: LCCOMB_X23_Y6_N16
\inst5|accReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~3_combout\ = (\inst14|regq\(5) & \inst9|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|regq\(5),
	datad => \inst9|en_ALU~q\,
	combout => \inst5|accReg~3_combout\);

-- Location: FF_X24_Y6_N25
\inst5|accReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~3_combout\,
	sload => VCC,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(5));

-- Location: LCCOMB_X24_Y6_N12
\inst14|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~4_combout\ = \inst5|accReg\(5) $ (((\inst9|o_ADD~q\) # (\inst9|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|o_ADD~q\,
	datab => \inst9|o_SUB~q\,
	datad => \inst5|accReg\(5),
	combout => \inst14|Add0~4_combout\);

-- Location: LCCOMB_X25_Y6_N18
\inst14|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~28_combout\ = (\inst14|Add0~1_combout\ & ((\inst14|Add0~3_combout\ & (!\inst14|Add0~27\)) # (!\inst14|Add0~3_combout\ & (\inst14|Add0~27\ & VCC)))) # (!\inst14|Add0~1_combout\ & ((\inst14|Add0~3_combout\ & ((\inst14|Add0~27\) # (GND))) # 
-- (!\inst14|Add0~3_combout\ & (!\inst14|Add0~27\))))
-- \inst14|Add0~29\ = CARRY((\inst14|Add0~1_combout\ & (\inst14|Add0~3_combout\ & !\inst14|Add0~27\)) # (!\inst14|Add0~1_combout\ & ((\inst14|Add0~3_combout\) # (!\inst14|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~1_combout\,
	datab => \inst14|Add0~3_combout\,
	datad => VCC,
	cin => \inst14|Add0~27\,
	combout => \inst14|Add0~28_combout\,
	cout => \inst14|Add0~29\);

-- Location: LCCOMB_X26_Y6_N4
\inst14|regq~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~14_combout\ = (\inst14|regq~13_combout\) # ((\inst14|Add0~28_combout\ & ((\inst14|Add0~0_combout\) # (\inst14|regq[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|regq~13_combout\,
	datab => \inst14|Add0~0_combout\,
	datac => \inst14|regq[7]~10_combout\,
	datad => \inst14|Add0~28_combout\,
	combout => \inst14|regq~14_combout\);

-- Location: FF_X26_Y6_N5
\inst14|regq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~14_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(6));

-- Location: LCCOMB_X23_Y6_N22
\inst5|accReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~2_combout\ = (\inst14|regq\(6) & \inst9|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|regq\(6),
	datad => \inst9|en_ALU~q\,
	combout => \inst5|accReg~2_combout\);

-- Location: FF_X24_Y6_N23
\inst5|accReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~2_combout\,
	sload => VCC,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(6));

-- Location: LCCOMB_X24_Y6_N10
\inst14|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~3_combout\ = \inst5|accReg\(6) $ (((\inst9|o_SUB~q\) # (\inst9|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(6),
	datab => \inst9|o_SUB~q\,
	datad => \inst9|o_ADD~q\,
	combout => \inst14|Add0~3_combout\);

-- Location: LCCOMB_X25_Y6_N20
\inst14|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Add0~30_combout\ = \inst14|Add0~1_combout\ $ (\inst14|Add0~29\ $ (\inst14|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~1_combout\,
	datad => \inst14|Add0~2_combout\,
	cin => \inst14|Add0~29\,
	combout => \inst14|Add0~30_combout\);

-- Location: LCCOMB_X25_Y6_N22
\inst14|regq~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|regq~11_combout\ = (\inst14|regq~9_combout\) # ((\inst14|Add0~30_combout\ & ((\inst14|Add0~0_combout\) # (\inst14|regq[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Add0~0_combout\,
	datab => \inst14|regq[7]~10_combout\,
	datac => \inst14|regq~9_combout\,
	datad => \inst14|Add0~30_combout\,
	combout => \inst14|regq~11_combout\);

-- Location: FF_X25_Y6_N23
\inst14|regq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|regq~11_combout\,
	ena => \inst14|regq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|regq\(7));

-- Location: LCCOMB_X23_Y6_N0
\inst5|accReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~0_combout\ = (\inst14|regq\(7) & \inst9|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|regq\(7),
	datad => \inst9|en_ALU~q\,
	combout => \inst5|accReg~0_combout\);

-- Location: FF_X23_Y6_N1
\inst5|accReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~0_combout\,
	ena => \inst5|accReg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(7));

ww_test_res <= \test_res~output_o\;

ww_acc_out(7) <= \acc_out[7]~output_o\;

ww_acc_out(6) <= \acc_out[6]~output_o\;

ww_acc_out(5) <= \acc_out[5]~output_o\;

ww_acc_out(4) <= \acc_out[4]~output_o\;

ww_acc_out(3) <= \acc_out[3]~output_o\;

ww_acc_out(2) <= \acc_out[2]~output_o\;

ww_acc_out(1) <= \acc_out[1]~output_o\;

ww_acc_out(0) <= \acc_out[0]~output_o\;

ww_accD(7) <= \accD[7]~output_o\;

ww_accD(6) <= \accD[6]~output_o\;

ww_accD(5) <= \accD[5]~output_o\;

ww_accD(4) <= \accD[4]~output_o\;

ww_accD(3) <= \accD[3]~output_o\;

ww_accD(2) <= \accD[2]~output_o\;

ww_accD(1) <= \accD[1]~output_o\;

ww_accD(0) <= \accD[0]~output_o\;

ww_alu_out(7) <= \alu_out[7]~output_o\;

ww_alu_out(6) <= \alu_out[6]~output_o\;

ww_alu_out(5) <= \alu_out[5]~output_o\;

ww_alu_out(4) <= \alu_out[4]~output_o\;

ww_alu_out(3) <= \alu_out[3]~output_o\;

ww_alu_out(2) <= \alu_out[2]~output_o\;

ww_alu_out(1) <= \alu_out[1]~output_o\;

ww_alu_out(0) <= \alu_out[0]~output_o\;

ww_ar_out(7) <= \ar_out[7]~output_o\;

ww_ar_out(6) <= \ar_out[6]~output_o\;

ww_ar_out(5) <= \ar_out[5]~output_o\;

ww_ar_out(4) <= \ar_out[4]~output_o\;

ww_ar_out(3) <= \ar_out[3]~output_o\;

ww_ar_out(2) <= \ar_out[2]~output_o\;

ww_ar_out(1) <= \ar_out[1]~output_o\;

ww_ar_out(0) <= \ar_out[0]~output_o\;

ww_dBus(7) <= \dBus[7]~output_o\;

ww_dBus(6) <= \dBus[6]~output_o\;

ww_dBus(5) <= \dBus[5]~output_o\;

ww_dBus(4) <= \dBus[4]~output_o\;

ww_dBus(3) <= \dBus[3]~output_o\;

ww_dBus(2) <= \dBus[2]~output_o\;

ww_dBus(1) <= \dBus[1]~output_o\;

ww_dBus(0) <= \dBus[0]~output_o\;

ww_pc_out(7) <= \pc_out[7]~output_o\;

ww_pc_out(6) <= \pc_out[6]~output_o\;

ww_pc_out(5) <= \pc_out[5]~output_o\;

ww_pc_out(4) <= \pc_out[4]~output_o\;

ww_pc_out(3) <= \pc_out[3]~output_o\;

ww_pc_out(2) <= \pc_out[2]~output_o\;

ww_pc_out(1) <= \pc_out[1]~output_o\;

ww_pc_out(0) <= \pc_out[0]~output_o\;

ww_ram0_out(7) <= \ram0_out[7]~output_o\;

ww_ram0_out(6) <= \ram0_out[6]~output_o\;

ww_ram0_out(5) <= \ram0_out[5]~output_o\;

ww_ram0_out(4) <= \ram0_out[4]~output_o\;

ww_ram0_out(3) <= \ram0_out[3]~output_o\;

ww_ram0_out(2) <= \ram0_out[2]~output_o\;

ww_ram0_out(1) <= \ram0_out[1]~output_o\;

ww_ram0_out(0) <= \ram0_out[0]~output_o\;
END structure;


