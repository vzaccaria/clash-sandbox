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
  signal repANF_0 : array_of_unsigned_32(0 to 3);
  signal repANF_1 : array_of_unsigned_32(0 to 3);
  signal szm_2    : array_of_unsigned_32(0 to 3);
  signal tmp_3    : array_of_unsigned_32(0 to 3);
begin
  register_n_8 : block
    signal n_9 : array_of_unsigned_32(0 to 3);
    signal n_10 : array_of_unsigned_32(0 to 3);
  begin
    n_9 <= array_of_unsigned_32'(unsigned'("00000000000000000000000000000000"),unsigned'("00000000000000000000000000000000"),unsigned'("00000000000000000000000000000000"),unsigned'("00000000000000000000000000000000"));
  
    process(system1000,system1000_rst,n_9)
    begin
      if system1000_rst = '0' then
        n_10 <= n_9;
      elsif rising_edge(system1000) then
        n_10 <= repANF_1;
      end if;
    end process;
  
    tmp_3 <= n_10;
  end block;
  
  repANF_0 <= tmp_3;
  
  repANF_1 <= szm_2;
  
  szm_2 <= ds_i1.product0_sel0;
  
  zuzdzf_4_topLet_o : entity zuzdzf_4
    port map
      (topLet_o => topLet_o
      ,eta_i1   => repANF_0
      ,eta_i2   => eta_i2);
end;
