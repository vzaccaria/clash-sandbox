-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity BundleZ2T1_2 is
  port(eta_i1   : in product0;
       topLet_o : out product0);
end;

architecture structural of BundleZ2T1_2 is
  signal repANF_0 : array_of_unsigned_8(0 to 15);
  signal repANF_1 : array_of_unsigned_8(0 to 15);
  signal x_2      : array_of_unsigned_8(0 to 15);
  signal y_3      : array_of_unsigned_8(0 to 15);
begin
  repANF_0 <= x_2;
  
  repANF_1 <= y_3;
  
  x_2 <= eta_i1.product0_sel0;
  
  y_3 <= eta_i1.product0_sel1;
  
  topLet_o <= (product0_sel0 => repANF_0
              ,product0_sel1 => repANF_1);
end;
