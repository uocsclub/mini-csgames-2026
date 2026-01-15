LIBRARY ieee;
use ieee.std_logic_1164.ALL;

-- Challenge 2
-- Compute the odd parity of an n sized input
-- Odd parity sets the parity high if there are an odd number of 1s in the input data

-- IMPORTANT
-- This challenge must be completed either behaviourally or stucturally
-- VHDL 2008 reduction operators are banned

entity challenge2 is
    generic  ( BITS : integer );
    port (
        input: in std_logic_vector(BITS downto 0);
        output: out std_logic
    );
end entity challenge2;

architecture rtl of challenge2 is

-- Signals defined here

begin

-- Circuit defined here

end architecture rtl;

-- TEST SECTION
LIBRARY ieee;
use ieee.std_logic_1164.ALL;

entity challenge2_sim is end entity;

architecture rtl of challenge2_sim is
    component challenge2 is
        generic  ( BITS : integer );
        port (
            input: in std_logic_vector(BITS downto 0);
            output: out std_logic
        );
    end component;

    signal i: std_logic_vector(7 downto 0);
    signal o: std_logic;
begin
    t: challenge2 
        generic  map ( BITS => 7)
        port map (
            input => i,
            output => o
        );

    process 
    begin

        i <= "10001000";
        wait for 1 ps;
        assert o = '0';

        i <= "10011010";
        wait for 1 ps;
        assert o = '0';

        i <= "10010010";
        wait for 1 ps;
        assert o = '1';

        i <= "11010110";
        wait for 1 ps;
        assert o = '1';

        i <= "11010000";
        wait for 1 ps;
        assert o = '1';

        i <= "00000000";
        wait for 1 ps;
        assert o = '0';

        i <= "11111111";
        wait for 1 ps;
        assert o = '0';

    WAIT;
    end process;

end architecture rtl;

