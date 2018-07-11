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
-- Generated on "07/11/2018 22:46:10"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL en_LED : STD_LOGIC;
SIGNAL O_F : STD_LOGIC;
SIGNAL OA : STD_LOGIC;
SIGNAL OB : STD_LOGIC;
SIGNAL OC : STD_LOGIC;
SIGNAL OD : STD_LOGIC;
SIGNAL OE : STD_LOGIC;
SIGNAL OG : STD_LOGIC;
COMPONENT eight_bit_model
	PORT (
	acc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	en_LED : OUT STD_LOGIC;
	O_F : OUT STD_LOGIC;
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
	clk => clk,
	en_LED => en_LED,
	O_F => O_F,
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
