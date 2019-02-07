-- File: tb_gates_2.vhd
-- Includes: Testbenches for 2 Input Gates such as AND2 and OR2

-- GENERAL NOTES
-- __________________________
-- Gate Instances

-- A(ab)  =   AND with a inputs of instance number b
-- O(ab)  =   OR with a inputs of instance number b
-- N(a)   =   NOT gate instance a
-- X(ab)  =   XOR with a inputs of instance number b
-- NA(ab) =   NAND with a inputs of instance number b (if it appeared)
-- duv    =   Device under verification instance for test benches

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


-- TB_AND2, Test Bench for AND2 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_AND2 is
end entity TB_AND2;

-- Begin AND2 verification with test bench
architecture AND2_VERIFY of TB_AND2 is
  -- i1 = Input 1, i2 = Input 2, o = output
  signal i1, i2, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(1 downto 0) := "00";
begin
  -- Design Under Verication = AND 2 Gate, portmapping test bench variables to test entity's
  duv:  entity work.AND2(AND2_EQ)
        port map (i1 => i1, i2 => i2, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 2 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(1 downto 0)) is
    begin
      -- binds passed input from vector to corresponding AND2 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding AND2 input
      i2 <= curr_i(1);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Start cycling through inputs
    for i in 0 to 4 loop
      -- take current input cycle and apply to AND2
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "01";
    end loop;
    wait;
  end process apply_test_cases;
end architecture AND2_VERIFY;

-- TB_OR2, Test Bench for OR2 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_OR2 is
end entity TB_OR2;

architecture OR2_VERIFY of TB_OR2 is
  -- i1 = Input 1, i2 = Input 2, o = output
  signal i1, i2, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(1 downto 0) := "00";
begin
  -- Design Under Verication = OR 2 Gate, portmapping test bench variables to test entity's
  duv:  entity work.OR2(OR2_EQ)
        port map (i1 => i1, i2 => i2, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- applys test input vector to inputs of test entity
      (curr_i : in STD_LOGIC_VECTOR(1 downto 0)) is
    begin
      -- binds passed input from vector to corresponding OR2 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding OR2 input
      i2 <= curr_i(1);
      wait for 100 ps;
    end procedure apply_test;
  begin
    for i in 0 to 4 loop
      -- binds input vector to input variables for current test input vector
      apply_test(curr_i);
      -- increments the input vector by one for next test
      curr_i <= curr_i + "01";
    end loop;
    wait;
  end process apply_test_cases;
end architecture OR2_VERIFY;