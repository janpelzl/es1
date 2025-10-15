entity fa_tb is
end entity;

architecture testbench of fa_tb is
    component tb
        port(
            x: in bit;
            y: in bit;
            cin: in bit;
            s: out bit;
            cout: out bit
        );
    end component;

    signal x,y,cin,s,cout: bit;

begin
    dut: logik port map (x,y,cin,s,cout);

    process
    begin

    end process;
end;
