library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i4 : in STD_LOGIC;
           i5 : in STD_LOGIC;
           i6 : in STD_LOGIC;
           i7 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           y  : out STD_LOGIC);
end mux8;

architecture Behavioral of mux8 is

    -- Definirea unui semnal pentru concatenarea lui a1, a2 ?i a3
    signal select_signal : STD_LOGIC_VECTOR(2 downto 0);
    
begin

    select_signal <= a1 & a2 & a3;
    
    with select_signal select
        y <= i0 when "000",
             i1 when "001",
             i2 when "010",
             i3 when "011",
             i4 when "100",
             i5 when "101",
             i6 when "110",
             i7 when "111",
             '0' when others; 
    
end Behavioral;
