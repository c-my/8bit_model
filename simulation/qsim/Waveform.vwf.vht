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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/13/2018 10:20:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          eight_bit_model
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY eight_bit_model_vhd_vec_tst IS
END eight_bit_model_vhd_vec_tst;
ARCHITECTURE eight_bit_model_arch OF eight_bit_model_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu_oout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clr_me_o : STD_LOGIC;
SIGNAL d_bus_o : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en_alu : STD_LOGIC;
SIGNAL en_alu_o : STD_LOGIC;
SIGNAL en_dbus : STD_LOGIC;
SIGNAL LED_0 : STD_LOGIC;
SIGNAL o_add : STD_LOGIC;
SIGNAL o_and : STD_LOGIC;
SIGNAL O_F : STD_LOGIC;
SIGNAL o_not : STD_LOGIC;
SIGNAL o_or : STD_LOGIC;
SIGNAL o_shl : STD_LOGIC;
SIGNAL o_shr : STD_LOGIC;
SIGNAL o_sub : STD_LOGIC;
SIGNAL OA : STD_LOGIC;
SIGNAL OB : STD_LOGIC;
SIGNAL OC : STD_LOGIC;
SIGNAL OD : STD_LOGIC;
SIGNAL OE : STD_LOGIC;
SIGNAL OG : STD_LOGIC;
COMPONENT eight_bit_model
	PORT (
	acc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	alu_oout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	clr_me_o : OUT STD_LOGIC;
	d_bus_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en_alu : OUT STD_LOGIC;
	en_alu_o : OUT STD_LOGIC;
	en_dbus : OUT STD_LOGIC;
	LED_0 : OUT STD_LOGIC;
	o_add : OUT STD_LOGIC;
	o_and : OUT STD_LOGIC;
	O_F : OUT STD_LOGIC;
	o_not : OUT STD_LOGIC;
	o_or : OUT STD_LOGIC;
	o_shl : OUT STD_LOGIC;
	o_shr : OUT STD_LOGIC;
	o_sub : OUT STD_LOGIC;
	OA : OUT STD_LOGIC;
	OB : OUT STD_LOGIC;
	OC : OUT STD_LOGIC;
	OD : OUT STD_LOGIC;
	OE : OUT STD_LOGIC;
	OG : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : eight_bit_model
	PORT MAP (
-- list connections between master ports and signals
	acc_out => acc_out,
	alu_oout => alu_oout,
	clk => clk,
	clr_me_o => clr_me_o,
	d_bus_o => d_bus_o,
	en_alu => en_alu,
	en_alu_o => en_alu_o,
	en_dbus => en_dbus,
	LED_0 => LED_0,
	o_add => o_add,
	o_and => o_and,
	O_F => O_F,
	o_not => o_not,
	o_or => o_or,
	o_shl => o_shl,
	o_shr => o_shr,
	o_sub => o_sub,
	OA => OA,
	OB => OB,
	OC => OC,
	OD => OD,
	OE => OE,
	OG => OG
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END eight_bit_model_arch;
