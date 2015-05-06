-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity sbox_5 is
  port(ds_i1    : in unsigned(7 downto 0);
       topLet_o : out unsigned(7 downto 0));
end;

architecture structural of sbox_5 is
  signal subjLet_0 : boolean;
begin
  subjLet_0 <= ds_i1 = unsigned'("00000000");
  
  with (subjLet_0) select
    topLet_o <= unsigned'("01100011") when (true),
                (others => 'X') when others;
end;
