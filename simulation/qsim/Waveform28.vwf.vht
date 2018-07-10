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
-- Generated on "07/10/2018 00:18:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controller_vhd_vec_tst IS
END controller_vhd_vec_tst;
ARCHITECTURE controller_arch OF controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr_ME : STD_LOGIC;
SIGNAL clr_PC : STD_LOGIC;
SIGNAL data_num : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL en_ACC : STD_LOGIC;
SIGNAL en_AR : STD_LOGIC;
SIGNAL en_DR : STD_LOGIC;
SIGNAL en_IR : STD_LOGIC;
SIGNAL en_PC : STD_LOGIC;
SIGNAL i_ADD : STD_LOGIC;
SIGNAL i_AND : STD_LOGIC;
SIGNAL i_HALT : STD_LOGIC;
SIGNAL i_LOAD : STD_LOGIC;
SIGNAL i_NEG : STD_LOGIC;
SIGNAL i_NOT : STD_LOGIC;
SIGNAL i_OR : STD_LOGIC;
SIGNAL i_STORE : STD_LOGIC;
SIGNAL i_SUB : STD_LOGIC;
SIGNAL t0 : STD_LOGIC;
SIGNAL t1 : STD_LOGIC;
SIGNAL t2 : STD_LOGIC;
SIGNAL t3 : STD_LOGIC;
SIGNAL t4 : STD_LOGIC;
SIGNAL t5 : STD_LOGIC;
SIGNAL t6 : STD_LOGIC;
SIGNAL t7 : STD_LOGIC;
SIGNAL test_RESULT : STD_LOGIC;
SIGNAL w_RAM : STD_LOGIC;
COMPONENT controller
	PORT (
	clk : IN STD_LOGIC;
	clr_ME : BUFFER STD_LOGIC;
	clr_PC : BUFFER STD_LOGIC;
	data_num : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	en_ACC : BUFFER STD_LOGIC;
	en_AR : BUFFER STD_LOGIC;
	en_DR : BUFFER STD_LOGIC;
	en_IR : BUFFER STD_LOGIC;
	en_PC : BUFFER STD_LOGIC;
	i_ADD : IN STD_LOGIC;
	i_AND : IN STD_LOGIC;
	i_HALT : IN STD_LOGIC;
	i_LOAD : IN STD_LOGIC;
	i_NEG : IN STD_LOGIC;
	i_NOT : IN STD_LOGIC;
	i_OR : IN STD_LOGIC;
	i_STORE : IN STD_LOGIC;
	i_SUB : IN STD_LOGIC;
	t0 : IN STD_LOGIC;
	t1 : IN STD_LOGIC;
	t2 : IN STD_LOGIC;
	t3 : IN STD_LOGIC;
	t4 : IN STD_LOGIC;
	t5 : IN STD_LOGIC;
	t6 : IN STD_LOGIC;
	t7 : IN STD_LOGIC;
	test_RESULT : BUFFER STD_LOGIC;
	w_RAM : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controller
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr_ME => clr_ME,
	clr_PC => clr_PC,
	data_num => data_num,
	en_ACC => en_ACC,
	en_AR => en_AR,
	en_DR => en_DR,
	en_IR => en_IR,
	en_PC => en_PC,
	i_ADD => i_ADD,
	i_AND => i_AND,
	i_HALT => i_HALT,
	i_LOAD => i_LOAD,
	i_NEG => i_NEG,
	i_NOT => i_NOT,
	i_OR => i_OR,
	i_STORE => i_STORE,
	i_SUB => i_SUB,
	t0 => t0,
	t1 => t1,
	t2 => t2,
	t3 => t3,
	t4 => t4,
	t5 => t5,
	t6 => t6,
	t7 => t7,
	test_RESULT => test_RESULT,
	w_RAM => w_RAM
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
-- data_num[3]
t_prcs_data_num_3: PROCESS
BEGIN
	data_num(3) <= '0';
WAIT;
END PROCESS t_prcs_data_num_3;
-- data_num[2]
t_prcs_data_num_2: PROCESS
BEGIN
	data_num(2) <= '0';
WAIT;
END PROCESS t_prcs_data_num_2;
-- data_num[1]
t_prcs_data_num_1: PROCESS
BEGIN
	data_num(1) <= '0';
WAIT;
END PROCESS t_prcs_data_num_1;
-- data_num[0]
t_prcs_data_num_0: PROCESS
BEGIN
	data_num(0) <= '0';
WAIT;
END PROCESS t_prcs_data_num_0;

-- i_ADD
t_prcs_i_ADD: PROCESS
BEGIN
	i_ADD <= '0';
WAIT;
END PROCESS t_prcs_i_ADD;

-- i_AND
t_prcs_i_AND: PROCESS
BEGIN
	i_AND <= '0';
WAIT;
END PROCESS t_prcs_i_AND;

-- i_HALT
t_prcs_i_HALT: PROCESS
BEGIN
	i_HALT <= '0';
WAIT;
END PROCESS t_prcs_i_HALT;

-- i_LOAD
t_prcs_i_LOAD: PROCESS
BEGIN
	i_LOAD <= '0';
WAIT;
END PROCESS t_prcs_i_LOAD;

-- i_NEG
t_prcs_i_NEG: PROCESS
BEGIN
	i_NEG <= '0';
WAIT;
END PROCESS t_prcs_i_NEG;

-- i_NOT
t_prcs_i_NOT: PROCESS
BEGIN
	i_NOT <= '0';
WAIT;
END PROCESS t_prcs_i_NOT;

-- i_OR
t_prcs_i_OR: PROCESS
BEGIN
	i_OR <= '0';
WAIT;
END PROCESS t_prcs_i_OR;

-- i_STORE
t_prcs_i_STORE: PROCESS
BEGIN
	i_STORE <= '0';
WAIT;
END PROCESS t_prcs_i_STORE;

-- i_SUB
t_prcs_i_SUB: PROCESS
BEGIN
	i_SUB <= '0';
WAIT;
END PROCESS t_prcs_i_SUB;

-- t0
t_prcs_t0: PROCESS
BEGIN
	t0 <= '0';
WAIT;
END PROCESS t_prcs_t0;

-- t1
t_prcs_t1: PROCESS
BEGIN
	t1 <= '0';
WAIT;
END PROCESS t_prcs_t1;

-- t2
t_prcs_t2: PROCESS
BEGIN
	t2 <= '0';
WAIT;
END PROCESS t_prcs_t2;

-- t3
t_prcs_t3: PROCESS
BEGIN
	t3 <= '0';
WAIT;
END PROCESS t_prcs_t3;

-- t4
t_prcs_t4: PROCESS
BEGIN
	t4 <= '0';
WAIT;
END PROCESS t_prcs_t4;

-- t5
t_prcs_t5: PROCESS
BEGIN
	t5 <= '0';
WAIT;
END PROCESS t_prcs_t5;

-- t6
t_prcs_t6: PROCESS
BEGIN
	t6 <= '0';
WAIT;
END PROCESS t_prcs_t6;

-- t7
t_prcs_t7: PROCESS
BEGIN
	t7 <= '0';
WAIT;
END PROCESS t_prcs_t7;
END controller_arch;
