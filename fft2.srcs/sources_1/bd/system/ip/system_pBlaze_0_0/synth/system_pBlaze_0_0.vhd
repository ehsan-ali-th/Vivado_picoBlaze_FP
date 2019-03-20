-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:pBlaze:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_pBlaze_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset_in : IN STD_LOGIC;
    uart_top_tx : OUT STD_LOGIC;
    uart_top_rx : IN STD_LOGIC;
    external_mem_ena : OUT STD_LOGIC;
    external_mem_wea : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    external_mem_addra : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    external_mem_dina : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    external_mem_douta : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    address : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    instruction : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    bram_enable : OUT STD_LOGIC;
    irqs : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END system_pBlaze_0_0;

ARCHITECTURE system_pBlaze_0_0_arch OF system_pBlaze_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_pBlaze_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pBlaze IS
    PORT (
      clk : IN STD_LOGIC;
      reset_in : IN STD_LOGIC;
      uart_top_tx : OUT STD_LOGIC;
      uart_top_rx : IN STD_LOGIC;
      external_mem_ena : OUT STD_LOGIC;
      external_mem_wea : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      external_mem_addra : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      external_mem_dina : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      external_mem_douta : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      address : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      instruction : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      bram_enable : OUT STD_LOGIC;
      irqs : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT pBlaze;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_pBlaze_0_0_arch: ARCHITECTURE IS "pBlaze,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_pBlaze_0_0_arch : ARCHITECTURE IS "system_pBlaze_0_0,pBlaze,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_pBlaze_0_0_arch: ARCHITECTURE IS "system_pBlaze_0_0,pBlaze,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pBlaze,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_pBlaze_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF irqs: SIGNAL IS "XIL_INTERFACENAME irqs, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF irqs: SIGNAL IS "xilinx.com:signal:interrupt:1.0 irqs INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_in: SIGNAL IS "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset_in: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_in RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_zynq_ultra_ps_e_0_0_pl_clk0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : pBlaze
    PORT MAP (
      clk => clk,
      reset_in => reset_in,
      uart_top_tx => uart_top_tx,
      uart_top_rx => uart_top_rx,
      external_mem_ena => external_mem_ena,
      external_mem_wea => external_mem_wea,
      external_mem_addra => external_mem_addra,
      external_mem_dina => external_mem_dina,
      external_mem_douta => external_mem_douta,
      address => address,
      instruction => instruction,
      bram_enable => bram_enable,
      irqs => irqs
    );
END system_pBlaze_0_0_arch;