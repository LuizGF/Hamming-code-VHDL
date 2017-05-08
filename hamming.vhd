LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HAMMING IS
	PORT ( ENTRADA : IN STD_LOGIC_VECTOR(8 DOWNTO 1);
			 SAIDA : OUT STD_LOGIC_VECTOR(8 DOWNTO 1) );
END HAMMING;

ARCHITECTURE ARCH OF HAMMING IS
SIGNAL VERIFICADOR : STD_LOGIC_VECTOR(4 DOWNTO 1);
SIGNAL TRANSMISSOR : STD_LOGIC_VECTOR(12 DOWNTO 1);

COMPONENT HAMMING_SENDER
	PORT (ENTRADA : IN STD_LOGIC_VECTOR(8 DOWNTO 1);
			SAIDA : OUT STD_LOGIC_VECTOR(12 DOWNTO 1) );
END COMPONENT;

COMPONENT HAMMING_VERIF
	PORT( ENTRADA : IN STD_LOGIC_VECTOR(12 DOWNTO 1);
			VERIFICADOR : OUT STD_LOGIC_VECTOR(4 DOWNTO 1));
END COMPONENT;

COMPONENT HAMMING_RED
	PORT (ENTRADA : IN STD_LOGIC_VECTOR(12 DOWNTO 1);
			VERIFICADOR : IN STD_LOGIC_VECTOR(4 DOWNTO 1);
			SAIDA : OUT STD_LOGIC_VECTOR(8 DOWNTO 1));
END COMPONENT;

BEGIN
	ENVIO: HAMMING_SENDER PORT MAP(ENTRADA => ENTRADA, SAIDA => TRANSMISSOR);
	VERIFICACAO: HAMMING_VERIF PORT MAP(ENTRADA => TRANSMISSOR, VERIFICADOR => VERIFICADOR);
	REDUCAO_E_CORRECAO: HAMMING_RED PORT MAP(ENTRADA => TRANSMISSOR, VERIFICADOR => VERIFICADOR, SAIDA => SAIDA);
END ARCH;