LIBRARY ieee;
use ieee.std_logic_1164.ALL;

-- Challenge 4
-- Output the result of nth iteration conways game of life 
-- The input is in the form of a 4x4 matrix where 1s are live cells and 0s are dead cells
-- https://conways-gameoflife.com/conways-game-of-life-rules/

-- IMPORTANT
-- This challenge can be completed either behaviourally or stucturally
-- If you manage to do this structurally in time, you either cheated or are the goat

entity challenge4 is
    port (
    -- iteration
        n: in std_logic_vector(2 downto 0);
    -- inputs
        i0: in std_logic_vector(3 downto 0);
        i1: in std_logic_vector(3 downto 0);
        i2: in std_logic_vector(3 downto 0);
        i3: in std_logic_vector(3 downto 0);
    -- outputs
        o0: out std_logic_vector(3 downto 0); 
        o1: out std_logic_vector(3 downto 0);
        o2: out std_logic_vector(3 downto 0);
        o3: out std_logic_vector(3 downto 0)
    );
end entity challenge4;

architecture rtl of challenge4 is

-- Signals defined here

begin

-- Circuit defined here

end architecture rtl;

-- TEST SECTION
LIBRARY ieee;
use ieee.std_logic_1164.ALL;

entity challenge4_sim is end entity;

architecture rtl of challenge4_sim is
    component challenge4 is
    port (
    -- iteration
        n: in std_logic_vector(2 downto 0);
    -- inputs
        i0: in std_logic_vector(3 downto 0);
        i1: in std_logic_vector(3 downto 0);
        i2: in std_logic_vector(3 downto 0);
        i3: in std_logic_vector(3 downto 0);
    -- outputs
        o0: out std_logic_vector(3 downto 0); 
        o1: out std_logic_vector(3 downto 0);
        o2: out std_logic_vector(3 downto 0);
        o3: out std_logic_vector(3 downto 0)
    );
    end component;

    signal n:   std_logic_vector(2 downto 0);
    signal i0:  std_logic_vector(3 downto 0);
    signal i1:  std_logic_vector(3 downto 0);
    signal i2:  std_logic_vector(3 downto 0);
    signal i3:  std_logic_vector(3 downto 0);
    signal o0:  std_logic_vector(3 downto 0); 
    signal o1:  std_logic_vector(3 downto 0);
    signal o2:  std_logic_vector(3 downto 0);
    signal o3:  std_logic_vector(3 downto 0);

begin
    t: challenge4 
        port map (
                     n=>n,
                     i0=>i0,
                     i1=>i1,
                     i2=>i2,
                     i3=>i3,
                     o0=>o0,
                     o1=>o1,
                     o2=>o2,
                     o3=>o3
        );

    process 
    begin

        i0 <= "1000";
        i1 <= "0010";
        i2 <= "1000";
        i3 <= "0101";
        n <= "00";
        wait for 1 ps;
        assert o0 = "1000";
        assert o1 = "0010";
        assert o2 = "1000";
        assert o3 = "0101";

        n <= "10";
        wait for 1 ps;
        assert o0 = "0000";
        assert o1 = "0110";
        assert o2 = "0110";
        assert o3 = "0100";

        i0 <= "0010";
        i1 <= "0011";
        i2 <= "1000";
        i3 <= "0100";

        n <= "01";
        wait for 1 ps;
        assert o0 = "0011";
        assert o1 = "0111";
        assert o2 = "0110";
        assert o3 = "0000";

        n <= "10";
        wait for 1 ps;
        assert o0 = "0101";
        assert o1 = "0000";
        assert o2 = "0101";
        assert o3 = "0000";

        n <= "11";
        wait for 1 ps;
        assert o0 = "0000";
        assert o1 = "0000";
        assert o2 = "0000";
        assert o3 = "0000";

    WAIT;
    end process;

end architecture rtl;

