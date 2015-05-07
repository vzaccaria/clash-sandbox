-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity id_6 is
  port(eta_i1   : in unsigned(7 downto 0);
       topLet_o : out unsigned(7 downto 0));
end;

architecture structural of id_6 is
begin
  topLet_o <= eta_i1;
end;
