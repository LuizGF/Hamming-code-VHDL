LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HAMMING_RED IS
	PORT (ENTRADA : IN STD_LOGIC_VECTOR(12 DOWNTO 1);
			VERIFICADOR : IN STD_LOGIC_VECTOR(4 DOWNTO 1);
			SAIDA : OUT STD_LOGIC_VECTOR(8 DOWNTO 1));
END HAMMING_RED;

ARCHITECTURE RED OF HAMMING_RED IS
BEGIN
	SAIDA(1) <= NOT ENTRADA(3) WHEN VERIFICADOR = "0011" ELSE ENTRADA(3);
	SAIDA(2) <= NOT ENTRADA(5) WHEN VERIFICADOR = "0101" ELSE ENTRADA(5);
	SAIDA(3) <= NOT ENTRADA(6) WHEN VERIFICADOR = "0110" ELSE ENTRADA(6);
	SAIDA(4) <= NOT ENTRADA(7) WHEN VERIFICADOR = "0111" ELSE ENTRADA(7);
	SAIDA(5) <= NOT ENTRADA(9) WHEN VERIFICADOR = "1001" ELSE ENTRADA(9);
	SAIDA(6) <= NOT ENTRADA(10) WHEN VERIFICADOR = "1010" ELSE ENTRADA(10);
	SAIDA(7) <= NOT ENTRADA(11) WHEN VERIFICADOR = "1011" ELSE ENTRADA(11);
	SAIDA(8) <= NOT ENTRADA(12) WHEN VERIFICADOR = "1100" ELSE ENTRADA(12);
END RED;