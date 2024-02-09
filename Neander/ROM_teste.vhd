LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ROM IS
	PORT(
		entrada : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		saida	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END ROM;

ARCHITECTURE arch OF ROM IS
BEGIN

	WITH entrada SELECT
	--  saida <=    "DADO_MEM" WHEN "ADDR_MEM",
		saida <= 	
					x"14" when x"00",     
					x"15" when x"01",    
					x"16" when x"02",   
					x"17" when x"03",    
					x"14" when x"04",    
					x"15" when x"05",     
					x"16" when x"06",    
					x"17" when x"07",     
					x"0D" when x"08",     
					x"20" when x"09",     
					x"83" when x"0A",     
					x"80" when x"0B",     
					x"0F" when x"0C",    
					x"20" when x"0D",     
					x"84" when x"0E",    
					x"F0" when x"0F",     
					"00000000" WHEN OTHERS;
END arch; 