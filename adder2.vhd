----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:08 05/13/2014 
-- Design Name: 
-- Module Name:    adder2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder2 is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           y : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC_VECTOR (1 downto 0);
			  c : out std_logic);
end adder2;

architecture Behavioral of adder2 is
component FullAdd is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : out  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal carry:std_logic_vector(2 downto 1);

begin
z(0)<= x(0) xor y(0);
carry(1)<=x(0) and y(0);
L4:FullAdd port map(x(1),y(1),z(1),carry(1),carry(2));
c<=carry(2);

end Behavioral;

