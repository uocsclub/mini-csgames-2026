LIBRARY ieee;
use ieee.std_logic_1164.ALL;

-- Challenge 3
-- Output the nth fibbonacci number based on the binary value of the input
-- The output must also be in binary
-- fib(0) is UB and will not be tested, the inputs are 1 indexed

-- IMPORTANT
-- This challenge can be completed either behaviourally or stucturally

entity challenge3 is
    port (
        input: in std_logic_vector(3 downto 0);
        output: out std_logic_vector(9 downto 0)
    );
end entity challenge3;

architecture rtl of challenge3 is

-- Signals defined here

begin

-- Circuit defined here

end architecture rtl;

-- TEST SECTION
LIBRARY ieee;
use ieee.std_logic_1164.ALL;

entity challenge3_sim is end entity;

architecture rtl of challenge3_sim is
    component challenge3 is
    port (
        input: in std_logic_vector(3 downto 0);
        output: out std_logic_vector(9 downto 0)
    );
    end component;

    signal i: std_logic_vector(3 downto 0);
    signal o: std_logic_vector(9 downto 0);
begin
    t: challenge3 
        port map (
        input => i,
        output => o
        );

    process 
    begin

        i <= "0010"; -- 2
        wait for 1 ps;
        assert o = "0000000001"; -- 1

        i <= "0110"; -- 6
        wait for 1 ps;
        assert o = "0000001000"; -- 8

        i <= "1011"; -- 11
        wait for 1 ps;
        assert o = "0001011001"; -- 89

        i <= "1110"; -- 14
        wait for 1 ps;
        assert o = "0101111001"; -- 377

        i <= "1111"; -- 15
        wait for 1 ps;
        assert o = "1001100010"; -- 610

    WAIT;
    end process;

end architecture rtl;

