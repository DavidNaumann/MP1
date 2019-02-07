-- File: nands.vhd
-- Includes: 2 Input, 3 Input and 5 Input Gates for NAND

-- NAND2, 2 input NAND gate, Creation

-- equation model
-- component basic gates
-- nands using each other

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND2 is
  port (  i1, i2 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2
          o : out STD_LOGIC); -- o = Output
end NAND2;

architecture NAND2_EQ of NAND2 is
  -- Includes component OR2 to simplify logic
  component OR2 is
    port (  i1,i2: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component NOT1 to simplify logic
  component NOT1 is
    port (  i1: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- neg_i1 = negation of i1, neg_i2 = negation of i2, etc.
  signal neg_i1, neg_i2: STD_LOGIC;
begin
  -- neg_i1 = !i1
  N1: NOT1 port map(i1, neg_i1);
  -- neg_i2 = !i2
  N2: NOT1 port map(i2, neg_i2);
  -- o = neg_i1 || neg_i2 (or o = !i1 || !i2)
  O21: OR2 port map(neg_i1,neg_i2,o);
end NAND2_EQ;


-- NAND3, 3 input NAND gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND3 is
  port (  i1, i2, i3 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3
          o : out STD_LOGIC); -- o = Output
end NAND3;

architecture NAND3_EQ of NAND3 is
  -- Includes component OR3 to simplify logic
  component OR3 is
    port (  i1, i2, i3: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component NOT1 to simplify logic
  component NOT1 is
    port (  i1: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- neg_i1 = negation of i1, neg_i2 = negation of i2, etc.
  signal neg_i1, neg_i2, neg_i3: STD_LOGIC;
begin
  -- neg_i1 = !i1
  N1: NOT1 port map(i1, neg_i1);
  -- neg_i2 = !i2
  N2: NOT1 port map(i2, neg_i2);
  -- neg_i3 = !i3
  N3: NOT1 port map(i3, neg_i3);
  -- o = neg_i1 || neg_i2 || neg_i3 (or o = !i1 || !i2 || !i3)
  O31: OR3 port map(neg_i1, neg_i2, neg_i3, o);
end NAND3_EQ;


-- NAND5, 5 input NAND gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND5 is
  port (  i1, i2, i3 , i4, i5 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
          o : out STD_LOGIC); -- o = Output
end NAND5;

architecture NAND5_EQ of NAND5 is
  -- Includes component OR5 to simplify logic
  component OR5 is
    port (  i1,i2,i3,i4,i5: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- Includes component NOT1 to simplify logic
  component NOT1 is
    port (  i1: in STD_LOGIC;
            o: out STD_LOGIC);
  end component;
  -- neg_i1 = negation of i1, neg_i2 = negation of i2, etc.
  signal neg_i1, neg_i2, neg_i3, neg_i4, neg_i5: STD_LOGIC;
begin
  -- N# = Not Gate Instance #
  -- O# = Or Gate Instance #
  
  -- neg_i1 = !i1
  N1: NOT1 port map(i1, neg_i1);
  -- neg_i2 = !i2
  N2: NOT1 port map(i2, neg_i2);
  -- neg_i3 = !i3
  N3: NOT1 port map(i3, neg_i3);
  -- neg_i4 = !i4
  N4: NOT1 port map(i4, neg_i4);
  -- neg_i5 = !i5
  N5: NOT1 port map(i5, neg_i5);
  -- o = neg_i1 || neg_i2 || neg_i3 || neg_i4 || neg_i5 (or o = !i1 || !i2 || !i3 || !i4 || !i5)
  O51: OR5 port  map(neg_i1,neg_i2,neg_i3,neg_i4,neg_i5,o);
end NAND5_EQ;