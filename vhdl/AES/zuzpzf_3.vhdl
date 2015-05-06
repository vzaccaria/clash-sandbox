-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity zuzpzf_3 is
  port(ds_i1          : in product0;
       eta_i2         : in unsigned(0 downto 0);
       system1000     : in std_logic;
       system1000_rst : in std_logic;
       topLet_o       : out product0);
end;

architecture structural of zuzpzf_3 is
  signal repANF_0 : array_of_unsigned_8(0 to 15);
  signal szm_1    : array_of_unsigned_8(0 to 15);
  signal tmp_2    : array_of_unsigned_8(0 to 15);
begin
  register_n_19 : block
    signal n_20 : array_of_unsigned_8(0 to 15);
    signal n_21 : array_of_unsigned_8(0 to 15);
  begin
    n_20 <= array_of_unsigned_8'(unsigned'("00000001"),unsigned'("00000010"),unsigned'("00000011"),unsigned'("00000100"),unsigned'("00000001"),unsigned'("00000010"),unsigned'("00000011"),unsigned'("00000100"),unsigned'("00000001"),unsigned'("00000010"),unsigned'("00000011"),unsigned'("00000100"),unsigned'("00000001"),unsigned'("00000010"),unsigned'("00000011"),unsigned'("00000100"));
  
    process(system1000,system1000_rst,n_20)
    begin
      if system1000_rst = '0' then
        n_21 <= n_20;
      elsif rising_edge(system1000) then
        n_21 <= szm_1;
      end if;
    end process;
  
    tmp_2 <= n_21;
  end block;
  
  repANF_0 <= tmp_2;
  
  szm_1 <= ds_i1.product0_sel0;
  
  aesMealy_4_topLet_o : entity aesMealy_4
    port map
      (bodyVar_o => topLet_o
      ,s_i1      => repANF_0
      ,ds_i2     => eta_i2);
end;
