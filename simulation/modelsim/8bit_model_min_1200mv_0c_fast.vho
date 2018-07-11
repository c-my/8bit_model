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

-- DATE "07/12/2018 00:11:57"

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

ENTITY 	eight_bit_model IS
    PORT (
	OA : OUT std_logic;
	clk : IN std_logic;
	OB : OUT std_logic;
	OC : OUT std_logic;
	OD : OUT std_logic;
	OE : OUT std_logic;
	OG : OUT std_logic;
	O_F : OUT std_logic;
	LED_0 : OUT std_logic;
	acc_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END eight_bit_model;

-- Design Ports Information
-- OA	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OB	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OD	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OG	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_F	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_out[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_OA : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_OB : std_logic;
SIGNAL ww_OC : std_logic;
SIGNAL ww_OD : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_OG : std_logic;
SIGNAL ww_O_F : std_logic;
SIGNAL ww_LED_0 : std_logic;
SIGNAL ww_acc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OA~output_o\ : std_logic;
SIGNAL \OB~output_o\ : std_logic;
SIGNAL \OC~output_o\ : std_logic;
SIGNAL \OD~output_o\ : std_logic;
SIGNAL \OE~output_o\ : std_logic;
SIGNAL \OG~output_o\ : std_logic;
SIGNAL \O_F~output_o\ : std_logic;
SIGNAL \LED_0~output_o\ : std_logic;
SIGNAL \acc_out[7]~output_o\ : std_logic;
SIGNAL \acc_out[6]~output_o\ : std_logic;
SIGNAL \acc_out[5]~output_o\ : std_logic;
SIGNAL \acc_out[4]~output_o\ : std_logic;
SIGNAL \acc_out[3]~output_o\ : std_logic;
SIGNAL \acc_out[2]~output_o\ : std_logic;
SIGNAL \acc_out[1]~output_o\ : std_logic;
SIGNAL \acc_out[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|tmp[1]~1_combout\ : std_logic;
SIGNAL \pc|pcout[1]~8_combout\ : std_logic;
SIGNAL \inst6|o_SUB~0_combout\ : std_logic;
SIGNAL \inst6|clr_PC~0_combout\ : std_logic;
SIGNAL \inst6|clr_PC~q\ : std_logic;
SIGNAL \ar|addr_out[1]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[1]~9\ : std_logic;
SIGNAL \pc|pcout[2]~10_combout\ : std_logic;
SIGNAL \ar|addr_out[2]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[2]~11\ : std_logic;
SIGNAL \pc|pcout[3]~12_combout\ : std_logic;
SIGNAL \ar|addr_out[3]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[3]~13\ : std_logic;
SIGNAL \pc|pcout[4]~14_combout\ : std_logic;
SIGNAL \ar|addr_out[4]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[4]~15\ : std_logic;
SIGNAL \pc|pcout[5]~16_combout\ : std_logic;
SIGNAL \ar|addr_out[5]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[5]~17\ : std_logic;
SIGNAL \pc|pcout[6]~18_combout\ : std_logic;
SIGNAL \ar|addr_out[6]~feeder_combout\ : std_logic;
SIGNAL \pc|pcout[6]~19\ : std_logic;
SIGNAL \pc|pcout[7]~20_combout\ : std_logic;
SIGNAL \ar|addr_out[7]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[6]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[5]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[4]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux7~8_combout\ : std_logic;
SIGNAL \inst6|en_ALU_D~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst6|en_PC~3_combout\ : std_logic;
SIGNAL \inst6|o_SUB~3_combout\ : std_logic;
SIGNAL \inst6|clr_ME~0_combout\ : std_logic;
SIGNAL \inst6|clr_ME~q\ : std_logic;
SIGNAL \inst|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \inst|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \inst|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \inst|tmp[0]~0_combout\ : std_logic;
SIGNAL \inst6|en_PC~4_combout\ : std_logic;
SIGNAL \inst6|en_PC~q\ : std_logic;
SIGNAL \pc|pcout[0]~7_combout\ : std_logic;
SIGNAL \dr|regq[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|regq[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux7~4_combout\ : std_logic;
SIGNAL \inst6|o_AND~0_combout\ : std_logic;
SIGNAL \inst6|o_AND~q\ : std_logic;
SIGNAL \inst3|regq~34_combout\ : std_logic;
SIGNAL \dr|regq[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|regq~24_combout\ : std_logic;
SIGNAL \inst1|Mux7~3_combout\ : std_logic;
SIGNAL \inst6|o_NOT~0_combout\ : std_logic;
SIGNAL \inst6|o_NOT~q\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|o_OR~0_combout\ : std_logic;
SIGNAL \inst6|o_OR~q\ : std_logic;
SIGNAL \inst3|regq[1]~21_combout\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
SIGNAL \inst6|o_SHL~0_combout\ : std_logic;
SIGNAL \inst6|o_SHL~1_combout\ : std_logic;
SIGNAL \inst6|o_SHL~q\ : std_logic;
SIGNAL \inst3|regq[1]~20_combout\ : std_logic;
SIGNAL \inst3|regq~22_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \dr|regq[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|regq[3]~feeder_combout\ : std_logic;
SIGNAL \dr|regq[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|regq[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|regq[1]~78_combout\ : std_logic;
SIGNAL \inst6|en_PC~2_combout\ : std_logic;
SIGNAL \inst6|en_ALU~0_combout\ : std_logic;
SIGNAL \inst6|en_ALU~q\ : std_logic;
SIGNAL \inst1|Mux7~5_combout\ : std_logic;
SIGNAL \inst6|o_SUB~1_combout\ : std_logic;
SIGNAL \inst6|o_SUB~q\ : std_logic;
SIGNAL \inst6|o_SUB~2_combout\ : std_logic;
SIGNAL \inst6|o_ADD~0_combout\ : std_logic;
SIGNAL \inst6|o_ADD~1_combout\ : std_logic;
SIGNAL \inst6|o_ADD~q\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~15_combout\ : std_logic;
SIGNAL \inst1|Mux7~6_combout\ : std_logic;
SIGNAL \inst6|o_NEG~0_combout\ : std_logic;
SIGNAL \inst6|o_NEG~q\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|regq[3]~25_combout\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~7_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~3_cout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~13_combout\ : std_logic;
SIGNAL \inst3|regq[3]~35_combout\ : std_logic;
SIGNAL \inst3|regq[3]~27_combout\ : std_logic;
SIGNAL \inst3|regq[3]~36_combout\ : std_logic;
SIGNAL \inst3|regq[4]~57_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \inst3|regq[6]~50_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \inst3|regq[6]~53_combout\ : std_logic;
SIGNAL \inst3|regq[6]~52_combout\ : std_logic;
SIGNAL \inst3|regq~19_combout\ : std_logic;
SIGNAL \inst3|regq[6]~56_combout\ : std_logic;
SIGNAL \inst3|regq[6]~58_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \inst3|regq~80_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \inst3|regq~63_combout\ : std_logic;
SIGNAL \inst3|regq~64_combout\ : std_logic;
SIGNAL \inst3|Add0~19_combout\ : std_logic;
SIGNAL \inst3|Add0~21_combout\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~23_combout\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|regq[6]~60_combout\ : std_logic;
SIGNAL \inst3|regq[6]~59_combout\ : std_logic;
SIGNAL \inst3|regq~65_combout\ : std_logic;
SIGNAL \inst3|regq~66_combout\ : std_logic;
SIGNAL \inst1|Mux7~7_combout\ : std_logic;
SIGNAL \inst6|o_SHR~0_combout\ : std_logic;
SIGNAL \inst6|o_SHR~q\ : std_logic;
SIGNAL \inst3|regq[3]~26_combout\ : std_logic;
SIGNAL \inst6|en_ALU_D~1_combout\ : std_logic;
SIGNAL \inst6|en_ALU_D~q\ : std_logic;
SIGNAL \inst3|regq[3]~28_combout\ : std_logic;
SIGNAL \inst5|accReg~6_combout\ : std_logic;
SIGNAL \inst6|en_dBus~0_combout\ : std_logic;
SIGNAL \inst6|en_dBus~q\ : std_logic;
SIGNAL \inst5|accReg[3]~1_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~5_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~6_combout\ : std_logic;
SIGNAL \inst3|regq~81_combout\ : std_logic;
SIGNAL \inst3|regq~67_combout\ : std_logic;
SIGNAL \inst3|regq~68_combout\ : std_logic;
SIGNAL \inst3|regq[4]~70_combout\ : std_logic;
SIGNAL \inst3|regq[4]~69_combout\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|regq~71_combout\ : std_logic;
SIGNAL \inst3|regq~72_combout\ : std_logic;
SIGNAL \inst5|accReg~7_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \inst3|regq~51_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \inst3|regq~54_combout\ : std_logic;
SIGNAL \inst3|regq~55_combout\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|regq~61_combout\ : std_logic;
SIGNAL \inst3|regq~62_combout\ : std_logic;
SIGNAL \inst5|accReg~5_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~1_combout\ : std_logic;
SIGNAL \inst3|regq~73_combout\ : std_logic;
SIGNAL \inst3|regq~74_combout\ : std_logic;
SIGNAL \inst3|regq~75_combout\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|regq~76_combout\ : std_logic;
SIGNAL \inst3|regq~77_combout\ : std_logic;
SIGNAL \inst5|accReg~8_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~2_combout\ : std_logic;
SIGNAL \inst3|regq[3]~38_combout\ : std_logic;
SIGNAL \inst3|regq~37_combout\ : std_logic;
SIGNAL \inst3|regq[3]~39_combout\ : std_logic;
SIGNAL \inst3|regq~40_combout\ : std_logic;
SIGNAL \inst3|regq~41_combout\ : std_logic;
SIGNAL \inst3|regq~79_combout\ : std_logic;
SIGNAL \inst3|regq~42_combout\ : std_logic;
SIGNAL \inst3|regq~43_combout\ : std_logic;
SIGNAL \inst5|accReg~3_combout\ : std_logic;
SIGNAL \inst3|Add0~11_combout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~17_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~4_combout\ : std_logic;
SIGNAL \inst3|regq~44_combout\ : std_logic;
SIGNAL \inst3|regq~45_combout\ : std_logic;
SIGNAL \inst3|regq~46_combout\ : std_logic;
SIGNAL \inst3|regq~47_combout\ : std_logic;
SIGNAL \inst3|regq~48_combout\ : std_logic;
SIGNAL \inst3|regq~49_combout\ : std_logic;
SIGNAL \inst5|accReg~4_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~0_combout\ : std_logic;
SIGNAL \inst3|regq[1]~14_combout\ : std_logic;
SIGNAL \inst3|regq[1]~15_combout\ : std_logic;
SIGNAL \inst3|regq~16_combout\ : std_logic;
SIGNAL \inst3|ShiftRight0~3_combout\ : std_logic;
SIGNAL \inst3|regq~17_combout\ : std_logic;
SIGNAL \inst3|regq~18_combout\ : std_logic;
SIGNAL \inst3|regq~23_combout\ : std_logic;
SIGNAL \inst3|regq[0]~0_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst5|accReg~0_combout\ : std_logic;
SIGNAL \inst3|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \inst3|regq~32_combout\ : std_logic;
SIGNAL \inst3|regq~29_combout\ : std_logic;
SIGNAL \inst3|regq~30_combout\ : std_logic;
SIGNAL \inst3|regq~31_combout\ : std_logic;
SIGNAL \inst3|regq~33_combout\ : std_logic;
SIGNAL \inst3|regq[1]~1_combout\ : std_logic;
SIGNAL \inst3|Add0~9_combout\ : std_logic;
SIGNAL \inst5|accReg~2_combout\ : std_logic;
SIGNAL \inst12|Mux0~0_combout\ : std_logic;
SIGNAL \inst12|Mux1~0_combout\ : std_logic;
SIGNAL \inst12|Mux2~0_combout\ : std_logic;
SIGNAL \inst12|Mux3~0_combout\ : std_logic;
SIGNAL \inst12|Mux4~0_combout\ : std_logic;
SIGNAL \inst12|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|Mux5~0_combout\ : std_logic;
SIGNAL \dr|regq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|regq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc|pcout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|accReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|regq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ar|addr_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|ALT_INV_clr_PC~q\ : std_logic;
SIGNAL \inst12|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_clr_ME~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OA <= ww_OA;
ww_clk <= clk;
OB <= ww_OB;
OC <= ww_OC;
OD <= ww_OD;
OE <= ww_OE;
OG <= ww_OG;
O_F <= ww_O_F;
LED_0 <= ww_LED_0;
acc_out <= ww_acc_out;
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
\inst6|ALT_INV_clr_PC~q\ <= NOT \inst6|clr_PC~q\;
\inst12|ALT_INV_Mux6~0_combout\ <= NOT \inst12|Mux6~0_combout\;
\inst6|ALT_INV_clr_ME~q\ <= NOT \inst6|clr_ME~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\OA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \OA~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\OB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \OB~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\OC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \OC~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\OD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \OD~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\OE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \OE~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\OG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \OG~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\O_F~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \O_F~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\LED_0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_0~output_o\);

-- Location: IOOBUF_X34_Y11_N9
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

-- Location: IOOBUF_X34_Y11_N2
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X34_Y9_N23
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

-- Location: LCCOMB_X26_Y14_N2
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

-- Location: LCCOMB_X25_Y14_N4
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

-- Location: LCCOMB_X26_Y14_N14
\pc|pcout[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[1]~8_combout\ = (\pc|pcout\(0) & (\pc|pcout\(1) $ (VCC))) # (!\pc|pcout\(0) & (\pc|pcout\(1) & VCC))
-- \pc|pcout[1]~9\ = CARRY((\pc|pcout\(0) & \pc|pcout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcout\(0),
	datab => \pc|pcout\(1),
	datad => VCC,
	combout => \pc|pcout[1]~8_combout\,
	cout => \pc|pcout[1]~9\);

-- Location: LCCOMB_X25_Y14_N18
\inst6|o_SUB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SUB~0_combout\ = (!\inst|tmp\(4) & (!\inst|tmp\(3) & (!\inst|tmp\(1) & !\inst|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(4),
	datab => \inst|tmp\(3),
	datac => \inst|tmp\(1),
	datad => \inst|tmp\(2),
	combout => \inst6|o_SUB~0_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst6|clr_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|clr_PC~0_combout\ = (\inst|tmp\(5) & (\inst|tmp\(0) & (\inst1|Mux7~8_combout\ & \inst6|o_SUB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst|tmp\(0),
	datac => \inst1|Mux7~8_combout\,
	datad => \inst6|o_SUB~0_combout\,
	combout => \inst6|clr_PC~0_combout\);

-- Location: FF_X26_Y14_N5
\inst6|clr_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|clr_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|clr_PC~q\);

-- Location: FF_X26_Y14_N15
\pc|pcout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[1]~8_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(1));

-- Location: LCCOMB_X26_Y14_N12
\ar|addr_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[1]~feeder_combout\ = \pc|pcout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pcout\(1),
	combout => \ar|addr_out[1]~feeder_combout\);

-- Location: FF_X26_Y14_N13
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

-- Location: LCCOMB_X26_Y14_N16
\pc|pcout[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[2]~10_combout\ = (\pc|pcout\(2) & (!\pc|pcout[1]~9\)) # (!\pc|pcout\(2) & ((\pc|pcout[1]~9\) # (GND)))
-- \pc|pcout[2]~11\ = CARRY((!\pc|pcout[1]~9\) # (!\pc|pcout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(2),
	datad => VCC,
	cin => \pc|pcout[1]~9\,
	combout => \pc|pcout[2]~10_combout\,
	cout => \pc|pcout[2]~11\);

-- Location: FF_X26_Y14_N17
\pc|pcout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[2]~10_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(2));

-- Location: LCCOMB_X26_Y14_N6
\ar|addr_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[2]~feeder_combout\ = \pc|pcout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(2),
	combout => \ar|addr_out[2]~feeder_combout\);

-- Location: FF_X26_Y14_N7
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

-- Location: LCCOMB_X26_Y14_N18
\pc|pcout[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[3]~12_combout\ = (\pc|pcout\(3) & (\pc|pcout[2]~11\ $ (GND))) # (!\pc|pcout\(3) & (!\pc|pcout[2]~11\ & VCC))
-- \pc|pcout[3]~13\ = CARRY((\pc|pcout\(3) & !\pc|pcout[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(3),
	datad => VCC,
	cin => \pc|pcout[2]~11\,
	combout => \pc|pcout[3]~12_combout\,
	cout => \pc|pcout[3]~13\);

-- Location: FF_X26_Y14_N19
\pc|pcout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[3]~12_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(3));

-- Location: LCCOMB_X26_Y14_N0
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

-- Location: FF_X26_Y14_N1
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

-- Location: LCCOMB_X26_Y14_N20
\pc|pcout[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[4]~14_combout\ = (\pc|pcout\(4) & (!\pc|pcout[3]~13\)) # (!\pc|pcout\(4) & ((\pc|pcout[3]~13\) # (GND)))
-- \pc|pcout[4]~15\ = CARRY((!\pc|pcout[3]~13\) # (!\pc|pcout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(4),
	datad => VCC,
	cin => \pc|pcout[3]~13\,
	combout => \pc|pcout[4]~14_combout\,
	cout => \pc|pcout[4]~15\);

-- Location: FF_X26_Y14_N21
\pc|pcout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[4]~14_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(4));

-- Location: LCCOMB_X26_Y14_N8
\ar|addr_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[4]~feeder_combout\ = \pc|pcout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(4),
	combout => \ar|addr_out[4]~feeder_combout\);

-- Location: FF_X26_Y14_N9
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

-- Location: LCCOMB_X26_Y14_N22
\pc|pcout[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[5]~16_combout\ = (\pc|pcout\(5) & (\pc|pcout[4]~15\ $ (GND))) # (!\pc|pcout\(5) & (!\pc|pcout[4]~15\ & VCC))
-- \pc|pcout[5]~17\ = CARRY((\pc|pcout\(5) & !\pc|pcout[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcout\(5),
	datad => VCC,
	cin => \pc|pcout[4]~15\,
	combout => \pc|pcout[5]~16_combout\,
	cout => \pc|pcout[5]~17\);

-- Location: FF_X26_Y14_N23
\pc|pcout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[5]~16_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(5));

-- Location: LCCOMB_X25_Y14_N10
\ar|addr_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[5]~feeder_combout\ = \pc|pcout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcout\(5),
	combout => \ar|addr_out[5]~feeder_combout\);

-- Location: FF_X25_Y14_N11
\ar|addr_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ar|addr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ar|addr_out\(5));

-- Location: LCCOMB_X26_Y14_N24
\pc|pcout[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[6]~18_combout\ = (\pc|pcout\(6) & (!\pc|pcout[5]~17\)) # (!\pc|pcout\(6) & ((\pc|pcout[5]~17\) # (GND)))
-- \pc|pcout[6]~19\ = CARRY((!\pc|pcout[5]~17\) # (!\pc|pcout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcout\(6),
	datad => VCC,
	cin => \pc|pcout[5]~17\,
	combout => \pc|pcout[6]~18_combout\,
	cout => \pc|pcout[6]~19\);

-- Location: FF_X26_Y14_N25
\pc|pcout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[6]~18_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(6));

-- Location: LCCOMB_X26_Y14_N28
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

-- Location: FF_X26_Y14_N29
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

-- Location: LCCOMB_X26_Y14_N26
\pc|pcout[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[7]~20_combout\ = \pc|pcout\(7) $ (!\pc|pcout[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcout\(7),
	cin => \pc|pcout[6]~19\,
	combout => \pc|pcout[7]~20_combout\);

-- Location: FF_X26_Y14_N27
\pc|pcout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[7]~20_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	ena => \inst6|en_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(7));

-- Location: LCCOMB_X26_Y14_N30
\ar|addr_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ar|addr_out[7]~feeder_combout\ = \pc|pcout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pcout\(7),
	combout => \ar|addr_out[7]~feeder_combout\);

-- Location: FF_X26_Y14_N31
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

-- Location: M9K_X27_Y14_N0
\ram0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A1002C800770019800550010800330023400360023C00B2002840085001C00083001800052001340033000940085",
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

-- Location: LCCOMB_X28_Y14_N0
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

-- Location: FF_X28_Y14_N1
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

-- Location: FF_X29_Y14_N27
\inst1|regq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(6));

-- Location: LCCOMB_X28_Y14_N6
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

-- Location: FF_X28_Y14_N7
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

-- Location: FF_X29_Y14_N21
\inst1|regq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(5));

-- Location: LCCOMB_X28_Y14_N4
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

-- Location: FF_X28_Y14_N5
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

-- Location: FF_X29_Y14_N19
\inst1|regq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(4));

-- Location: LCCOMB_X28_Y14_N26
\dr|regq[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[7]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(7),
	combout => \dr|regq[7]~feeder_combout\);

-- Location: FF_X28_Y14_N27
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

-- Location: FF_X29_Y14_N17
\inst1|regq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dr|regq\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(7));

-- Location: LCCOMB_X29_Y14_N18
\inst1|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~8_combout\ = (!\inst1|regq\(6) & (!\inst1|regq\(5) & (\inst1|regq\(4) & \inst1|regq\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(6),
	datab => \inst1|regq\(5),
	datac => \inst1|regq\(4),
	datad => \inst1|regq\(7),
	combout => \inst1|Mux7~8_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst6|en_ALU_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_ALU_D~0_combout\ = (\inst1|regq\(6) & ((!\inst1|regq\(7)))) # (!\inst1|regq\(6) & (\inst1|regq\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(6),
	datab => \inst1|regq\(5),
	datad => \inst1|regq\(7),
	combout => \inst6|en_ALU_D~0_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (!\inst1|regq\(5) & (\inst1|regq\(7) & (!\inst1|regq\(6) & !\inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(5),
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\inst6|en_PC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_PC~3_combout\ = (\inst|tmp\(6) & (((\inst1|Mux7~0_combout\)))) # (!\inst|tmp\(6) & (\inst6|en_ALU_D~0_combout\ & (\inst|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(6),
	datab => \inst6|en_ALU_D~0_combout\,
	datac => \inst|tmp\(7),
	datad => \inst1|Mux7~0_combout\,
	combout => \inst6|en_PC~3_combout\);

-- Location: LCCOMB_X25_Y14_N8
\inst6|o_SUB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SUB~3_combout\ = (\inst6|o_SUB~0_combout\ & \inst|tmp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_SUB~0_combout\,
	datad => \inst|tmp\(0),
	combout => \inst6|o_SUB~3_combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst6|clr_ME~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|clr_ME~0_combout\ = (\inst6|o_SUB~3_combout\ & ((\inst|tmp\(5) & (\inst1|Mux7~8_combout\)) # (!\inst|tmp\(5) & ((\inst6|en_PC~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~8_combout\,
	datab => \inst6|en_PC~3_combout\,
	datac => \inst|tmp\(5),
	datad => \inst6|o_SUB~3_combout\,
	combout => \inst6|clr_ME~0_combout\);

-- Location: FF_X25_Y14_N17
\inst6|clr_ME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|clr_ME~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|clr_ME~q\);

-- Location: FF_X25_Y14_N5
\inst|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[1]~1_combout\,
	clrn => \inst6|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(1));

-- Location: LCCOMB_X25_Y14_N24
\inst|tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[2]~feeder_combout\ = \inst|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tmp\(1),
	combout => \inst|tmp[2]~feeder_combout\);

-- Location: FF_X25_Y14_N25
\inst|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[2]~feeder_combout\,
	clrn => \inst6|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(2));

-- Location: FF_X25_Y14_N9
\inst|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(2),
	clrn => \inst6|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(3));

-- Location: LCCOMB_X25_Y14_N26
\inst|tmp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[4]~feeder_combout\ = \inst|tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tmp\(3),
	combout => \inst|tmp[4]~feeder_combout\);

-- Location: FF_X25_Y14_N27
\inst|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[4]~feeder_combout\,
	clrn => \inst6|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(4));

-- Location: LCCOMB_X25_Y14_N14
\inst|tmp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[5]~feeder_combout\ = \inst|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tmp\(4),
	combout => \inst|tmp[5]~feeder_combout\);

-- Location: FF_X25_Y14_N15
\inst|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[5]~feeder_combout\,
	clrn => \inst6|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(5));

-- Location: FF_X25_Y14_N23
\inst|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(5),
	clrn => \inst6|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(6));

-- Location: FF_X25_Y14_N29
\inst|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|tmp\(6),
	clrn => \inst6|ALT_INV_clr_ME~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(7));

-- Location: LCCOMB_X25_Y14_N6
\inst|tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp[0]~0_combout\ = !\inst|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|tmp\(7),
	combout => \inst|tmp[0]~0_combout\);

-- Location: FF_X25_Y14_N7
\inst|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp[0]~0_combout\,
	clrn => \inst6|ALT_INV_clr_ME~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp\(0));

-- Location: LCCOMB_X25_Y14_N20
\inst6|en_PC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_PC~4_combout\ = (\inst|tmp\(0) & (\inst6|o_SUB~0_combout\ & (!\inst|tmp\(5) & \inst6|en_PC~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst6|o_SUB~0_combout\,
	datac => \inst|tmp\(5),
	datad => \inst6|en_PC~3_combout\,
	combout => \inst6|en_PC~4_combout\);

-- Location: FF_X25_Y14_N21
\inst6|en_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|en_PC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|en_PC~q\);

-- Location: LCCOMB_X26_Y14_N10
\pc|pcout[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pcout[0]~7_combout\ = \pc|pcout\(0) $ (\inst6|en_PC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|pcout\(0),
	datad => \inst6|en_PC~q\,
	combout => \pc|pcout[0]~7_combout\);

-- Location: FF_X26_Y14_N11
\pc|pcout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|pcout[0]~7_combout\,
	clrn => \inst6|ALT_INV_clr_PC~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcout\(0));

-- Location: FF_X26_Y14_N3
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

-- Location: LCCOMB_X28_Y14_N10
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

-- Location: FF_X28_Y14_N11
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

-- Location: LCCOMB_X28_Y14_N28
\inst1|regq[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|regq[1]~feeder_combout\ = \dr|regq\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(1),
	combout => \inst1|regq[1]~feeder_combout\);

-- Location: FF_X28_Y14_N29
\inst1|regq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|regq[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(1));

-- Location: FF_X29_Y12_N15
\inst6|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|regq\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data_out\(1));

-- Location: LCCOMB_X29_Y14_N4
\inst1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~4_combout\ = (!\inst1|regq\(5) & (!\inst1|regq\(7) & (\inst1|regq\(6) & !\inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(5),
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~4_combout\);

-- Location: LCCOMB_X29_Y10_N16
\inst6|o_AND~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_AND~0_combout\ = (\inst|tmp\(0) & (\inst|tmp\(5) & (\inst6|o_SUB~0_combout\ & \inst1|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst|tmp\(5),
	datac => \inst6|o_SUB~0_combout\,
	datad => \inst1|Mux7~4_combout\,
	combout => \inst6|o_AND~0_combout\);

-- Location: FF_X29_Y10_N17
\inst6|o_AND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_AND~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_AND~q\);

-- Location: LCCOMB_X30_Y12_N14
\inst3|regq~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~34_combout\ = (\inst5|accReg\(1) & \inst6|data_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datac => \inst6|data_out\(1),
	combout => \inst3|regq~34_combout\);

-- Location: LCCOMB_X28_Y14_N16
\dr|regq[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[0]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(0),
	combout => \dr|regq[0]~feeder_combout\);

-- Location: FF_X28_Y14_N17
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

-- Location: FF_X29_Y14_N15
\inst1|regq[0]\ : dffeas
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
	q => \inst1|regq\(0));

-- Location: FF_X29_Y12_N29
\inst6|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|regq\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data_out\(0));

-- Location: LCCOMB_X30_Y12_N18
\inst3|regq~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~24_combout\ = (\inst6|data_out\(0) & \inst5|accReg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|data_out\(0),
	datad => \inst5|accReg\(0),
	combout => \inst3|regq~24_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~3_combout\ = (\inst1|regq\(5) & (!\inst1|regq\(7) & (\inst1|regq\(6) & !\inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(5),
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~3_combout\);

-- Location: LCCOMB_X29_Y10_N30
\inst6|o_NOT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_NOT~0_combout\ = (\inst|tmp\(0) & (\inst|tmp\(5) & (\inst6|o_SUB~0_combout\ & \inst1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst|tmp\(5),
	datac => \inst6|o_SUB~0_combout\,
	datad => \inst1|Mux7~3_combout\,
	combout => \inst6|o_NOT~0_combout\);

-- Location: FF_X29_Y10_N31
\inst6|o_NOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_NOT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_NOT~q\);

-- Location: LCCOMB_X29_Y14_N26
\inst1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (!\inst1|regq\(7) & (!\inst1|regq\(5) & (\inst1|regq\(6) & \inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(7),
	datab => \inst1|regq\(5),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~1_combout\);

-- Location: LCCOMB_X29_Y10_N20
\inst6|o_OR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_OR~0_combout\ = (\inst|tmp\(0) & (\inst|tmp\(5) & (\inst6|o_SUB~0_combout\ & \inst1|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst|tmp\(5),
	datac => \inst6|o_SUB~0_combout\,
	datad => \inst1|Mux7~1_combout\,
	combout => \inst6|o_OR~0_combout\);

-- Location: FF_X29_Y10_N21
\inst6|o_OR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_OR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_OR~q\);

-- Location: LCCOMB_X29_Y10_N26
\inst3|regq[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[1]~21_combout\ = (\inst6|o_NOT~q\) # (\inst6|o_OR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|o_NOT~q\,
	datad => \inst6|o_OR~q\,
	combout => \inst3|regq[1]~21_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (\inst1|regq\(5) & (\inst1|regq\(7) & (!\inst1|regq\(6) & !\inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(5),
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y14_N22
\inst6|o_SHL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SHL~0_combout\ = (\inst|tmp\(0) & (\inst6|o_SUB~0_combout\ & ((\inst|tmp\(5)) # (\inst|tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst|tmp\(5),
	datac => \inst|tmp\(6),
	datad => \inst6|o_SUB~0_combout\,
	combout => \inst6|o_SHL~0_combout\);

-- Location: LCCOMB_X29_Y13_N10
\inst6|o_SHL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SHL~1_combout\ = (\inst1|Mux7~2_combout\ & ((\inst6|o_SHL~0_combout\ & (\inst|tmp\(5))) # (!\inst6|o_SHL~0_combout\ & ((\inst6|o_SHL~q\))))) # (!\inst1|Mux7~2_combout\ & (((\inst6|o_SHL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst1|Mux7~2_combout\,
	datac => \inst6|o_SHL~q\,
	datad => \inst6|o_SHL~0_combout\,
	combout => \inst6|o_SHL~1_combout\);

-- Location: FF_X29_Y13_N11
\inst6|o_SHL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_SHL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_SHL~q\);

-- Location: LCCOMB_X29_Y10_N4
\inst3|regq[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[1]~20_combout\ = (\inst6|o_OR~q\) # ((!\inst6|o_NOT~q\ & \inst6|o_SHL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_OR~q\,
	datac => \inst6|o_NOT~q\,
	datad => \inst6|o_SHL~q\,
	combout => \inst3|regq[1]~20_combout\);

-- Location: LCCOMB_X30_Y12_N30
\inst3|regq~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~22_combout\ = (\inst3|regq[1]~21_combout\ & ((\inst5|accReg\(0) & ((\inst3|regq[1]~20_combout\))) # (!\inst5|accReg\(0) & ((\inst6|data_out\(0)) # (!\inst3|regq[1]~20_combout\))))) # (!\inst3|regq[1]~21_combout\ & 
-- (((!\inst3|regq[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[1]~21_combout\,
	datab => \inst5|accReg\(0),
	datac => \inst6|data_out\(0),
	datad => \inst3|regq[1]~20_combout\,
	combout => \inst3|regq~22_combout\);

-- Location: LCCOMB_X30_Y12_N0
\inst3|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~0_combout\ = (\inst5|accReg\(0) & (!\inst6|data_out\(0) & !\inst6|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|accReg\(0),
	datac => \inst6|data_out\(0),
	datad => \inst6|data_out\(1),
	combout => \inst3|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X28_Y14_N14
\dr|regq[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dr|regq[3]~feeder_combout\ = \ram0|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram0|altsyncram_component|auto_generated|q_a\(3),
	combout => \dr|regq[3]~feeder_combout\);

-- Location: FF_X28_Y14_N15
\dr|regq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dr|regq[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dr|regq\(3));

-- Location: LCCOMB_X29_Y14_N30
\inst1|regq[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|regq[3]~feeder_combout\ = \dr|regq\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(3),
	combout => \inst1|regq[3]~feeder_combout\);

-- Location: FF_X29_Y14_N31
\inst1|regq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|regq[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(3));

-- Location: FF_X29_Y13_N19
\inst6|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|regq\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data_out\(3));

-- Location: LCCOMB_X28_Y14_N12
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

-- Location: FF_X28_Y14_N13
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

-- Location: LCCOMB_X28_Y14_N30
\inst1|regq[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|regq[2]~feeder_combout\ = \dr|regq\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dr|regq\(2),
	combout => \inst1|regq[2]~feeder_combout\);

-- Location: FF_X28_Y14_N31
\inst1|regq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|regq[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|regq\(2));

-- Location: FF_X29_Y13_N25
\inst6|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|regq\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data_out\(2));

-- Location: LCCOMB_X30_Y12_N4
\inst3|regq[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[1]~78_combout\ = (!\inst3|regq[1]~21_combout\ & (((!\inst6|data_out\(3) & !\inst6|data_out\(2))) # (!\inst3|regq[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[1]~21_combout\,
	datab => \inst6|data_out\(3),
	datac => \inst6|data_out\(2),
	datad => \inst3|regq[1]~20_combout\,
	combout => \inst3|regq[1]~78_combout\);

-- Location: LCCOMB_X25_Y14_N12
\inst6|en_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_PC~2_combout\ = (\inst|tmp\(0) & (\inst6|o_SUB~0_combout\ & !\inst|tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst6|o_SUB~0_combout\,
	datac => \inst|tmp\(5),
	combout => \inst6|en_PC~2_combout\);

-- Location: LCCOMB_X25_Y14_N30
\inst6|en_ALU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_ALU~0_combout\ = (\inst6|en_PC~2_combout\ & (\inst6|en_ALU_D~0_combout\ & (\inst|tmp\(6) & !\inst1|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|en_PC~2_combout\,
	datab => \inst6|en_ALU_D~0_combout\,
	datac => \inst|tmp\(6),
	datad => \inst1|Mux7~0_combout\,
	combout => \inst6|en_ALU~0_combout\);

-- Location: FF_X25_Y14_N31
\inst6|en_ALU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|en_ALU~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|en_ALU~q\);

-- Location: LCCOMB_X29_Y14_N2
\inst1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~5_combout\ = (\inst1|regq\(5) & (!\inst1|regq\(7) & (!\inst1|regq\(6) & \inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(5),
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~5_combout\);

-- Location: LCCOMB_X29_Y11_N4
\inst6|o_SUB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SUB~1_combout\ = (\inst|tmp\(5) & (\inst1|Mux7~5_combout\ & (\inst6|o_SUB~0_combout\ & \inst|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst1|Mux7~5_combout\,
	datac => \inst6|o_SUB~0_combout\,
	datad => \inst|tmp\(0),
	combout => \inst6|o_SUB~1_combout\);

-- Location: FF_X29_Y11_N5
\inst6|o_SUB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_SUB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_SUB~q\);

-- Location: LCCOMB_X25_Y14_N0
\inst6|o_SUB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SUB~2_combout\ = (\inst|tmp\(0) & (\inst|tmp\(5) & \inst6|o_SUB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datac => \inst|tmp\(5),
	datad => \inst6|o_SUB~0_combout\,
	combout => \inst6|o_SUB~2_combout\);

-- Location: LCCOMB_X29_Y14_N20
\inst6|o_ADD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_ADD~0_combout\ = (!\inst1|regq\(7) & (\inst1|regq\(5) & !\inst1|regq\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(5),
	datad => \inst1|regq\(4),
	combout => \inst6|o_ADD~0_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst6|o_ADD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_ADD~1_combout\ = (!\inst1|regq\(6) & (\inst6|o_SUB~2_combout\ & \inst6|o_ADD~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(6),
	datac => \inst6|o_SUB~2_combout\,
	datad => \inst6|o_ADD~0_combout\,
	combout => \inst6|o_ADD~1_combout\);

-- Location: FF_X28_Y11_N29
\inst6|o_ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|o_ADD~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_ADD~q\);

-- Location: LCCOMB_X28_Y11_N26
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst6|o_ADD~q\ & (((\inst6|data_out\(3))))) # (!\inst6|o_ADD~q\ & ((\inst6|o_SUB~q\ & ((!\inst6|data_out\(3)))) # (!\inst6|o_SUB~q\ & (!\inst5|accReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_SUB~q\,
	datab => \inst6|o_ADD~q\,
	datac => \inst5|accReg\(3),
	datad => \inst6|data_out\(3),
	combout => \inst3|Add0~16_combout\);

-- Location: LCCOMB_X29_Y11_N12
\inst3|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~15_combout\ = (\inst5|accReg\(3) & ((\inst6|o_ADD~q\) # (\inst6|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_ADD~q\,
	datac => \inst6|o_SUB~q\,
	datad => \inst5|accReg\(3),
	combout => \inst3|Add0~15_combout\);

-- Location: LCCOMB_X29_Y14_N22
\inst1|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~6_combout\ = (\inst1|regq\(5) & (!\inst1|regq\(7) & (\inst1|regq\(6) & \inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(5),
	datab => \inst1|regq\(7),
	datac => \inst1|regq\(6),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~6_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst6|o_NEG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_NEG~0_combout\ = (\inst|tmp\(0) & (\inst|tmp\(5) & (\inst6|o_SUB~0_combout\ & \inst1|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(0),
	datab => \inst|tmp\(5),
	datac => \inst6|o_SUB~0_combout\,
	datad => \inst1|Mux7~6_combout\,
	combout => \inst6|o_NEG~0_combout\);

-- Location: FF_X29_Y10_N9
\inst6|o_NEG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_NEG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_NEG~q\);

-- Location: LCCOMB_X29_Y10_N10
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst6|o_ADD~q\) # (\inst6|o_SUB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|o_ADD~q\,
	datad => \inst6|o_SUB~q\,
	combout => \inst3|Add0~6_combout\);

-- Location: LCCOMB_X29_Y10_N18
\inst3|regq[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~25_combout\ = (\inst3|Add0~6_combout\) # ((!\inst6|o_AND~q\ & (\inst6|o_NEG~q\ & !\inst3|regq[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_AND~q\,
	datab => \inst6|o_NEG~q\,
	datac => \inst3|regq[1]~21_combout\,
	datad => \inst3|Add0~6_combout\,
	combout => \inst3|regq[3]~25_combout\);

-- Location: LCCOMB_X28_Y11_N0
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst6|o_ADD~q\ & (((\inst6|data_out\(2))))) # (!\inst6|o_ADD~q\ & ((\inst6|o_SUB~q\ & (!\inst6|data_out\(2))) # (!\inst6|o_SUB~q\ & ((!\inst5|accReg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_SUB~q\,
	datab => \inst6|o_ADD~q\,
	datac => \inst6|data_out\(2),
	datad => \inst5|accReg\(2),
	combout => \inst3|Add0~12_combout\);

-- Location: LCCOMB_X29_Y11_N6
\inst3|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~7_combout\ = (\inst5|accReg\(1) & ((\inst6|o_SUB~q\) # (\inst6|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_SUB~q\,
	datac => \inst5|accReg\(1),
	datad => \inst6|o_ADD~q\,
	combout => \inst3|Add0~7_combout\);

-- Location: LCCOMB_X28_Y11_N24
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst6|o_ADD~q\ & (((\inst6|data_out\(1))))) # (!\inst6|o_ADD~q\ & ((\inst6|o_SUB~q\ & ((!\inst6|data_out\(1)))) # (!\inst6|o_SUB~q\ & (!\inst5|accReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datab => \inst6|o_ADD~q\,
	datac => \inst6|o_SUB~q\,
	datad => \inst6|data_out\(1),
	combout => \inst3|Add0~8_combout\);

-- Location: LCCOMB_X28_Y11_N22
\inst3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_combout\ = (\inst6|o_ADD~q\ & (\inst6|data_out\(0))) # (!\inst6|o_ADD~q\ & ((\inst6|o_SUB~q\ & (!\inst6|data_out\(0))) # (!\inst6|o_SUB~q\ & ((!\inst5|accReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(0),
	datab => \inst6|o_ADD~q\,
	datac => \inst6|o_SUB~q\,
	datad => \inst5|accReg\(0),
	combout => \inst3|Add0~1_combout\);

-- Location: LCCOMB_X28_Y11_N2
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst5|accReg\(0)) # ((!\inst6|o_ADD~q\ & !\inst6|o_SUB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_ADD~q\,
	datac => \inst6|o_SUB~q\,
	datad => \inst5|accReg\(0),
	combout => \inst3|Add0~0_combout\);

-- Location: LCCOMB_X28_Y11_N4
\inst3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~3_cout\ = CARRY((\inst6|o_SUB~q\ & !\inst6|o_ADD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_SUB~q\,
	datab => \inst6|o_ADD~q\,
	datad => VCC,
	cout => \inst3|Add0~3_cout\);

-- Location: LCCOMB_X28_Y11_N6
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|Add0~1_combout\ & ((\inst3|Add0~0_combout\ & (\inst3|Add0~3_cout\ & VCC)) # (!\inst3|Add0~0_combout\ & (!\inst3|Add0~3_cout\)))) # (!\inst3|Add0~1_combout\ & ((\inst3|Add0~0_combout\ & (!\inst3|Add0~3_cout\)) # 
-- (!\inst3|Add0~0_combout\ & ((\inst3|Add0~3_cout\) # (GND)))))
-- \inst3|Add0~5\ = CARRY((\inst3|Add0~1_combout\ & (!\inst3|Add0~0_combout\ & !\inst3|Add0~3_cout\)) # (!\inst3|Add0~1_combout\ & ((!\inst3|Add0~3_cout\) # (!\inst3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~1_combout\,
	datab => \inst3|Add0~0_combout\,
	datad => VCC,
	cin => \inst3|Add0~3_cout\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X28_Y11_N8
\inst3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_combout\ = ((\inst3|Add0~7_combout\ $ (\inst3|Add0~8_combout\ $ (!\inst3|Add0~5\)))) # (GND)
-- \inst3|Add0~10\ = CARRY((\inst3|Add0~7_combout\ & ((\inst3|Add0~8_combout\) # (!\inst3|Add0~5\))) # (!\inst3|Add0~7_combout\ & (\inst3|Add0~8_combout\ & !\inst3|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~7_combout\,
	datab => \inst3|Add0~8_combout\,
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~9_combout\,
	cout => \inst3|Add0~10\);

-- Location: LCCOMB_X28_Y11_N10
\inst3|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_combout\ = (\inst3|Add0~11_combout\ & ((\inst3|Add0~12_combout\ & (\inst3|Add0~10\ & VCC)) # (!\inst3|Add0~12_combout\ & (!\inst3|Add0~10\)))) # (!\inst3|Add0~11_combout\ & ((\inst3|Add0~12_combout\ & (!\inst3|Add0~10\)) # 
-- (!\inst3|Add0~12_combout\ & ((\inst3|Add0~10\) # (GND)))))
-- \inst3|Add0~14\ = CARRY((\inst3|Add0~11_combout\ & (!\inst3|Add0~12_combout\ & !\inst3|Add0~10\)) # (!\inst3|Add0~11_combout\ & ((!\inst3|Add0~10\) # (!\inst3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~11_combout\,
	datab => \inst3|Add0~12_combout\,
	datad => VCC,
	cin => \inst3|Add0~10\,
	combout => \inst3|Add0~13_combout\,
	cout => \inst3|Add0~14\);

-- Location: LCCOMB_X29_Y10_N22
\inst3|regq[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~35_combout\ = (\inst6|o_AND~q\) # ((\inst6|o_NOT~q\ & !\inst6|o_OR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_AND~q\,
	datac => \inst6|o_NOT~q\,
	datad => \inst6|o_OR~q\,
	combout => \inst3|regq[3]~35_combout\);

-- Location: LCCOMB_X29_Y10_N6
\inst3|regq[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~27_combout\ = (!\inst6|o_AND~q\ & !\inst6|o_OR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_AND~q\,
	datad => \inst6|o_OR~q\,
	combout => \inst3|regq[3]~27_combout\);

-- Location: LCCOMB_X29_Y13_N0
\inst3|regq[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~36_combout\ = (\inst6|o_SHL~q\) # ((\inst6|data_out\(3)) # (\inst6|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_SHL~q\,
	datab => \inst6|data_out\(3),
	datac => \inst6|data_out\(2),
	combout => \inst3|regq[3]~36_combout\);

-- Location: LCCOMB_X29_Y10_N2
\inst3|regq[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[4]~57_combout\ = (\inst3|regq[3]~27_combout\ & (!\inst3|Add0~6_combout\ & ((\inst6|o_NOT~q\) # (!\inst6|o_NEG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[3]~27_combout\,
	datab => \inst6|o_NEG~q\,
	datac => \inst6|o_NOT~q\,
	datad => \inst3|Add0~6_combout\,
	combout => \inst3|regq[4]~57_combout\);

-- Location: LCCOMB_X28_Y13_N12
\inst3|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~8_combout\ = (\inst6|data_out\(0) & ((\inst5|accReg\(3)))) # (!\inst6|data_out\(0) & (\inst5|accReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(4),
	datac => \inst6|data_out\(0),
	datad => \inst5|accReg\(3),
	combout => \inst3|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X29_Y13_N18
\inst3|regq[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~50_combout\ = (\inst6|data_out\(2)) # ((\inst6|data_out\(3)) # (!\inst6|o_SHL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(2),
	datac => \inst6|data_out\(3),
	datad => \inst6|o_SHL~q\,
	combout => \inst3|regq[6]~50_combout\);

-- Location: LCCOMB_X29_Y12_N0
\inst3|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~2_combout\ = (\inst6|data_out\(0) & ((\inst5|accReg\(1)))) # (!\inst6|data_out\(0) & (\inst5|accReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(0),
	datac => \inst5|accReg\(2),
	datad => \inst5|accReg\(1),
	combout => \inst3|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X29_Y13_N6
\inst3|regq[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~53_combout\ = (\inst6|o_SHL~q\ & ((\inst6|data_out\(3)) # ((\inst6|data_out\(1)) # (\inst6|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_SHL~q\,
	datab => \inst6|data_out\(3),
	datac => \inst6|data_out\(1),
	datad => \inst6|data_out\(2),
	combout => \inst3|regq[6]~53_combout\);

-- Location: LCCOMB_X29_Y13_N8
\inst3|regq[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~52_combout\ = ((!\inst6|data_out\(3) & \inst6|data_out\(2))) # (!\inst6|o_SHL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(3),
	datac => \inst6|data_out\(2),
	datad => \inst6|o_SHL~q\,
	combout => \inst3|regq[6]~52_combout\);

-- Location: LCCOMB_X29_Y13_N16
\inst3|regq~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~19_combout\ = (!\inst6|data_out\(2) & !\inst6|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|data_out\(2),
	datad => \inst6|data_out\(3),
	combout => \inst3|regq~19_combout\);

-- Location: LCCOMB_X29_Y10_N0
\inst3|regq[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~56_combout\ = (!\inst6|o_NOT~q\ & (!\inst6|data_out\(2) & (!\inst6|data_out\(1) & \inst6|o_SHL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_NOT~q\,
	datab => \inst6|data_out\(2),
	datac => \inst6|data_out\(1),
	datad => \inst6|o_SHL~q\,
	combout => \inst3|regq[6]~56_combout\);

-- Location: LCCOMB_X29_Y11_N18
\inst3|regq[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~58_combout\ = ((\inst3|regq[6]~56_combout\ & (!\inst6|data_out\(0) & !\inst6|data_out\(3)))) # (!\inst3|regq[4]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[6]~56_combout\,
	datab => \inst6|data_out\(0),
	datac => \inst6|data_out\(3),
	datad => \inst3|regq[4]~57_combout\,
	combout => \inst3|regq[6]~58_combout\);

-- Location: LCCOMB_X29_Y12_N4
\inst3|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~5_combout\ = (\inst6|data_out\(0) & (\inst5|accReg\(2))) # (!\inst6|data_out\(0) & ((\inst5|accReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|accReg\(2),
	datac => \inst5|accReg\(3),
	datad => \inst6|data_out\(0),
	combout => \inst3|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X28_Y13_N22
\inst3|regq~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~80_combout\ = (!\inst6|data_out\(1) & (!\inst6|data_out\(2) & (!\inst6|data_out\(3) & \inst3|ShiftRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(1),
	datab => \inst6|data_out\(2),
	datac => \inst6|data_out\(3),
	datad => \inst3|ShiftRight0~1_combout\,
	combout => \inst3|regq~80_combout\);

-- Location: LCCOMB_X29_Y12_N18
\inst3|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~3_combout\ = (\inst6|data_out\(1) & (\inst5|accReg\(0) & (!\inst6|data_out\(0)))) # (!\inst6|data_out\(1) & (((\inst3|ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(0),
	datab => \inst6|data_out\(0),
	datac => \inst6|data_out\(1),
	datad => \inst3|ShiftLeft0~2_combout\,
	combout => \inst3|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X28_Y13_N6
\inst3|regq~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~63_combout\ = (\inst3|regq[6]~53_combout\ & (\inst3|regq[6]~52_combout\ & ((\inst3|ShiftLeft0~3_combout\)))) # (!\inst3|regq[6]~53_combout\ & (((\inst3|regq~80_combout\)) # (!\inst3|regq[6]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[6]~53_combout\,
	datab => \inst3|regq[6]~52_combout\,
	datac => \inst3|regq~80_combout\,
	datad => \inst3|ShiftLeft0~3_combout\,
	combout => \inst3|regq~63_combout\);

-- Location: LCCOMB_X28_Y13_N16
\inst3|regq~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~64_combout\ = (\inst3|regq[6]~50_combout\ & (((\inst3|regq~63_combout\)))) # (!\inst3|regq[6]~50_combout\ & ((\inst3|regq~63_combout\ & ((\inst5|accReg\(5)))) # (!\inst3|regq~63_combout\ & (\inst3|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftLeft0~8_combout\,
	datab => \inst3|regq[6]~50_combout\,
	datac => \inst5|accReg\(5),
	datad => \inst3|regq~63_combout\,
	combout => \inst3|regq~64_combout\);

-- Location: LCCOMB_X28_Y11_N28
\inst3|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~19_combout\ = (!\inst6|o_ADD~q\ & \inst6|o_SUB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|o_ADD~q\,
	datad => \inst6|o_SUB~q\,
	combout => \inst3|Add0~19_combout\);

-- Location: LCCOMB_X29_Y11_N10
\inst3|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_combout\ = \inst5|accReg\(6) $ (((\inst6|o_SUB~q\) # (\inst6|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(6),
	datac => \inst6|o_SUB~q\,
	datad => \inst6|o_ADD~q\,
	combout => \inst3|Add0~21_combout\);

-- Location: LCCOMB_X29_Y11_N20
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = \inst5|accReg\(5) $ (((\inst6|o_SUB~q\) # (\inst6|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_SUB~q\,
	datac => \inst5|accReg\(5),
	datad => \inst6|o_ADD~q\,
	combout => \inst3|Add0~22_combout\);

-- Location: LCCOMB_X29_Y11_N14
\inst3|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~23_combout\ = \inst5|accReg\(4) $ (((\inst6|o_ADD~q\) # (\inst6|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_ADD~q\,
	datac => \inst6|o_SUB~q\,
	datad => \inst5|accReg\(4),
	combout => \inst3|Add0~23_combout\);

-- Location: LCCOMB_X28_Y11_N12
\inst3|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_combout\ = ((\inst3|Add0~16_combout\ $ (\inst3|Add0~15_combout\ $ (!\inst3|Add0~14\)))) # (GND)
-- \inst3|Add0~18\ = CARRY((\inst3|Add0~16_combout\ & ((\inst3|Add0~15_combout\) # (!\inst3|Add0~14\))) # (!\inst3|Add0~16_combout\ & (\inst3|Add0~15_combout\ & !\inst3|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~16_combout\,
	datab => \inst3|Add0~15_combout\,
	datad => VCC,
	cin => \inst3|Add0~14\,
	combout => \inst3|Add0~17_combout\,
	cout => \inst3|Add0~18\);

-- Location: LCCOMB_X28_Y11_N14
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|Add0~19_combout\ & ((\inst3|Add0~23_combout\ & (!\inst3|Add0~18\)) # (!\inst3|Add0~23_combout\ & (\inst3|Add0~18\ & VCC)))) # (!\inst3|Add0~19_combout\ & ((\inst3|Add0~23_combout\ & ((\inst3|Add0~18\) # (GND))) # 
-- (!\inst3|Add0~23_combout\ & (!\inst3|Add0~18\))))
-- \inst3|Add0~25\ = CARRY((\inst3|Add0~19_combout\ & (\inst3|Add0~23_combout\ & !\inst3|Add0~18\)) # (!\inst3|Add0~19_combout\ & ((\inst3|Add0~23_combout\) # (!\inst3|Add0~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~19_combout\,
	datab => \inst3|Add0~23_combout\,
	datad => VCC,
	cin => \inst3|Add0~18\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X28_Y11_N16
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = ((\inst3|Add0~22_combout\ $ (\inst3|Add0~19_combout\ $ (\inst3|Add0~25\)))) # (GND)
-- \inst3|Add0~27\ = CARRY((\inst3|Add0~22_combout\ & (\inst3|Add0~19_combout\ & !\inst3|Add0~25\)) # (!\inst3|Add0~22_combout\ & ((\inst3|Add0~19_combout\) # (!\inst3|Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~22_combout\,
	datab => \inst3|Add0~19_combout\,
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X28_Y11_N18
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|Add0~19_combout\ & ((\inst3|Add0~21_combout\ & (!\inst3|Add0~27\)) # (!\inst3|Add0~21_combout\ & (\inst3|Add0~27\ & VCC)))) # (!\inst3|Add0~19_combout\ & ((\inst3|Add0~21_combout\ & ((\inst3|Add0~27\) # (GND))) # 
-- (!\inst3|Add0~21_combout\ & (!\inst3|Add0~27\))))
-- \inst3|Add0~29\ = CARRY((\inst3|Add0~19_combout\ & (\inst3|Add0~21_combout\ & !\inst3|Add0~27\)) # (!\inst3|Add0~19_combout\ & ((\inst3|Add0~21_combout\) # (!\inst3|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~19_combout\,
	datab => \inst3|Add0~21_combout\,
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X29_Y11_N30
\inst3|regq[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~60_combout\ = (\inst3|regq[6]~58_combout\ & ((\inst3|regq[3]~25_combout\))) # (!\inst3|regq[6]~58_combout\ & (\inst6|o_NOT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_NOT~q\,
	datac => \inst3|regq[3]~25_combout\,
	datad => \inst3|regq[6]~58_combout\,
	combout => \inst3|regq[6]~60_combout\);

-- Location: LCCOMB_X29_Y11_N24
\inst3|regq[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[6]~59_combout\ = (\inst3|regq[6]~58_combout\ & ((\inst3|regq[3]~25_combout\) # (!\inst6|o_AND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_AND~q\,
	datac => \inst3|regq[3]~25_combout\,
	datad => \inst3|regq[6]~58_combout\,
	combout => \inst3|regq[6]~59_combout\);

-- Location: LCCOMB_X29_Y11_N2
\inst3|regq~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~65_combout\ = (\inst3|regq[6]~60_combout\ & (((\inst3|Add0~28_combout\) # (!\inst3|regq[6]~59_combout\)))) # (!\inst3|regq[6]~60_combout\ & (\inst5|accReg\(6) & ((\inst3|regq[6]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(6),
	datab => \inst3|Add0~28_combout\,
	datac => \inst3|regq[6]~60_combout\,
	datad => \inst3|regq[6]~59_combout\,
	combout => \inst3|regq~65_combout\);

-- Location: LCCOMB_X29_Y11_N22
\inst3|regq~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~66_combout\ = (\inst3|regq[6]~58_combout\ & (((\inst3|regq~65_combout\)))) # (!\inst3|regq[6]~58_combout\ & ((\inst3|regq~65_combout\ & (!\inst5|accReg\(6))) # (!\inst3|regq~65_combout\ & ((\inst3|regq~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(6),
	datab => \inst3|regq[6]~58_combout\,
	datac => \inst3|regq~64_combout\,
	datad => \inst3|regq~65_combout\,
	combout => \inst3|regq~66_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst1|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~7_combout\ = (!\inst1|regq\(6) & (\inst1|regq\(5) & (\inst1|regq\(7) & \inst1|regq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(6),
	datab => \inst1|regq\(5),
	datac => \inst1|regq\(7),
	datad => \inst1|regq\(4),
	combout => \inst1|Mux7~7_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst6|o_SHR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|o_SHR~0_combout\ = (\inst6|o_SHL~0_combout\ & ((\inst1|Mux7~7_combout\ & (\inst|tmp\(5))) # (!\inst1|Mux7~7_combout\ & ((\inst6|o_SHR~q\))))) # (!\inst6|o_SHL~0_combout\ & (((\inst6|o_SHR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst6|o_SHL~0_combout\,
	datac => \inst6|o_SHR~q\,
	datad => \inst1|Mux7~7_combout\,
	combout => \inst6|o_SHR~0_combout\);

-- Location: FF_X29_Y14_N25
\inst6|o_SHR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|o_SHR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|o_SHR~q\);

-- Location: LCCOMB_X29_Y10_N28
\inst3|regq[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~26_combout\ = (\inst6|o_NOT~q\) # ((\inst6|o_NEG~q\) # ((\inst6|o_SHR~q\) # (\inst6|o_SHL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_NOT~q\,
	datab => \inst6|o_NEG~q\,
	datac => \inst6|o_SHR~q\,
	datad => \inst6|o_SHL~q\,
	combout => \inst3|regq[3]~26_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst6|en_ALU_D~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_ALU_D~1_combout\ = (\inst6|o_SUB~2_combout\ & ((\inst1|regq\(6) & ((!\inst1|regq\(7)))) # (!\inst1|regq\(6) & (\inst1|regq\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regq\(6),
	datab => \inst1|regq\(5),
	datac => \inst6|o_SUB~2_combout\,
	datad => \inst1|regq\(7),
	combout => \inst6|en_ALU_D~1_combout\);

-- Location: FF_X29_Y14_N11
\inst6|en_ALU_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|en_ALU_D~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|en_ALU_D~q\);

-- Location: LCCOMB_X29_Y10_N24
\inst3|regq[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~28_combout\ = (\inst6|en_ALU_D~q\ & (((\inst3|regq[3]~26_combout\) # (\inst3|Add0~6_combout\)) # (!\inst3|regq[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[3]~27_combout\,
	datab => \inst3|regq[3]~26_combout\,
	datac => \inst6|en_ALU_D~q\,
	datad => \inst3|Add0~6_combout\,
	combout => \inst3|regq[3]~28_combout\);

-- Location: FF_X29_Y11_N23
\inst3|regq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq~66_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(6));

-- Location: LCCOMB_X30_Y11_N6
\inst5|accReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~6_combout\ = (\inst3|regq\(6) & \inst6|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|regq\(6),
	datad => \inst6|en_ALU~q\,
	combout => \inst5|accReg~6_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst6|en_dBus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|en_dBus~0_combout\ = (\inst|tmp\(5) & (\inst|tmp\(0) & (\inst6|o_SUB~0_combout\ & \inst1|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tmp\(5),
	datab => \inst|tmp\(0),
	datac => \inst6|o_SUB~0_combout\,
	datad => \inst1|Mux7~0_combout\,
	combout => \inst6|en_dBus~0_combout\);

-- Location: FF_X29_Y14_N1
\inst6|en_dBus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|en_dBus~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|en_dBus~q\);

-- Location: LCCOMB_X28_Y13_N8
\inst5|accReg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg[3]~1_combout\ = (\inst6|en_ALU~q\) # (\inst6|en_dBus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|en_ALU~q\,
	datac => \inst6|en_dBus~q\,
	combout => \inst5|accReg[3]~1_combout\);

-- Location: FF_X30_Y11_N7
\inst5|accReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~6_combout\,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(6));

-- Location: LCCOMB_X29_Y13_N20
\inst3|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~5_combout\ = (\inst6|data_out\(0) & ((\inst5|accReg\(6)))) # (!\inst6|data_out\(0) & (\inst5|accReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|accReg\(5),
	datac => \inst5|accReg\(6),
	datad => \inst6|data_out\(0),
	combout => \inst3|ShiftRight0~5_combout\);

-- Location: LCCOMB_X29_Y13_N14
\inst3|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~6_combout\ = (\inst6|data_out\(1) & (!\inst6|data_out\(0) & (\inst5|accReg\(7)))) # (!\inst6|data_out\(1) & (((\inst3|ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(0),
	datab => \inst5|accReg\(7),
	datac => \inst6|data_out\(1),
	datad => \inst3|ShiftRight0~5_combout\,
	combout => \inst3|ShiftRight0~6_combout\);

-- Location: LCCOMB_X29_Y13_N2
\inst3|regq~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~81_combout\ = (!\inst6|data_out\(2) & (!\inst6|data_out\(3) & \inst3|ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(2),
	datab => \inst6|data_out\(3),
	datac => \inst3|ShiftRight0~6_combout\,
	combout => \inst3|regq~81_combout\);

-- Location: LCCOMB_X29_Y13_N4
\inst3|regq~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~67_combout\ = (\inst3|regq[6]~53_combout\ & (\inst3|regq[6]~52_combout\ & (\inst3|ShiftLeft0~1_combout\))) # (!\inst3|regq[6]~53_combout\ & (((\inst3|regq~81_combout\)) # (!\inst3|regq[6]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[6]~53_combout\,
	datab => \inst3|regq[6]~52_combout\,
	datac => \inst3|ShiftLeft0~1_combout\,
	datad => \inst3|regq~81_combout\,
	combout => \inst3|regq~67_combout\);

-- Location: LCCOMB_X28_Y13_N2
\inst3|regq~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~68_combout\ = (\inst3|regq[6]~50_combout\ & (((\inst3|regq~67_combout\)))) # (!\inst3|regq[6]~50_combout\ & ((\inst3|regq~67_combout\ & (\inst3|ShiftLeft0~7_combout\)) # (!\inst3|regq~67_combout\ & ((\inst3|ShiftLeft0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftLeft0~7_combout\,
	datab => \inst3|regq[6]~50_combout\,
	datac => \inst3|ShiftLeft0~5_combout\,
	datad => \inst3|regq~67_combout\,
	combout => \inst3|regq~68_combout\);

-- Location: LCCOMB_X29_Y10_N14
\inst3|regq[4]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[4]~70_combout\ = (\inst3|regq[4]~57_combout\ & (\inst6|o_NOT~q\)) # (!\inst3|regq[4]~57_combout\ & ((\inst3|regq[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_NOT~q\,
	datab => \inst3|regq[4]~57_combout\,
	datad => \inst3|regq[3]~25_combout\,
	combout => \inst3|regq[4]~70_combout\);

-- Location: LCCOMB_X29_Y10_N12
\inst3|regq[4]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[4]~69_combout\ = (!\inst3|regq[4]~57_combout\ & ((\inst3|regq[3]~25_combout\) # (!\inst6|o_AND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|regq[4]~57_combout\,
	datac => \inst6|o_AND~q\,
	datad => \inst3|regq[3]~25_combout\,
	combout => \inst3|regq[4]~69_combout\);

-- Location: LCCOMB_X28_Y13_N28
\inst3|regq~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~71_combout\ = (\inst3|regq[4]~70_combout\ & (((\inst3|Add0~26_combout\) # (!\inst3|regq[4]~69_combout\)))) # (!\inst3|regq[4]~70_combout\ & (\inst5|accReg\(5) & (\inst3|regq[4]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(5),
	datab => \inst3|regq[4]~70_combout\,
	datac => \inst3|regq[4]~69_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|regq~71_combout\);

-- Location: LCCOMB_X28_Y13_N10
\inst3|regq~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~72_combout\ = (\inst3|regq[4]~57_combout\ & ((\inst3|regq~71_combout\ & (!\inst5|accReg\(5))) # (!\inst3|regq~71_combout\ & ((\inst3|regq~68_combout\))))) # (!\inst3|regq[4]~57_combout\ & (((\inst3|regq~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(5),
	datab => \inst3|regq~68_combout\,
	datac => \inst3|regq[4]~57_combout\,
	datad => \inst3|regq~71_combout\,
	combout => \inst3|regq~72_combout\);

-- Location: FF_X28_Y13_N11
\inst3|regq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq~72_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(5));

-- Location: LCCOMB_X28_Y13_N4
\inst5|accReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~7_combout\ = (\inst3|regq\(5) & \inst6|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq\(5),
	datac => \inst6|en_ALU~q\,
	combout => \inst5|accReg~7_combout\);

-- Location: FF_X28_Y13_N5
\inst5|accReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~7_combout\,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(5));

-- Location: LCCOMB_X29_Y13_N24
\inst3|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~7_combout\ = (\inst6|data_out\(0) & (\inst5|accReg\(4))) # (!\inst6|data_out\(0) & ((\inst5|accReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(4),
	datab => \inst5|accReg\(5),
	datad => \inst6|data_out\(0),
	combout => \inst3|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X29_Y13_N26
\inst3|regq~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~51_combout\ = (\inst5|accReg\(7) & (\inst3|regq~19_combout\ & (!\inst6|data_out\(1) & !\inst6|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(7),
	datab => \inst3|regq~19_combout\,
	datac => \inst6|data_out\(1),
	datad => \inst6|data_out\(0),
	combout => \inst3|regq~51_combout\);

-- Location: LCCOMB_X29_Y12_N12
\inst3|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~4_combout\ = (\inst6|data_out\(1) & ((\inst6|data_out\(0) & (\inst5|accReg\(0))) # (!\inst6|data_out\(0) & ((\inst5|accReg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(1),
	datab => \inst6|data_out\(0),
	datac => \inst5|accReg\(0),
	datad => \inst5|accReg\(1),
	combout => \inst3|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X29_Y12_N30
\inst3|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~6_combout\ = (\inst3|ShiftLeft0~4_combout\) # ((!\inst6|data_out\(1) & \inst3|ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(1),
	datac => \inst3|ShiftLeft0~5_combout\,
	datad => \inst3|ShiftLeft0~4_combout\,
	combout => \inst3|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X29_Y13_N12
\inst3|regq~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~54_combout\ = (\inst3|regq[6]~53_combout\ & (\inst3|regq[6]~52_combout\ & ((\inst3|ShiftLeft0~6_combout\)))) # (!\inst3|regq[6]~53_combout\ & (((\inst3|regq~51_combout\)) # (!\inst3|regq[6]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[6]~53_combout\,
	datab => \inst3|regq[6]~52_combout\,
	datac => \inst3|regq~51_combout\,
	datad => \inst3|ShiftLeft0~6_combout\,
	combout => \inst3|regq~54_combout\);

-- Location: LCCOMB_X29_Y13_N22
\inst3|regq~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~55_combout\ = (\inst3|regq[6]~50_combout\ & (((\inst3|regq~54_combout\)))) # (!\inst3|regq[6]~50_combout\ & ((\inst3|regq~54_combout\ & ((\inst5|accReg\(6)))) # (!\inst3|regq~54_combout\ & (\inst3|ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftLeft0~7_combout\,
	datab => \inst5|accReg\(6),
	datac => \inst3|regq[6]~50_combout\,
	datad => \inst3|regq~54_combout\,
	combout => \inst3|regq~55_combout\);

-- Location: LCCOMB_X29_Y11_N8
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = \inst5|accReg\(7) $ (((\inst6|o_SUB~q\) # (\inst6|o_ADD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_SUB~q\,
	datac => \inst5|accReg\(7),
	datad => \inst6|o_ADD~q\,
	combout => \inst3|Add0~20_combout\);

-- Location: LCCOMB_X28_Y11_N20
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = \inst3|Add0~19_combout\ $ (\inst3|Add0~29\ $ (\inst3|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~19_combout\,
	datad => \inst3|Add0~20_combout\,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\);

-- Location: LCCOMB_X29_Y11_N28
\inst3|regq~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~61_combout\ = (\inst3|regq[6]~59_combout\ & ((\inst3|regq[6]~60_combout\ & ((\inst3|Add0~30_combout\))) # (!\inst3|regq[6]~60_combout\ & (\inst5|accReg\(7))))) # (!\inst3|regq[6]~59_combout\ & (((\inst3|regq[6]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(7),
	datab => \inst3|regq[6]~59_combout\,
	datac => \inst3|regq[6]~60_combout\,
	datad => \inst3|Add0~30_combout\,
	combout => \inst3|regq~61_combout\);

-- Location: LCCOMB_X29_Y11_N0
\inst3|regq~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~62_combout\ = (\inst3|regq[6]~58_combout\ & (((\inst3|regq~61_combout\)))) # (!\inst3|regq[6]~58_combout\ & ((\inst3|regq~61_combout\ & (!\inst5|accReg\(7))) # (!\inst3|regq~61_combout\ & ((\inst3|regq~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(7),
	datab => \inst3|regq[6]~58_combout\,
	datac => \inst3|regq~55_combout\,
	datad => \inst3|regq~61_combout\,
	combout => \inst3|regq~62_combout\);

-- Location: FF_X29_Y11_N1
\inst3|regq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq~62_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(7));

-- Location: LCCOMB_X28_Y12_N16
\inst5|accReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~5_combout\ = (\inst6|en_ALU~q\ & \inst3|regq\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|en_ALU~q\,
	datad => \inst3|regq\(7),
	combout => \inst5|accReg~5_combout\);

-- Location: FF_X29_Y12_N23
\inst5|accReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~5_combout\,
	sload => VCC,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(7));

-- Location: LCCOMB_X29_Y12_N24
\inst3|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~1_combout\ = (\inst6|data_out\(0) & (\inst5|accReg\(7))) # (!\inst6|data_out\(0) & ((\inst5|accReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(0),
	datac => \inst5|accReg\(7),
	datad => \inst5|accReg\(6),
	combout => \inst3|ShiftRight0~1_combout\);

-- Location: LCCOMB_X28_Y13_N26
\inst3|regq~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~73_combout\ = (\inst3|regq~19_combout\ & ((\inst6|data_out\(1) & ((\inst3|ShiftRight0~1_combout\))) # (!\inst6|data_out\(1) & (\inst3|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(1),
	datab => \inst3|ShiftRight0~2_combout\,
	datac => \inst3|regq~19_combout\,
	datad => \inst3|ShiftRight0~1_combout\,
	combout => \inst3|regq~73_combout\);

-- Location: LCCOMB_X28_Y13_N24
\inst3|regq~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~74_combout\ = (\inst3|regq[6]~53_combout\ & (\inst3|regq[6]~52_combout\ & ((\inst3|ShiftLeft0~0_combout\)))) # (!\inst3|regq[6]~53_combout\ & (((\inst3|regq~73_combout\)) # (!\inst3|regq[6]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[6]~53_combout\,
	datab => \inst3|regq[6]~52_combout\,
	datac => \inst3|regq~73_combout\,
	datad => \inst3|ShiftLeft0~0_combout\,
	combout => \inst3|regq~74_combout\);

-- Location: LCCOMB_X28_Y13_N18
\inst3|regq~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~75_combout\ = (\inst3|regq[6]~50_combout\ & (((\inst3|regq~74_combout\)))) # (!\inst3|regq[6]~50_combout\ & ((\inst3|regq~74_combout\ & (\inst3|ShiftLeft0~8_combout\)) # (!\inst3|regq~74_combout\ & ((\inst3|ShiftLeft0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftLeft0~8_combout\,
	datab => \inst3|regq[6]~50_combout\,
	datac => \inst3|ShiftLeft0~2_combout\,
	datad => \inst3|regq~74_combout\,
	combout => \inst3|regq~75_combout\);

-- Location: LCCOMB_X28_Y13_N0
\inst3|regq~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~76_combout\ = (\inst3|regq[4]~69_combout\ & ((\inst3|regq[4]~70_combout\ & ((\inst3|Add0~24_combout\))) # (!\inst3|regq[4]~70_combout\ & (\inst5|accReg\(4))))) # (!\inst3|regq[4]~69_combout\ & (((\inst3|regq[4]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(4),
	datab => \inst3|regq[4]~69_combout\,
	datac => \inst3|regq[4]~70_combout\,
	datad => \inst3|Add0~24_combout\,
	combout => \inst3|regq~76_combout\);

-- Location: LCCOMB_X28_Y13_N20
\inst3|regq~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~77_combout\ = (\inst3|regq[4]~57_combout\ & ((\inst3|regq~76_combout\ & ((!\inst5|accReg\(4)))) # (!\inst3|regq~76_combout\ & (\inst3|regq~75_combout\)))) # (!\inst3|regq[4]~57_combout\ & (((\inst3|regq~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[4]~57_combout\,
	datab => \inst3|regq~75_combout\,
	datac => \inst5|accReg\(4),
	datad => \inst3|regq~76_combout\,
	combout => \inst3|regq~77_combout\);

-- Location: FF_X28_Y13_N21
\inst3|regq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq~77_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(4));

-- Location: LCCOMB_X28_Y13_N30
\inst5|accReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~8_combout\ = (\inst3|regq\(4) & \inst6|en_ALU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|regq\(4),
	datac => \inst6|en_ALU~q\,
	combout => \inst5|accReg~8_combout\);

-- Location: FF_X28_Y13_N31
\inst5|accReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~8_combout\,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(4));

-- Location: LCCOMB_X28_Y13_N14
\inst3|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~2_combout\ = (\inst6|data_out\(0) & ((\inst5|accReg\(5)))) # (!\inst6|data_out\(0) & (\inst5|accReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(4),
	datab => \inst5|accReg\(5),
	datac => \inst6|data_out\(0),
	combout => \inst3|ShiftRight0~2_combout\);

-- Location: LCCOMB_X29_Y13_N30
\inst3|regq[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~38_combout\ = \inst6|o_SHL~q\ $ (((\inst6|data_out\(3)) # (\inst6|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(3),
	datac => \inst6|data_out\(2),
	datad => \inst6|o_SHL~q\,
	combout => \inst3|regq[3]~38_combout\);

-- Location: LCCOMB_X29_Y12_N8
\inst3|regq~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~37_combout\ = (!\inst6|data_out\(1) & (!\inst6|data_out\(3) & \inst3|ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(1),
	datac => \inst6|data_out\(3),
	datad => \inst3|ShiftRight0~1_combout\,
	combout => \inst3|regq~37_combout\);

-- Location: LCCOMB_X29_Y13_N28
\inst3|regq[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[3]~39_combout\ = (\inst6|o_SHL~q\) # ((!\inst6|data_out\(2) & (!\inst6|data_out\(3) & \inst6|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(2),
	datab => \inst6|data_out\(3),
	datac => \inst6|o_SHL~q\,
	datad => \inst6|data_out\(1),
	combout => \inst3|regq[3]~39_combout\);

-- Location: LCCOMB_X29_Y12_N26
\inst3|regq~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~40_combout\ = (\inst3|regq[3]~38_combout\ & ((\inst3|regq[3]~39_combout\ & (\inst3|ShiftLeft0~3_combout\)) # (!\inst3|regq[3]~39_combout\ & ((\inst3|regq~37_combout\))))) # (!\inst3|regq[3]~38_combout\ & (((!\inst3|regq[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[3]~38_combout\,
	datab => \inst3|ShiftLeft0~3_combout\,
	datac => \inst3|regq~37_combout\,
	datad => \inst3|regq[3]~39_combout\,
	combout => \inst3|regq~40_combout\);

-- Location: LCCOMB_X28_Y12_N20
\inst3|regq~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~41_combout\ = (\inst3|regq[3]~36_combout\ & (((\inst3|regq~40_combout\)))) # (!\inst3|regq[3]~36_combout\ & ((\inst3|regq~40_combout\ & (\inst3|ShiftRight0~0_combout\)) # (!\inst3|regq~40_combout\ & ((\inst3|ShiftRight0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftRight0~0_combout\,
	datab => \inst3|regq[3]~36_combout\,
	datac => \inst3|ShiftRight0~2_combout\,
	datad => \inst3|regq~40_combout\,
	combout => \inst3|regq~41_combout\);

-- Location: LCCOMB_X28_Y12_N10
\inst3|regq~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~79_combout\ = (\inst6|o_AND~q\ & (\inst6|data_out\(2))) # (!\inst6|o_AND~q\ & ((\inst6|o_OR~q\ & (\inst6|data_out\(2))) # (!\inst6|o_OR~q\ & ((\inst3|regq~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(2),
	datab => \inst6|o_AND~q\,
	datac => \inst6|o_OR~q\,
	datad => \inst3|regq~41_combout\,
	combout => \inst3|regq~79_combout\);

-- Location: LCCOMB_X28_Y12_N6
\inst3|regq~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~42_combout\ = (\inst3|regq[3]~35_combout\ & ((\inst5|accReg\(2) & (!\inst3|regq[3]~27_combout\ & \inst3|regq~79_combout\)) # (!\inst5|accReg\(2) & (\inst3|regq[3]~27_combout\)))) # (!\inst3|regq[3]~35_combout\ & ((\inst3|regq~79_combout\) # 
-- ((\inst5|accReg\(2) & !\inst3|regq[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(2),
	datab => \inst3|regq[3]~35_combout\,
	datac => \inst3|regq[3]~27_combout\,
	datad => \inst3|regq~79_combout\,
	combout => \inst3|regq~42_combout\);

-- Location: LCCOMB_X28_Y12_N28
\inst3|regq~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~43_combout\ = (\inst3|regq[3]~25_combout\ & (\inst3|Add0~13_combout\)) # (!\inst3|regq[3]~25_combout\ & ((\inst3|regq~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[3]~25_combout\,
	datac => \inst3|Add0~13_combout\,
	datad => \inst3|regq~42_combout\,
	combout => \inst3|regq~43_combout\);

-- Location: FF_X28_Y12_N29
\inst3|regq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq~43_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(2));

-- Location: LCCOMB_X28_Y12_N26
\inst5|accReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~3_combout\ = (\inst6|en_ALU~q\ & (\inst3|regq\(2))) # (!\inst6|en_ALU~q\ & ((\inst6|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|regq\(2),
	datac => \inst6|en_ALU~q\,
	datad => \inst6|data_out\(2),
	combout => \inst5|accReg~3_combout\);

-- Location: FF_X29_Y12_N7
\inst5|accReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~3_combout\,
	sload => VCC,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(2));

-- Location: LCCOMB_X28_Y11_N30
\inst3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~11_combout\ = (\inst5|accReg\(2) & ((\inst6|o_ADD~q\) # (\inst6|o_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|o_ADD~q\,
	datac => \inst6|o_SUB~q\,
	datad => \inst5|accReg\(2),
	combout => \inst3|Add0~11_combout\);

-- Location: LCCOMB_X29_Y12_N6
\inst3|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~4_combout\ = (\inst6|data_out\(0) & ((\inst5|accReg\(4)))) # (!\inst6|data_out\(0) & (\inst5|accReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(3),
	datab => \inst6|data_out\(0),
	datad => \inst5|accReg\(4),
	combout => \inst3|ShiftRight0~4_combout\);

-- Location: LCCOMB_X28_Y12_N8
\inst3|regq~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~44_combout\ = (!\inst6|data_out\(1) & (!\inst6|data_out\(0) & (!\inst6|data_out\(3) & \inst5|accReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(1),
	datab => \inst6|data_out\(0),
	datac => \inst6|data_out\(3),
	datad => \inst5|accReg\(7),
	combout => \inst3|regq~44_combout\);

-- Location: LCCOMB_X28_Y12_N2
\inst3|regq~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~45_combout\ = (\inst3|regq[3]~38_combout\ & ((\inst3|regq[3]~39_combout\ & ((\inst3|ShiftLeft0~6_combout\))) # (!\inst3|regq[3]~39_combout\ & (\inst3|regq~44_combout\)))) # (!\inst3|regq[3]~38_combout\ & (((!\inst3|regq[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[3]~38_combout\,
	datab => \inst3|regq~44_combout\,
	datac => \inst3|ShiftLeft0~6_combout\,
	datad => \inst3|regq[3]~39_combout\,
	combout => \inst3|regq~45_combout\);

-- Location: LCCOMB_X28_Y12_N12
\inst3|regq~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~46_combout\ = (\inst3|regq[3]~36_combout\ & (((\inst3|regq~45_combout\)))) # (!\inst3|regq[3]~36_combout\ & ((\inst3|regq~45_combout\ & (\inst3|ShiftRight0~4_combout\)) # (!\inst3|regq~45_combout\ & ((\inst3|ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftRight0~4_combout\,
	datab => \inst3|regq[3]~36_combout\,
	datac => \inst3|ShiftRight0~5_combout\,
	datad => \inst3|regq~45_combout\,
	combout => \inst3|regq~46_combout\);

-- Location: LCCOMB_X28_Y12_N18
\inst3|regq~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~47_combout\ = (\inst3|regq[3]~27_combout\ & ((\inst3|regq[3]~35_combout\ & (!\inst5|accReg\(3))) # (!\inst3|regq[3]~35_combout\ & ((\inst3|regq~46_combout\))))) # (!\inst3|regq[3]~27_combout\ & (((\inst3|regq[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[3]~27_combout\,
	datab => \inst5|accReg\(3),
	datac => \inst3|regq[3]~35_combout\,
	datad => \inst3|regq~46_combout\,
	combout => \inst3|regq~47_combout\);

-- Location: LCCOMB_X28_Y12_N24
\inst3|regq~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~48_combout\ = (\inst3|regq[3]~27_combout\ & (((\inst3|regq~47_combout\)))) # (!\inst3|regq[3]~27_combout\ & ((\inst6|data_out\(3) & ((\inst5|accReg\(3)) # (!\inst3|regq~47_combout\))) # (!\inst6|data_out\(3) & (\inst5|accReg\(3) & 
-- !\inst3|regq~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(3),
	datab => \inst5|accReg\(3),
	datac => \inst3|regq[3]~27_combout\,
	datad => \inst3|regq~47_combout\,
	combout => \inst3|regq~48_combout\);

-- Location: LCCOMB_X28_Y12_N0
\inst3|regq~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~49_combout\ = (\inst3|regq[3]~25_combout\ & (\inst3|Add0~17_combout\)) # (!\inst3|regq[3]~25_combout\ & ((\inst3|regq~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~17_combout\,
	datac => \inst3|regq[3]~25_combout\,
	datad => \inst3|regq~48_combout\,
	combout => \inst3|regq~49_combout\);

-- Location: FF_X28_Y12_N1
\inst3|regq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq~49_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(3));

-- Location: LCCOMB_X28_Y12_N30
\inst5|accReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~4_combout\ = (\inst6|en_ALU~q\ & ((\inst3|regq\(3)))) # (!\inst6|en_ALU~q\ & (\inst6|data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(3),
	datac => \inst6|en_ALU~q\,
	datad => \inst3|regq\(3),
	combout => \inst5|accReg~4_combout\);

-- Location: FF_X29_Y12_N5
\inst5|accReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~4_combout\,
	sload => VCC,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(3));

-- Location: LCCOMB_X28_Y12_N14
\inst3|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~0_combout\ = (\inst6|data_out\(0) & (\inst5|accReg\(3))) # (!\inst6|data_out\(0) & ((\inst5|accReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(0),
	datac => \inst5|accReg\(3),
	datad => \inst5|accReg\(2),
	combout => \inst3|ShiftRight0~0_combout\);

-- Location: LCCOMB_X29_Y12_N14
\inst3|regq[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[1]~14_combout\ = (\inst6|data_out\(1)) # (\inst6|data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|data_out\(1),
	datad => \inst6|data_out\(2),
	combout => \inst3|regq[1]~14_combout\);

-- Location: LCCOMB_X29_Y12_N28
\inst3|regq[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[1]~15_combout\ = (\inst6|data_out\(2)) # ((!\inst6|data_out\(1) & \inst6|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(1),
	datac => \inst6|data_out\(0),
	datad => \inst6|data_out\(2),
	combout => \inst3|regq[1]~15_combout\);

-- Location: LCCOMB_X29_Y12_N20
\inst3|regq~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~16_combout\ = (\inst3|regq[1]~14_combout\ & (((\inst3|regq[1]~15_combout\)))) # (!\inst3|regq[1]~14_combout\ & ((\inst3|regq[1]~15_combout\ & (\inst5|accReg\(1))) # (!\inst3|regq[1]~15_combout\ & ((\inst5|accReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datab => \inst3|regq[1]~14_combout\,
	datac => \inst5|accReg\(0),
	datad => \inst3|regq[1]~15_combout\,
	combout => \inst3|regq~16_combout\);

-- Location: LCCOMB_X29_Y12_N10
\inst3|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftRight0~3_combout\ = (\inst6|data_out\(1) & (\inst3|ShiftRight0~1_combout\)) # (!\inst6|data_out\(1) & ((\inst3|ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ShiftRight0~1_combout\,
	datac => \inst3|ShiftRight0~2_combout\,
	datad => \inst6|data_out\(1),
	combout => \inst3|ShiftRight0~3_combout\);

-- Location: LCCOMB_X29_Y12_N16
\inst3|regq~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~17_combout\ = (\inst3|regq~16_combout\ & (((\inst3|ShiftRight0~3_combout\) # (!\inst3|regq[1]~14_combout\)))) # (!\inst3|regq~16_combout\ & (\inst3|ShiftRight0~0_combout\ & (\inst3|regq[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftRight0~0_combout\,
	datab => \inst3|regq~16_combout\,
	datac => \inst3|regq[1]~14_combout\,
	datad => \inst3|ShiftRight0~3_combout\,
	combout => \inst3|regq~17_combout\);

-- Location: LCCOMB_X29_Y12_N22
\inst3|regq~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~18_combout\ = (!\inst6|data_out\(3) & \inst3|regq~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(3),
	datad => \inst3|regq~17_combout\,
	combout => \inst3|regq~18_combout\);

-- Location: LCCOMB_X30_Y12_N28
\inst3|regq~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~23_combout\ = (\inst3|regq~22_combout\ & (((\inst3|regq~18_combout\) # (!\inst3|regq[1]~78_combout\)))) # (!\inst3|regq~22_combout\ & (\inst3|ShiftLeft0~0_combout\ & (\inst3|regq[1]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq~22_combout\,
	datab => \inst3|ShiftLeft0~0_combout\,
	datac => \inst3|regq[1]~78_combout\,
	datad => \inst3|regq~18_combout\,
	combout => \inst3|regq~23_combout\);

-- Location: LCCOMB_X30_Y12_N8
\inst3|regq[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[0]~0_combout\ = (\inst6|o_AND~q\ & (\inst3|regq~24_combout\)) # (!\inst6|o_AND~q\ & ((\inst3|regq~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_AND~q\,
	datab => \inst3|regq~24_combout\,
	datad => \inst3|regq~23_combout\,
	combout => \inst3|regq[0]~0_combout\);

-- Location: FF_X30_Y12_N9
\inst3|regq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq[0]~0_combout\,
	asdata => \inst3|Add0~4_combout\,
	sload => \inst3|regq[3]~25_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(0));

-- Location: LCCOMB_X30_Y12_N10
\inst5|accReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~0_combout\ = (\inst6|en_ALU~q\ & ((\inst3|regq\(0)))) # (!\inst6|en_ALU~q\ & (\inst6|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|data_out\(0),
	datac => \inst3|regq\(0),
	datad => \inst6|en_ALU~q\,
	combout => \inst5|accReg~0_combout\);

-- Location: FF_X29_Y12_N21
\inst5|accReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst5|accReg~0_combout\,
	sload => VCC,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(0));

-- Location: LCCOMB_X30_Y12_N24
\inst3|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|ShiftLeft0~1_combout\ = (!\inst6|data_out\(1) & ((\inst6|data_out\(0) & ((\inst5|accReg\(0)))) # (!\inst6|data_out\(0) & (\inst5|accReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datab => \inst6|data_out\(1),
	datac => \inst6|data_out\(0),
	datad => \inst5|accReg\(0),
	combout => \inst3|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X30_Y12_N22
\inst3|regq~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~32_combout\ = (\inst3|regq[1]~21_combout\ & ((\inst5|accReg\(1) & ((\inst3|regq[1]~20_combout\))) # (!\inst5|accReg\(1) & ((\inst6|data_out\(1)) # (!\inst3|regq[1]~20_combout\))))) # (!\inst3|regq[1]~21_combout\ & 
-- (((!\inst3|regq[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|regq[1]~21_combout\,
	datab => \inst6|data_out\(1),
	datac => \inst5|accReg\(1),
	datad => \inst3|regq[1]~20_combout\,
	combout => \inst3|regq~32_combout\);

-- Location: LCCOMB_X29_Y12_N2
\inst3|regq~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~29_combout\ = (\inst3|regq[1]~14_combout\ & ((\inst3|ShiftRight0~4_combout\) # ((\inst3|regq[1]~15_combout\)))) # (!\inst3|regq[1]~14_combout\ & (((\inst5|accReg\(1) & !\inst3|regq[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftRight0~4_combout\,
	datab => \inst5|accReg\(1),
	datac => \inst3|regq[1]~14_combout\,
	datad => \inst3|regq[1]~15_combout\,
	combout => \inst3|regq~29_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst3|regq~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~30_combout\ = (\inst3|regq[1]~15_combout\ & ((\inst3|regq~29_combout\ & ((\inst3|ShiftRight0~6_combout\))) # (!\inst3|regq~29_combout\ & (\inst5|accReg\(2))))) # (!\inst3|regq[1]~15_combout\ & (((\inst3|regq~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(2),
	datab => \inst3|regq[1]~15_combout\,
	datac => \inst3|ShiftRight0~6_combout\,
	datad => \inst3|regq~29_combout\,
	combout => \inst3|regq~30_combout\);

-- Location: LCCOMB_X30_Y12_N20
\inst3|regq~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~31_combout\ = (!\inst6|data_out\(3) & \inst3|regq~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|data_out\(3),
	datad => \inst3|regq~30_combout\,
	combout => \inst3|regq~31_combout\);

-- Location: LCCOMB_X30_Y12_N12
\inst3|regq~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq~33_combout\ = (\inst3|regq[1]~78_combout\ & ((\inst3|regq~32_combout\ & ((\inst3|regq~31_combout\))) # (!\inst3|regq~32_combout\ & (\inst3|ShiftLeft0~1_combout\)))) # (!\inst3|regq[1]~78_combout\ & (((\inst3|regq~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ShiftLeft0~1_combout\,
	datab => \inst3|regq[1]~78_combout\,
	datac => \inst3|regq~32_combout\,
	datad => \inst3|regq~31_combout\,
	combout => \inst3|regq~33_combout\);

-- Location: LCCOMB_X30_Y12_N26
\inst3|regq[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|regq[1]~1_combout\ = (\inst6|o_AND~q\ & (\inst3|regq~34_combout\)) # (!\inst6|o_AND~q\ & ((\inst3|regq~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|o_AND~q\,
	datab => \inst3|regq~34_combout\,
	datad => \inst3|regq~33_combout\,
	combout => \inst3|regq[1]~1_combout\);

-- Location: FF_X30_Y12_N27
\inst3|regq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|regq[1]~1_combout\,
	asdata => \inst3|Add0~9_combout\,
	sload => \inst3|regq[3]~25_combout\,
	ena => \inst3|regq[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regq\(1));

-- Location: LCCOMB_X30_Y11_N20
\inst5|accReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|accReg~2_combout\ = (\inst6|en_ALU~q\ & ((\inst3|regq\(1)))) # (!\inst6|en_ALU~q\ & (\inst6|data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|data_out\(1),
	datac => \inst3|regq\(1),
	datad => \inst6|en_ALU~q\,
	combout => \inst5|accReg~2_combout\);

-- Location: FF_X30_Y11_N21
\inst5|accReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|accReg~2_combout\,
	ena => \inst5|accReg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|accReg\(1));

-- Location: LCCOMB_X29_Y11_N16
\inst12|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux0~0_combout\ = (\inst5|accReg\(2) & (!\inst5|accReg\(1) & (\inst5|accReg\(0) $ (!\inst5|accReg\(3))))) # (!\inst5|accReg\(2) & (\inst5|accReg\(0) & (\inst5|accReg\(1) $ (!\inst5|accReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datab => \inst5|accReg\(2),
	datac => \inst5|accReg\(0),
	datad => \inst5|accReg\(3),
	combout => \inst12|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y9_N4
\inst12|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux1~0_combout\ = (\inst5|accReg\(3) & ((\inst5|accReg\(0) & ((\inst5|accReg\(1)))) # (!\inst5|accReg\(0) & (\inst5|accReg\(2))))) # (!\inst5|accReg\(3) & (\inst5|accReg\(2) & (\inst5|accReg\(0) $ (\inst5|accReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(3),
	datab => \inst5|accReg\(2),
	datac => \inst5|accReg\(0),
	datad => \inst5|accReg\(1),
	combout => \inst12|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y12_N16
\inst12|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux2~0_combout\ = (\inst5|accReg\(2) & (\inst5|accReg\(3) & ((\inst5|accReg\(1)) # (!\inst5|accReg\(0))))) # (!\inst5|accReg\(2) & (!\inst5|accReg\(3) & (\inst5|accReg\(1) & !\inst5|accReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(2),
	datab => \inst5|accReg\(3),
	datac => \inst5|accReg\(1),
	datad => \inst5|accReg\(0),
	combout => \inst12|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y9_N30
\inst12|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux3~0_combout\ = (\inst5|accReg\(1) & ((\inst5|accReg\(2) & ((\inst5|accReg\(0)))) # (!\inst5|accReg\(2) & (\inst5|accReg\(3) & !\inst5|accReg\(0))))) # (!\inst5|accReg\(1) & (!\inst5|accReg\(3) & (\inst5|accReg\(2) $ (\inst5|accReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(3),
	datab => \inst5|accReg\(2),
	datac => \inst5|accReg\(0),
	datad => \inst5|accReg\(1),
	combout => \inst12|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y11_N26
\inst12|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux4~0_combout\ = (\inst5|accReg\(1) & (((\inst5|accReg\(0) & !\inst5|accReg\(3))))) # (!\inst5|accReg\(1) & ((\inst5|accReg\(2) & ((!\inst5|accReg\(3)))) # (!\inst5|accReg\(2) & (\inst5|accReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(1),
	datab => \inst5|accReg\(2),
	datac => \inst5|accReg\(0),
	datad => \inst5|accReg\(3),
	combout => \inst12|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y9_N24
\inst12|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux6~0_combout\ = (\inst5|accReg\(0) & ((\inst5|accReg\(3)) # (\inst5|accReg\(2) $ (\inst5|accReg\(1))))) # (!\inst5|accReg\(0) & ((\inst5|accReg\(1)) # (\inst5|accReg\(3) $ (\inst5|accReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(3),
	datab => \inst5|accReg\(2),
	datac => \inst5|accReg\(0),
	datad => \inst5|accReg\(1),
	combout => \inst12|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y10_N24
\inst12|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux5~0_combout\ = (\inst5|accReg\(0) & (\inst5|accReg\(3) $ (((\inst5|accReg\(1)) # (!\inst5|accReg\(2)))))) # (!\inst5|accReg\(0) & (!\inst5|accReg\(3) & (\inst5|accReg\(1) & !\inst5|accReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|accReg\(0),
	datab => \inst5|accReg\(3),
	datac => \inst5|accReg\(1),
	datad => \inst5|accReg\(2),
	combout => \inst12|Mux5~0_combout\);

ww_OA <= \OA~output_o\;

ww_OB <= \OB~output_o\;

ww_OC <= \OC~output_o\;

ww_OD <= \OD~output_o\;

ww_OE <= \OE~output_o\;

ww_OG <= \OG~output_o\;

ww_O_F <= \O_F~output_o\;

ww_LED_0 <= \LED_0~output_o\;

ww_acc_out(7) <= \acc_out[7]~output_o\;

ww_acc_out(6) <= \acc_out[6]~output_o\;

ww_acc_out(5) <= \acc_out[5]~output_o\;

ww_acc_out(4) <= \acc_out[4]~output_o\;

ww_acc_out(3) <= \acc_out[3]~output_o\;

ww_acc_out(2) <= \acc_out[2]~output_o\;

ww_acc_out(1) <= \acc_out[1]~output_o\;

ww_acc_out(0) <= \acc_out[0]~output_o\;
END structure;


