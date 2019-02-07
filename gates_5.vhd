-- File: gates_5.vhd
-- Includes: 5 Input Gates such as AND5 and OR5

-- AND5, 5 input AND gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND5 is
  port (  i1, i2, i3, i4, i5: in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end AND5;

architecture AND5_EQ of AND5 is
  -- Includes component AND3 to simplify logic
  component AND3 is
    port (  i1,i2,i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 & i2 & i3
  A31: AND3 port map(i1,i2, i3, tempo);
  -- o = i4 & i5 & tempo (or o = i1 & i2 & i3 & i4 & i5)
  A32: AND3 port map(i4,i5, tempo, o);
end AND5_EQ;

-- equation model needed
-- OR5, 5 input OR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR5 is
  port (  i1, i2, i3, i4, i5: in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end OR5;

architecture OR5_EQ of OR5 is
  -- Includes component OR3 to simplify logic
  component OR3 is
    port (  i1,i2,i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 || i2 || i3
  O31: OR3 port map(i1,i2, i3, tempo);
  -- o = i4 || i5 || tempo (or o = i1 || i2 || i3 || i4 || i5)
  O32: OR3 port map(i4,i5, tempo, o);
end OR5_EQ;
