LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HAMMING_VERIF IS
	PORT ( ENTRADA : IN STD_LOGIC_VECTOR(12 DOWNTO 1);
			 VERIFICADOR : OUT STD_LOGIC_VECTOR(4 DOWNTO 1) );
END HAMMING_VERIF;

ARCHITECTURE ARCH OF HAMMING_VERIF IS

BEGIN
	VERIFICADOR(1) <= ENTRADA(1) XOR ENTRADA(3) XOR ENTRADA(5) XOR ENTRADA(7) XOR ENTRADA(9) XOR ENTRADA(11);
	VERIFICADOR(2) <= ENTRADA(2) XOR ENTRADA(3) XOR ENTRADA(6) XOR ENTRADA(7) XOR ENTRADA(10) XOR ENTRADA(11);
	VERIFICADOR(3) <= ENTRADA(4) XOR ENTRADA(5) XOR ENTRADA(6) XOR ENTRADA(7) XOR ENTRADA(12);
	VERIFICADOR(4) <= ENTRADA(8) XOR ENTRADA(9) XOR ENTRADA(10) XOR ENTRADA(11) XOR ENTRADA(12);
END ARCH;