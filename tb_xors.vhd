-- File: tb_xors.vhd
-- Includes: Testbenches for XOR2, XOR3, XOR5 gates

-- TB_XOR2, Test Bench for XOR2 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_XOR2 is
end entity TB_XOR2;

architecture XOR2_VERIFY of TB_XOR2 is
  -- i1 = Input 1, i2 = Input 2, o = output
  signal i1, i2, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(1 downto 0) := "00";
begin
  -- Design Under Verication = XOR2 Gate, portmapping test bench variables to test entity's
  duv:  entity work.XOR2(XOR2_EQ)
        port map (i1 => i1, i2 => i2, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 2 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(1 downto 0)) is
    begin
      -- binds passed input from vector to corresponding XOR2 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding XOR2 input
      i2 <= curr_i(1);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 4 loop
      -- takes current input cycle and apply to XOR2
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "01";
    end loop;
    wait;
  end process apply_test_cases;
end architecture XOR2_VERIFY;

-- TB_XOR3, Test Bench for XOR3 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_XOR3 is
end entity TB_XOR3;

architecture XOR3_VERIFY of TB_XOR3 is
  -- i1 = Input 1, i2 = Input 2, i3 = Input 3, o = output
  signal i1, i2, i3, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
  -- Design Under Verication = XOR3 Gate, portmapping test bench variables to test entity's
  duv:  entity work.XOR3(XOR3_EQ)
        port map (i1 => i1, i2 => i2, i3 => i3, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 3 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(2 downto 0)) is
    begin
      -- binds passed input from vector to corresponding XOR3 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding XOR3 input
      i2 <= curr_i(1);
      -- binds passed input from vector to corresponding XOR3 input
      i3 <= curr_i(2);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 8 loop
      -- takes current input cycle and apply to XOR3
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "001";
    end loop;
    wait;
  end process apply_test_cases;
end architecture XOR3_VERIFY;

-- TB_XOR3, Test Bench for XOR3 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_XOR5 is
end entity TB_XOR5;

architecture XOR5_VERIFY of TB_XOR5 is
  -- i1 = Input 1, i2 = Input 2, i3 = Input 3, etc.
  -- o = output
  signal i1, i2, i3, i4, i5, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(4 downto 0) := "00000";
begin
  -- Design Under Verication = XOR5 Gate, portmapping test bench variables to test entity's
  duv:  entity work.XOR5(XOR5_EQ)
        port map (i1 => i1, i2 => i2, i3 => i3, i4 => i4, i5 => i5, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 5 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(4 downto 0)) is
    begin
      -- binds passed input from vector to corresponding XOR3 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding XOR3 input
      i2 <= curr_i(1);
      -- binds passed input from vector to corresponding XOR3 input
      i3 <= curr_i(2);
      -- binds passed input from vector to corresponding XOR3 input
      i4 <= curr_i(3);
      -- binds passed input from vector to corresponding XOR3 input
      i5 <= curr_i(4);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 32 loop
      -- takes current input cycle and apply to XOR3
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "00001";
    end loop;
    wait;
  end process apply_test_cases;
end architecture XOR5_VERIFY;