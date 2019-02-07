-- File: tb_gates_3.vhd
-- Includes: Testbenches for 3 Input Gates such as AND3 and OR3

-- TB_AND3, Test Bench for AND3 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_AND3 is
end entity TB_AND3;

-- Begin AND3 verification with test bench
architecture AND3_VERIFY of TB_AND3 is
  -- i1 = Input 1, i2 = Input 2, i3 = input 3, o = output
  signal i1, i2, i3, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
  -- Design Under Verication = AND3 Gate, portmapping test bench variables to test entity's
  duv:  entity work.AND3(AND3_EQ)
        port map (i1 => i1, i2 => i2, i3 => i3, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 5 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(2 downto 0)) is
    begin
      -- binds passed input from vector to corresponding AND3 input
      i1 <= curr_i(0);
       -- binds passed input from vector to corresponding AND3 input
      i2 <= curr_i(1);
       -- binds passed input from vector to corresponding AND3 input
      i3 <= curr_i(2);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 8 loop
      -- takes current input cycle and apply to AND3
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "001";
    end loop;
    wait;
  end process apply_test_cases;
end architecture AND3_VERIFY;

-- TB_OR3, Test Bench for OR5 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Begin Test Bench OR3 Entity
entity TB_OR3 is
end entity TB_OR3;

architecture OR3_VERIFY of TB_OR3 is
  -- i1 = Input 1, i2 = Input 2, i3 = Input 3, o = output
  signal i1, i2, i3, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
  -- Design Under Verication = OR 3 Gate, portmapping test bench variables to test entity's
  duv:  entity work.OR3(OR3_EQ)
        port map (i1 => i1, i2 => i2, i3 => i3, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- applys test input vector to inputs of test entity
      (curr_i : in STD_LOGIC_VECTOR(2 downto 0)) is
    begin
      -- binds passed input from vector to corresponding OR3 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding OR3 input
      i2 <= curr_i(1);
      -- binds passed input from vector to corresponding OR3 input
      i3 <= curr_i(2);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Begin loop to send inputs to test in OR3
    for i in 0 to 8 loop
      -- binds input vector to input variables for current test input vector
      apply_test(curr_i);
      -- increments the input vector by one for next test
      curr_i <= curr_i + "001";
    end loop;
    wait;
  end process apply_test_cases;
end architecture OR3_VERIFY;
