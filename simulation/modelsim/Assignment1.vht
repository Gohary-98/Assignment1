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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/04/2019 17:10:53"
                                                            
-- Vhdl Test Bench template for design  :  Assignment1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Assignment1_vhd_tst IS
END Assignment1_vhd_tst;
ARCHITECTURE Assignment1_arch OF Assignment1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL pause : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Assignment1
	PORT (
	clk : IN STD_LOGIC;
	pause : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	sg1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sg2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Assignment1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	pause => pause,
	reset => reset,
	sg1 => sg1,
	sg2 => sg2
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Assignment1_arch;
