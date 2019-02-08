-- File: xors.vhd
-- Includes: 2 Input, 3 Input and 5 Input Gates for XORs

-- need equation and component (AND3,AND2*)

-- _________________________________________________________________
-- XOR Gates for 2 Inputs


-- XOR2_E, 2 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2_E is
  port (  i1, i2 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2
          o : out STD_LOGIC); -- o = Output
end XOR2_E;

architecture XOR2_E_EQ of XOR2_E is
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

  o <= ((i1 AND (NOT i2)) OR ((NOT i1) AND i2));
  
end XOR2_E_EQ;

-- XOR2_C, 2 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2_C is
  port (  i1, i2 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2
          o : out STD_LOGIC); -- o = Output
end XOR2_C;

architecture XOR2_C_EQ of XOR2_C is
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
end XOR2_C_EQ;

-- _________________________________________________________________
-- XOR Gates for 3 Inputs

-- XOR3_C, 3 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR3_C is
  port (  i1, i2, i3 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3
          o : out STD_LOGIC); -- o = Output
end XOR3_C;

architecture XOR3_C_EQ of XOR3_C is
  -- Includes component AND3 to simplify logic
  component AND3_E is
    port (  i1, i2, i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component OR3 to simplify logic
  component OR2_E is
    port (  i1, i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component NOT1 to simplify logic
  component NOT1 is
    port (  i1: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo_# = Temporary output/signal
  signal neg_i1, neg_i2, neg_i3: STD_LOGIC;
  signal tempo_1, tempo_2, tempo_3, tempo_4, tempo_5, tempo_6: STD_LOGIC;
begin

  N1: NOT1 port map(i1, neg_i1);
  N2: NOT1 port map(i2, neg_i2);
  N3: NOT1 port map(i3, neg_i3);
  -- tempo_1 = i1'i2'i3
  A1: AND3_E port map(neg_i1,neg_i2,i3, tempo_1);
  -- tempo_2 = i1'i2i3'
  A2: AND3_E port map(neg_i1, i2, neg_i3, tempo_2);
  -- tempo_3 = i1i2'i3'
  A3: AND3_E port map(i1, neg_i2, neg_i3, tempo_3);
  -- tempo_4 = i1i2i3
  A4: AND3_E port map(i1, i2, i3, tempo_4);
  -- tempo_5 = i1'i2'i3 or i1'i2i3'
  O1: OR2_E port map(tempo_1, tempo_2, tempo_5);
  -- tempo_6 = i1i2'i3' or i1i2i3
  O2: OR2_E port map(tempo_3, tempo_4, tempo_6);
  -- o = XOR3 = i1'i2'i3 or i1'i2i3' or i1i2'i3' or i1i2i3
  O3: OR2_E port map(tempo_5, tempo_6, o);
  
end XOR3_C_EQ;

-- XOR3_SC, 3 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR3_SC is
  port (  i1, i2, i3 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3
          o : out STD_LOGIC); -- o = Output
end XOR3_SC;

architecture XOR3_SC_EQ of XOR3_SC is
  -- Includes component XOR2 to simplify logic
  component XOR2_E is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 xor i2
  X21: XOR2_E port map(i1, i2, tempo);
  -- o = i3 xor tempo (or i1 xor i2 xor i3)
  X22: XOR2_E port map(i3, tempo, o);
end XOR3_SC_EQ;

-- _________________________________________________________________
-- XOR Gates for 5 Inputs

-- XOR5, 5 input XOR gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR5_SC is
  port (  i1, i2, i3, i4, i5 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end XOR5_SC;

architecture XOR5_SC_EQ of XOR5_SC is
  -- Includes component XOR3 to simplify logic
  component XOR3_E is
    port (  i1,i2,i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- tempo = Temporary output/signal
  signal tempo: STD_LOGIC;
begin
  -- tempo = i1 xor i2 xor i3
  X31: XOR3_E port map(i1, i2, i3, tempo);
  -- o = i4 xor i5 xor tempo (or i1 xor i2 xor i3 xor i4 xor i5)
  X32: XOR3_E port map(i4, i5, tempo, o);
end XOR5_SC_EQ;