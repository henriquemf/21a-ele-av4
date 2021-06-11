library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity elevador is
  port (
    M, F1, F2, F3 : in  std_logic;
    ABRIR, TRAVA : out std_logic );
end entity;

architecture  rtl OF elevador IS

begin

  TRAVA <= M;
  ABRIR <= (not M) and (F1 xor F2 xor F3); --xor, uma vez que não é conveniente um elevador estar
                                          -- em dois andares ao mesmo tempo, lei básica da física

end architecture;
