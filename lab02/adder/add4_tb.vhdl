entity add4_tb is
end entity;

architecture testbench of add4_tb is
    component add4
        port(
            x: in bit_vector(3 downto 0);
            y: in bit_vector(3 downto 0);
            cin: in bit;
            s: out bit_vector(3 downto 0);
            cout: out bit
        );
    end component;

    signal x1,y1,s1: bit_vector(3 downto 0);
    signal cin1, cout1: bit;

begin
    dut: add4 port map (x1,y1,cin1,s1,cout1);
    process
    begin
        x1 <= "0011";
        y1 <= "0010";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "1111";
        y1 <= "0001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "1011";
        y1 <= "0010";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "1001";
        y1 <= "0101";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "0001";
        y1 <= "1110";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "1001";
        y1 <= "0001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "0111";
        y1 <= "0110";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "0101";
        y1 <= "1101";
        cin1 <= '0';
        wait for 10 ns;
    end process;
end;
