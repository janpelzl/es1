entity andor_testbench is
end entity;

architecture testbench of andor_testbench is
    component andor
        port(
            a:  in bit;
            b:  in bit;
            x:  out bit;
            y:  out bit    
        );
    end component;

    signal a: bit;
    signal b: bit;
    signal x: bit;
    signal y: bit;

begin
    dut: andor port map (a,b,x,y);

    process
    begin
        a <= '0';
        b <= '0';
        wait for 5 ns;
        a <= '1';
        b <= '0';
        wait for 5 ns;
        a <= '0';
        b <= '1';
        wait for 5 ns;
        a <= '1';
        b <= '1';
        wait for 5 ns;
    end process;
end;