-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity aesMealy_4 is
  port(s_i1      : in signed(7 downto 0);
       ds_i2     : in unsigned(0 downto 0);
       bodyVar_o : out product0);
end;

architecture structural of aesMealy_4 is
  signal repANF_0 : signed(7 downto 0);
  signal y_1      : signed(7 downto 0);
begin
  repANF_0 <= s_i1 + signed'("00000001");
  
  y_1 <= repANF_0 + signed'("00000001");
  
  bodyVar_o <= (product0_sel0 => y_1
               ,product0_sel1 => y_1);
end;
