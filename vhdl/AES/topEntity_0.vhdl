-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity topEntity_0 is
  port(eta_i1         : in unsigned(0 downto 0);
       system1000     : in std_logic;
       system1000_rst : in std_logic;
       topLet_o       : out array_of_unsigned_8(0 to 15));
end;

architecture structural of topEntity_0 is
begin
  mealyzm_1_topLet_o : entity mealyzm_1
    port map
      (bodyVar_o      => topLet_o
      ,system1000     => system1000
      ,system1000_rst => system1000_rst
      ,eta_i1         => eta_i1);
end;
