library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tabelaVerdade is
  port (
    A,B,C,D    : in  std_logic;
    S0, S1     : out std_logic);
end entity;

architecture  rtl OF tabelaVerdade IS

begin

  S1 <= A and (not B);
  S0 <= A and ((not B) and (not C) or (B and C));

end architecture;
