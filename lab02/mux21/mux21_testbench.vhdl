entity mux21_testbench is
end entity;

architecture testbench of mux21_testbench is
    component mux21
        port(
            I1:  in bit;
            I2:  in bit;
            E:  in bit;
            A:  in bit;
            Q:  out bit    
        );
    end component;

    signal i1: bit;
    signal i2: bit;
    signal a: bit;
    signal e: bit;
    signal q: bit;

begin
    dut: mux21 port map (i1, i2, e, a, q);

    process
    begin
        i1 <= '1';
        i2 <= '0';
        a <= '0';
        e <= '1';
        wait for 10 ns;
        i1 <= '1';
        i2 <= '0';
        a <= '0';
        e <= '0';
        wait for 10 ns;
        i1 <= '1';
        i2 <= '0';
        a <= '1';
        e <= '1';
        wait for 10 ns;
        i1 <= '1';
        i2 <= '0';
        a <= '1';
        e <= '0';
        wait for 10 ns;
        i1 <= '1';
        i2 <= '1';
        a <= '0';
        e <= '0';
        wait for 10 ns;
    end process;
end;