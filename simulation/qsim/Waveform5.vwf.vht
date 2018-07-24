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
-- Generated on "07/13/2018 15:26:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          metronome
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY metronome_vhd_vec_tst IS
END metronome_vhd_vec_tst;
ARCHITECTURE metronome_arch OF metronome_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL t0 : STD_LOGIC;
SIGNAL t1 : STD_LOGIC;
SIGNAL t2 : STD_LOGIC;
SIGNAL t3 : STD_LOGIC;
SIGNAL t4 : STD_LOGIC;
SIGNAL t5 : STD_LOGIC;
SIGNAL t6 : STD_LOGIC;
SIGNAL t7 : STD_LOGIC;
COMPONENT metronome
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	t0 : BUFFER STD_LOGIC;
	t1 : BUFFER STD_LOGIC;
	t2 : BUFFER STD_LOGIC;
	t3 : BUFFER STD_LOGIC;
	t4 : BUFFER STD_LOGIC;
	t5 : BUFFER STD_LOGIC;
	t6 : BUFFER STD_LOGIC;
	t7 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : metronome
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	t0 => t0,
	t1 => t1,
	t2 => t2,
	t3 => t3,
	t4 => t4,
	t5 => t5,
	t6 => t6,
	t7 => t7
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
	WAIT FOR 40000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
END metronome_arch;
