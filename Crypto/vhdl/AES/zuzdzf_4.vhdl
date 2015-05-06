-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity zuzdzf_4 is
  port(eta_i1   : in array_of_unsigned_32(0 to 3);
       eta_i2   : in unsigned(0 downto 0);
       topLet_o : out product0);
end;

architecture structural of zuzdzf_4 is
begin
  topLet_o <= (product0_sel0 => array_of_unsigned_32'(unsigned'("00000000000000000000000000000000")
                                                     ,unsigned'("00000000000000000000000000000000")
                                                     ,unsigned'("00000000000000000000000000000000")
                                                     ,unsigned'("00000000000000000000000000000000"))
              ,product0_sel1 => array_of_unsigned_32'(unsigned'("00000000000000000000000000000000")
                                                     ,unsigned'("00000000000000000000000000000000")
                                                     ,unsigned'("00000000000000000000000000000000")
                                                     ,unsigned'("00000000000000000000000000000000")));
end;
