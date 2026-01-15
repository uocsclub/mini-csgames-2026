LIBRARY ieee;
use ieee.std_logic_1164.ALL;

-- Challenge 0
-- Input is labeled from A to G where A is 6 and G is 0
-- Output is labled H
-- Solve the following system of equations
-- H = (ABC' + D'AB(DE(AD' + B)E+E'F))((AB)''D')' + CF + B'G 

-- IMPORTANT
-- This challenge must be completed structurally (using only logic gates and no conditional statements). 
-- Rule of thumb: your solution should not contain the keyword "process"

entity challenge0 is
    port (
        input: in std_logic_vector(6 downto 0);
        output: out std_logic
    );
end entity challenge0;

architecture rtl of challenge0 is

-- Signals defined here

begin
    
-- Circuit defined here

end architecture rtl;

-- TEST SECTION
LIBRARY ieee;
use ieee.std_logic_1164.ALL;

entity challenge0_sim is end entity;

architecture rtl of challenge0_sim is
    component challenge0 is
        port (
                 input: in std_logic_vector(6 downto 0);
                 output: out std_logic
             );
    end component;

    signal i: std_logic_vector(6 downto 0);
    signal o: std_logic;
begin
    t: challenge0 
        port map (
                 input => i,
                 output => o
             );

    process 
    begin

        i <= "1010001";
        wait for 1 ps;
        assert o = '1';

        i <= "1010101";
        wait for 1 ps;
        assert o = '1';

        i <= "0110111";
        wait for 1 ps;
        assert o = '1';

        i <= "0110000";
        wait for 1 ps;
        assert o = '0';

        i <= "0001110";
        wait for 1 ps;
        assert o = '0';

        i <= "0000000";
        wait for 1 ps;
        assert o = '0';

        i <= "1111111";
        wait for 1 ps;
        assert o = '1';
    WAIT;
    end process;

end architecture rtl;

