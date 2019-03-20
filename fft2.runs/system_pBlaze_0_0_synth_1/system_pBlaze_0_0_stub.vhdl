-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Feb 11 02:14:02 2019
-- Host        : LAPTOP-N4P8E4G3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_pBlaze_0_0_stub.vhdl
-- Design      : system_pBlaze_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    uart_top_tx : out STD_LOGIC;
    uart_top_rx : in STD_LOGIC;
    external_mem_ena : out STD_LOGIC;
    external_mem_wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    external_mem_addra : out STD_LOGIC_VECTOR ( 11 downto 0 );
    external_mem_dina : out STD_LOGIC_VECTOR ( 7 downto 0 );
    external_mem_douta : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_enable : out STD_LOGIC;
    irqs : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_in,uart_top_tx,uart_top_rx,external_mem_ena,external_mem_wea[0:0],external_mem_addra[11:0],external_mem_dina[7:0],external_mem_douta[7:0],address[11:0],instruction[17:0],bram_enable,irqs[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pBlaze,Vivado 2018.3";
begin
end;
