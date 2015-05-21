-- Automatically generated VHDL
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use work.all;
use work.types.all;

entity aesMealy_4 is
  port(s_i1      : in array_of_unsigned_8(0 to 15);
       ds_i2     : in unsigned(0 downto 0);
       bodyVar_o : out product0);
end;

architecture structural of aesMealy_4 is
  signal repANF_0 : array_of_unsigned_8(0 to 15);
  signal szm_1    : array_of_unsigned_8(0 to 15);
  signal tmp_2    : array_of_unsigned_8(0 to 15);
begin
  shift1_5_repANF_0 : entity shift1_5
    port map
      (topLet_o => repANF_0
      ,i_i1     => s_i1);
  
  map_n_4 : block
    signal n_5 : array_of_unsigned_8(0 to 15);
  begin
    n_5 <= repANF_0;
  
    mapZ_n_6 : if tmp_2'length = 0 generate
      tmp_2 <= (others => (others => 'X'));
    end generate;
  
    mapSN_n_7 : if tmp_2'length /= 0 generate
      mapIter_n_8 : for n_9 in tmp_2'range generate
      begin
        sbox_6_3 : entity sbox_6
  port map
  (topLet_o => tmp_2(n_9)
  ,ds_i1 => n_5(n_9));
      end generate;
    end generate;
  end block;
  
  szm_1 <= tmp_2;
  
  bodyVar_o <= (product0_sel0 => szm_1
               ,product0_sel1 => szm_1);
end;
