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
-- Generated on "07/13/2018 15:24:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pc_vhd_vec_tst IS
END pc_vhd_vec_tst;
ARCHITECTURE pc_arch OF pc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL en_D : STD_LOGIC;
SIGNAL pc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT pc
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	en_D : IN STD_LOGIC;
	pc_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pc
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	en_D => en_D,
	pc_out => pc_out
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

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 100000 ps;
	clr <= '1';
	WAIT FOR 70000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- en_D
t_prcs_en_D: PROCESS
BEGIN
	en_D <= '0';
	WAIT FOR 60000 ps;
	en_D <= '1';
WAIT;
END PROCESS t_prcs_en_D;
END pc_arch;
