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
-- Generated on "07/10/2018 22:53:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ir
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ir_vhd_vec_tst IS
END ir_vhd_vec_tst;
ARCHITECTURE ir_arch OF ir_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DATA_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL en_D : STD_LOGIC;
SIGNAL o_ADD : STD_LOGIC;
SIGNAL o_AND : STD_LOGIC;
SIGNAL o_HALT : STD_LOGIC;
SIGNAL o_LOAD : STD_LOGIC;
SIGNAL o_NEG : STD_LOGIC;
SIGNAL o_NOT : STD_LOGIC;
SIGNAL o_OR : STD_LOGIC;
SIGNAL o_STORE : STD_LOGIC;
SIGNAL o_SUB : STD_LOGIC;
COMPONENT ir
	PORT (
	clk : IN STD_LOGIC;
	DATA_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DATA_OUT : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	en_D : IN STD_LOGIC;
	o_ADD : BUFFER STD_LOGIC;
	o_AND : BUFFER STD_LOGIC;
	o_HALT : BUFFER STD_LOGIC;
	o_LOAD : BUFFER STD_LOGIC;
	o_NEG : BUFFER STD_LOGIC;
	o_NOT : BUFFER STD_LOGIC;
	o_OR : BUFFER STD_LOGIC;
	o_STORE : BUFFER STD_LOGIC;
	o_SUB : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ir
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DATA_IN => DATA_IN,
	DATA_OUT => DATA_OUT,
	en_D => en_D,
	o_ADD => o_ADD,
	o_AND => o_AND,
	o_HALT => o_HALT,
	o_LOAD => o_LOAD,
	o_NEG => o_NEG,
	o_NOT => o_NOT,
	o_OR => o_OR,
	o_STORE => o_STORE,
	o_SUB => o_SUB
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
-- DATA_IN[7]
t_prcs_DATA_IN_7: PROCESS
BEGIN
	DATA_IN(7) <= '1';
	WAIT FOR 80000 ps;
	DATA_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_7;
-- DATA_IN[6]
t_prcs_DATA_IN_6: PROCESS
BEGIN
	DATA_IN(6) <= '0';
	WAIT FOR 240000 ps;
	DATA_IN(6) <= '1';
	WAIT FOR 90000 ps;
	DATA_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_6;
-- DATA_IN[5]
t_prcs_DATA_IN_5: PROCESS
BEGIN
	DATA_IN(5) <= '0';
	WAIT FOR 80000 ps;
	DATA_IN(5) <= '1';
	WAIT FOR 160000 ps;
	DATA_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_5;
-- DATA_IN[4]
t_prcs_DATA_IN_4: PROCESS
BEGIN
	DATA_IN(4) <= '0';
	WAIT FOR 170000 ps;
	DATA_IN(4) <= '1';
	WAIT FOR 160000 ps;
	DATA_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_4;
-- DATA_IN[3]
t_prcs_DATA_IN_3: PROCESS
BEGIN
	DATA_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_3;
-- DATA_IN[2]
t_prcs_DATA_IN_2: PROCESS
BEGIN
	DATA_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_2;
-- DATA_IN[1]
t_prcs_DATA_IN_1: PROCESS
BEGIN
	DATA_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_1;
-- DATA_IN[0]
t_prcs_DATA_IN_0: PROCESS
BEGIN
	DATA_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_0;

-- en_D
t_prcs_en_D: PROCESS
BEGIN
	en_D <= '1';
WAIT;
END PROCESS t_prcs_en_D;
END ir_arch;
