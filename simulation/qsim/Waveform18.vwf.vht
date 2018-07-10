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
-- Generated on "07/10/2018 23:04:59"
                                                             
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
SIGNAL accD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu_ADD : STD_LOGIC;
SIGNAL ALU_AND : STD_LOGIC;
SIGNAL ALU_NEG : STD_LOGIC;
SIGNAL ALU_NOT : STD_LOGIC;
SIGNAL ALU_OR : STD_LOGIC;
SIGNAL alu_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_SUB : STD_LOGIC;
SIGNAL ar_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dr_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ir_ADD : STD_LOGIC;
SIGNAL ir_AND : STD_LOGIC;
SIGNAL ir_LOAD : STD_LOGIC;
SIGNAL ir_SUB : STD_LOGIC;
SIGNAL pc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ram0_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL t0 : STD_LOGIC;
SIGNAL t1 : STD_LOGIC;
SIGNAL t2 : STD_LOGIC;
SIGNAL t3 : STD_LOGIC;
SIGNAL t4 : STD_LOGIC;
SIGNAL test_res : STD_LOGIC;
COMPONENT eight_bit_model
	PORT (
	acc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	accD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	alu_ADD : OUT STD_LOGIC;
	ALU_AND : OUT STD_LOGIC;
	ALU_NEG : OUT STD_LOGIC;
	ALU_NOT : OUT STD_LOGIC;
	ALU_OR : OUT STD_LOGIC;
	alu_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_SUB : OUT STD_LOGIC;
	ar_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	dBus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dr_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ir_ADD : OUT STD_LOGIC;
	ir_AND : OUT STD_LOGIC;
	ir_LOAD : OUT STD_LOGIC;
	ir_SUB : OUT STD_LOGIC;
	pc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ram0_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	t0 : OUT STD_LOGIC;
	t1 : OUT STD_LOGIC;
	t2 : OUT STD_LOGIC;
	t3 : OUT STD_LOGIC;
	t4 : OUT STD_LOGIC;
	test_res : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : eight_bit_model
	PORT MAP (
-- list connections between master ports and signals
	acc_out => acc_out,
	accD => accD,
	alu_ADD => alu_ADD,
	ALU_AND => ALU_AND,
	ALU_NEG => ALU_NEG,
	ALU_NOT => ALU_NOT,
	ALU_OR => ALU_OR,
	alu_out => alu_out,
	ALU_SUB => ALU_SUB,
	ar_out => ar_out,
	clk => clk,
	dBus => dBus,
	dr_out => dr_out,
	ir_ADD => ir_ADD,
	ir_AND => ir_AND,
	ir_LOAD => ir_LOAD,
	ir_SUB => ir_SUB,
	pc_out => pc_out,
	ram0_out => ram0_out,
	t0 => t0,
	t1 => t1,
	t2 => t2,
	t3 => t3,
	t4 => t4,
	test_res => test_res
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
