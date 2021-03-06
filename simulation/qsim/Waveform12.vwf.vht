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
-- Generated on "07/10/2018 21:45:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL accD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en_Add : STD_LOGIC;
SIGNAL en_And : STD_LOGIC;
SIGNAL en_D : STD_LOGIC;
SIGNAL en_NEG : STD_LOGIC;
SIGNAL en_Not : STD_LOGIC;
SIGNAL en_Or : STD_LOGIC;
SIGNAL en_Sub : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT alu
	PORT (
	accD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	dBus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	en_Add : IN STD_LOGIC;
	en_And : IN STD_LOGIC;
	en_D : IN STD_LOGIC;
	en_NEG : IN STD_LOGIC;
	en_Not : IN STD_LOGIC;
	en_Or : IN STD_LOGIC;
	en_Sub : IN STD_LOGIC;
	q : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	accD => accD,
	clk => clk,
	dBus => dBus,
	en_Add => en_Add,
	en_And => en_And,
	en_D => en_D,
	en_NEG => en_NEG,
	en_Not => en_Not,
	en_Or => en_Or,
	en_Sub => en_Sub,
	q => q
	);
-- accD[7]
t_prcs_accD_7: PROCESS
BEGIN
	accD(7) <= '0';
WAIT;
END PROCESS t_prcs_accD_7;
-- accD[6]
t_prcs_accD_6: PROCESS
BEGIN
	accD(6) <= '0';
WAIT;
END PROCESS t_prcs_accD_6;
-- accD[5]
t_prcs_accD_5: PROCESS
BEGIN
	accD(5) <= '0';
WAIT;
END PROCESS t_prcs_accD_5;
-- accD[4]
t_prcs_accD_4: PROCESS
BEGIN
	accD(4) <= '0';
WAIT;
END PROCESS t_prcs_accD_4;
-- accD[3]
t_prcs_accD_3: PROCESS
BEGIN
	accD(3) <= '0';
WAIT;
END PROCESS t_prcs_accD_3;
-- accD[2]
t_prcs_accD_2: PROCESS
BEGIN
	accD(2) <= '1';
WAIT;
END PROCESS t_prcs_accD_2;
-- accD[1]
t_prcs_accD_1: PROCESS
BEGIN
	accD(1) <= '1';
WAIT;
END PROCESS t_prcs_accD_1;
-- accD[0]
t_prcs_accD_0: PROCESS
BEGIN
	accD(0) <= '1';
WAIT;
END PROCESS t_prcs_accD_0;

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
-- dBus[7]
t_prcs_dBus_7: PROCESS
BEGIN
	dBus(7) <= '0';
WAIT;
END PROCESS t_prcs_dBus_7;
-- dBus[6]
t_prcs_dBus_6: PROCESS
BEGIN
	dBus(6) <= '0';
WAIT;
END PROCESS t_prcs_dBus_6;
-- dBus[5]
t_prcs_dBus_5: PROCESS
BEGIN
	dBus(5) <= '0';
WAIT;
END PROCESS t_prcs_dBus_5;
-- dBus[4]
t_prcs_dBus_4: PROCESS
BEGIN
	dBus(4) <= '0';
WAIT;
END PROCESS t_prcs_dBus_4;
-- dBus[3]
t_prcs_dBus_3: PROCESS
BEGIN
	dBus(3) <= '1';
WAIT;
END PROCESS t_prcs_dBus_3;
-- dBus[2]
t_prcs_dBus_2: PROCESS
BEGIN
	dBus(2) <= '1';
WAIT;
END PROCESS t_prcs_dBus_2;
-- dBus[1]
t_prcs_dBus_1: PROCESS
BEGIN
	dBus(1) <= '0';
WAIT;
END PROCESS t_prcs_dBus_1;
-- dBus[0]
t_prcs_dBus_0: PROCESS
BEGIN
	dBus(0) <= '1';
WAIT;
END PROCESS t_prcs_dBus_0;

-- en_Add
t_prcs_en_Add: PROCESS
BEGIN
	en_Add <= '0';
WAIT;
END PROCESS t_prcs_en_Add;

-- en_And
t_prcs_en_And: PROCESS
BEGIN
	en_And <= '1';
WAIT;
END PROCESS t_prcs_en_And;

-- en_D
t_prcs_en_D: PROCESS
BEGIN
	en_D <= '1';
WAIT;
END PROCESS t_prcs_en_D;

-- en_NEG
t_prcs_en_NEG: PROCESS
BEGIN
	en_NEG <= '0';
WAIT;
END PROCESS t_prcs_en_NEG;

-- en_Not
t_prcs_en_Not: PROCESS
BEGIN
	en_Not <= '0';
WAIT;
END PROCESS t_prcs_en_Not;

-- en_Or
t_prcs_en_Or: PROCESS
BEGIN
	en_Or <= '0';
WAIT;
END PROCESS t_prcs_en_Or;

-- en_Sub
t_prcs_en_Sub: PROCESS
BEGIN
	en_Sub <= '0';
WAIT;
END PROCESS t_prcs_en_Sub;
END alu_arch;
