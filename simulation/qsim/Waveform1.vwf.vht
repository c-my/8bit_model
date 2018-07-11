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
-- Generated on "07/11/2018 19:28:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clk_div
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clk_div_vhd_vec_tst IS
END clk_div_vhd_vec_tst;
ARCHITECTURE clk_div_arch OF clk_div_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50M : STD_LOGIC;
SIGNAL clk_out : STD_LOGIC;
COMPONENT clk_div
	PORT (
	clk_50M : IN STD_LOGIC;
	clk_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clk_div
	PORT MAP (
-- list connections between master ports and signals
	clk_50M => clk_50M,
	clk_out => clk_out
	);

-- clk_50M
t_prcs_clk_50M: PROCESS
BEGIN
LOOP
	clk_50M <= '0';
	WAIT FOR 5000 ps;
	clk_50M <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_50M;
END clk_div_arch;
