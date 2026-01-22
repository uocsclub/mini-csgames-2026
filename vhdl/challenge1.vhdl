LIBRARY ieee;
use ieee.std_logic_1164.ALL;

-- Challenge 1
-- Implement a 4bit bus multiplexer. 
-- You have two select bits. Their value in binary is the bus you are selecting.
-- See simulation if this is ambiguous

-- IMPORTANT
-- This challenge can be completed either behaviourally or stucturally

entity challenge1 is
    port (
        input0: in std_logic_vector(3 downto 0);
        input1: in std_logic_vector(3 downto 0);
        input2: in std_logic_vector(3 downto 0);
        input3: in std_logic_vector(3 downto 0);
        sel: in std_logic_vector(1 downto 0);
        output: out std_logic_vector(3 downto 0)
    );
end entity challenge1;

architecture rtl of challenge1 is

-- Signals defined here

begin

-- Circuit defined here

end architecture rtl;

-- TEST SECTION
LIBRARY ieee;
use ieee.std_logic_1164.ALL;

entity challenge1_sim is end entity;

architecture rtl of challenge1_sim is
    component challenge1 is
        port (
                input0: in std_logic_vector(3 downto 0);
                input1: in std_logic_vector(3 downto 0);
                input2: in std_logic_vector(3 downto 0);
                input3: in std_logic_vector(3 downto 0);
                sel: in std_logic_vector(1 downto 0);
                output: out std_logic_vector(3 downto 0)
             );
    end component;

    signal i0: std_logic_vector(3 downto 0);
    signal i1: std_logic_vector(3 downto 0);
    signal i2: std_logic_vector(3 downto 0);
    signal i3: std_logic_vector(3 downto 0);
    signal s: std_logic_vector(1 downto 0);
    signal o: std_logic_vector(3 downto 0);
begin
    t: challenge1 
        port map (
                input0 => i0,
                input1 => i1,
                input2 => i2,
                input3 => i3,
                sel => s,
                output => o
             );

    process 
    begin
        i0 <= "1010";
        i1 <= "0001";
        i2 <= "1111";
        i3 <= "1100";

        s <= "00";
        wait for 1 ps;
        assert o = i0;

        s <= "01";
        wait for 1 ps;
        assert o = i1;

        s <= "10";
        wait for 1 ps;
        assert o = i2;

        s <= "11";
        wait for 1 ps;
        assert o = i3;

    WAIT;
    end process;

end architecture rtl;

