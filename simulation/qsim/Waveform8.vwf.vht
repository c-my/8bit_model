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
-- Generated on "07/13/2018 20:18:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ar
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ar_vhd_vec_tst IS
END ar_vhd_vec_tst;
ARCHITECTURE ar_arch OF ar_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL en_D : STD_LOGIC;
COMPONENT ar
	PORT (
	addr_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	en_D : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ar
	PORT MAP (
-- list connections between master ports and signals
	addr_in => addr_in,
	addr_out => addr_out,
	clk => clk,
	en_D => en_D
	);
-- addr_in[7]
t_prcs_addr_in_7: PROCESS
BEGIN
	addr_in(7) <= '0';
WAIT;
END PROCESS t_prcs_addr_in_7;
-- addr_in[6]
t_prcs_addr_in_6: PROCESS
BEGIN
	addr_in(6) <= '0';
WAIT;
END PROCESS t_prcs_addr_in_6;
-- addr_in[5]
t_prcs_addr_in_5: PROCESS
BEGIN
	addr_in(5) <= '0';
	WAIT FOR 640000 ps;
	addr_in(5) <= '1';
WAIT;
END PROCESS t_prcs_addr_in_5;
-- addr_in[4]
t_prcs_addr_in_4: PROCESS
BEGIN
	addr_in(4) <= '0';
	WAIT FOR 320000 ps;
	addr_in(4) <= '1';
	WAIT FOR 320000 ps;
	addr_in(4) <= '0';
	WAIT FOR 320000 ps;
	addr_in(4) <= '1';
WAIT;
END PROCESS t_prcs_addr_in_4;
-- addr_in[3]
t_prcs_addr_in_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		addr_in(3) <= '0';
		WAIT FOR 160000 ps;
		addr_in(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	addr_in(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_in_3;
-- addr_in[2]
t_prcs_addr_in_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		addr_in(2) <= '0';
		WAIT FOR 80000 ps;
		addr_in(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	addr_in(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_in_2;
-- addr_in[1]
t_prcs_addr_in_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		addr_in(1) <= '0';
		WAIT FOR 40000 ps;
		addr_in(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	addr_in(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_in_1;
-- addr_in[0]
t_prcs_addr_in_0: PROCESS
BEGIN
LOOP
	addr_in(0) <= '0';
	WAIT FOR 20000 ps;
	addr_in(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_addr_in_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en_D
t_prcs_en_D: PROCESS
BEGIN
	en_D <= '0';
	WAIT FOR 30000 ps;
	en_D <= '1';
WAIT;
END PROCESS t_prcs_en_D;
END ar_arch;
