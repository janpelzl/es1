entity add32_tb is
end entity;

architecture testbench of add32_tb is
    component add32
        port(
            x: in bit_vector(31 downto 0);
            y: in bit_vector(31 downto 0);
            cin: in bit;
            s: out bit_vector(31 downto 0);
            cout: out bit
        );
    end component;

    signal x1,y1,s1: bit_vector(31 downto 0);
    signal cin1, cout1: bit;

begin
    dut: add32 port map (x1,y1,cin1,s1,cout1);
    process
    begin
        x1 <= "00000000000000000000000000000000";
        y1 <= "00000000000000000000000000000000";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "11111111111111111111111111111110";
        y1 <= "00000000000000000000000000000001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "11111111111111111000000100101110";
        y1 <= "00000000110010100111000000000001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "00001111111111111000000100101110";
        y1 <= "00111100110010100111000000000001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "00001100010010100100000100101110";
        y1 <= "00111100110010100111001111000001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= "00001100010010100100000100101110";
        y1 <= "00111100110010100111001111000001";
        cin1 <= '1';
        wait for 10 ns;
        x1 <= "10101101111111110100000100101110";
        y1 <= "00111110100101100111001111000001";
        cin1 <= '0';
        wait for 10 ns;
        x1 <= x"AAAAAAAA";
        y1 <= x"FFFFFFFF";
        cin1 <= '0';
        wait for 10 ns;
    end process;
end;
