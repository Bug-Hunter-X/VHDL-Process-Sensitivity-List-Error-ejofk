```vhdl
ENTITY fixed_process IS
  PORT (clk : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY fixed_process;

ARCHITECTURE behavioral OF fixed_process IS
BEGIN
  PROCESS (clk, data_in)
  BEGIN
    IF rising_edge(clk) THEN
      data_out <= data_in;
    END IF;
  END PROCESS;
END ARCHITECTURE;
```