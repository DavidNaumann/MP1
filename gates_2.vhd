-- File: gates_2.vhd
-- Includes: 2 Input Gates such as AND2 and OR2

-- GENERAL NOTES
-- __________________________
-- Gate Instances

-- A(ab) =  AND with a inputs of instance number b
-- O(ab) =  OR with a inputs of instance number b
-- N(a) =   NOT gate instance a
-- X(ab) =  XOR with a inputs of instance number b
-- NA(ab) = NAND with a inputs of instance number b (if it appeared)

-- |i.e. A21 would be the first instance of a 2 input AND gate  |
-- |     or O53 would be the third instnace of a 5 input OR gate|

-- __________________________
-- Components

-- AND#  =  AND gate of # inputs
-- XOR#  =  XOR gate of # inputs
-- OR#   =  OR gate of # inputs
-- NAND# =  NAND gate of # inputs
-- NOT1  =  NOT gate of 1 input

-- __________________________
-- Variables

-- i = Input Variable #
-- neg_i# = negation of i# (NOT i#)
-- tempo = temporary output to calculations with, always
-- o = output, always

-- AND2, 2 input AND gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND2 is
  port( i1, i2 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2
        o    : out STD_LOGIC); -- o = Output
end entity;

architecture AND2_EQ of AND2 is

begin
  o <= i1 AND i2; -- o = i1 & i2
end architecture AND2_EQ;

-- OR2, 2 input OR gate, Creation

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR2 is
  port( i1, i2 : in STD_LOGIC; -- i1 = Input 1, i2 = Input 2
        o    : out STD_LOGIC); -- o = Output
end entity;

architecture OR2_EQ of OR2 is

begin
  o <= i1 OR i2; -- o = i1 || i2
end architecture OR2_EQ;



