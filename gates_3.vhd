-- File: gates_3.vhd
-- Includes: 3 Input Gates such as AND3 and OR3

-- AND3, 3 input AND gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND3 is
  port (  i1, i2, i3 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3
          o : out STD_LOGIC); -- o = Output
end AND3;

architecture AND3_EQ of AND3 is
  -- Includes component AND2 to simplify logic
  component AND2 is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signals
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 & i2
  A1: AND2 port map(i1,i2,tempo);
  -- o = i3 & tempo (or o = i1 & i2 & i3)
  A2: AND2 port map(i3,tempo,o);
end AND3_EQ;


-- OR3, 3 input OR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR3 is
  port (  i1, i2, i3 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3
          o : out STD_LOGIC); -- o = Output
end OR3;

architecture OR3_EQ of OR3 is
  -- Includes component OR2 to simplify logic
  component OR2 is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/variable
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 || i2
  A1: OR2 port map(i1,i2,tempo);
  -- o = i3 || tempo (or o = i1 || i2 || i3)
  A2: OR2 port map(i3,tempo,o);
end OR3_EQ;
