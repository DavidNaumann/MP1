-- File: xors.vhd
-- Includes: 2 Input, 3 Input and 5 Input Gates for XORs

-- need equation and component (AND3,AND2*)

-- XOR2, 2 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2 is
  port (  i1, i2 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2
          o : out STD_LOGIC); -- o = Output
end XOR2;

architecture XOR2_EQ of XOR2 is
  -- Includes component OR2 to simplify logic
  component OR2 is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component AND2 to simplify logic
  component AND2 is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component NOT1 to simplify logic
  component NOT1 is
    port (  i1: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- neg_i1 = negation of i1, neg_i2 = negation of i2
  signal neg_i1, neg_i2: STD_LOGIC;
  -- Signal for a' & b
  signal and_anb_o: STD_LOGIC;
  -- Signal for a & b'
  signal and_abn_o: STD_LOGIC;
begin
  -- N# = Not Gate Instance #
  -- O# = Or Gate Instance #
  -- A# = Gate Instance #
  -- neg_i1 = !i1
  N1: NOT1 port map(i1, neg_i1);
  -- neg_i2 = !i1
  N2: NOT1 port map(i2, neg_i2);
  -- and_abn_o = i1 & neg_i2 (or i1 & !i2)
  A21: AND2 port map(i1,neg_i2, and_abn_o);
  -- and_anb_o = neg_i1 & i2 (or !i1 & !i2)
  A22: AND2 port map(neg_i1,i2, and_anb_o);
  -- o = and_abn_o || and_anb_o (or (i1 & !i2) || (!i1 & i2))
  O21: OR2 port map(and_abn_o, and_anb_o, o);
end XOR2_EQ;


-- XOR3, 3 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR3 is
  port (  i1, i2, i3 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3
          o : out STD_LOGIC); -- o = Output
end XOR3;

architecture XOR3_EQ of XOR3 is
  -- Includes component XOR2 to simplify logic
  component XOR2 is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 xor i2
  X21: XOR2 port map(i1, i2, tempo);
  -- o = i3 xor tempo (or i1 xor i2 xor i3)
  X22: XOR2 port map(i3, tempo, o);
end XOR3_EQ;


-- XOR5, 5 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR5 is
  port (  i1, i2, i3, i4, i5 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end XOR5;

architecture XOR5_EQ of XOR5 is
  -- Includes component XOR3 to simplify logic
  component XOR3 is
    port (  i1,i2,i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 xor i2 xor i3
  X31: XOR3 port map(i1, i2, i3, tempo);
  -- o = i4 xor i5 xor tempo (or i1 xor i2 xor i3 xor i4 xor i5)
  X32: XOR3 port map(i4, i5, tempo, o);
end XOR5_EQ;
