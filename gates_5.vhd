-- File: gates_5.vhd
-- Includes: 5 Input Gates such as AND5 and OR5

-- AND5, 5 input AND gate, Component Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND5_C is
  port (  i1, i2, i3, i4, i5: in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end AND5_C;

architecture AND5_C_EQ of AND5_C is
  -- Includes component AND3 to simplify logic
  component AND3_E is
    port (  i1,i2,i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 & i2 & i3
  A31: AND3_E port map(i1,i2, i3, tempo);
  -- o = i4 & i5 & tempo (or o = i1 & i2 & i3 & i4 & i5)
  A32: AND3_E port map(i4,i5, tempo, o);
end AND5_C_EQ;

-- AND5, 5 input AND gate, Equation Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND5_E is
  port (  i1, i2, i3, i4, i5: in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end AND5_E;

architecture AND5_E_EQ of AND5_E is
begin
  o <= (i1 AND i2 AND i3 AND i4 AND i5);
end AND5_E_EQ;

-- _________________________________________________________________
-- OR Gates for 5 Inputs

-- OR5, 5 input OR gate, Component Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR5_C is
  port (  i1, i2, i3, i4, i5: in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end OR5_C;

architecture OR5_C_EQ of OR5_C is
  -- Includes component OR3 to simplify logic
  component OR3_E is
    port (  i1,i2,i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 || i2 || i3
  O31: OR3_E port map(i1,i2, i3, tempo);
  -- o = i4 || i5 || tempo (or o = i1 || i2 || i3 || i4 || i5)
  O32: OR3_E port map(i4,i5, tempo, o);
end OR5_C_EQ;

-- OR5, 5 input OR gate, Equation Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR5_E is
  port (  i1, i2, i3, i4, i5: in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end OR5_E;

architecture OR5_E_EQ of OR5_E is
begin
  o <= (i1 OR i2 OR i3 OR i4 OR i5);
end OR5_E_EQ;
