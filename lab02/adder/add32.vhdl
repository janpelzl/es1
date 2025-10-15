-- simple 32-bit bit adder circuit
entity fa is
    port(
        x: in bit;
        y: in bit;
        cin: in bit;
        s: out bit;
        cout: out bit
    );
end entity;

architecture verhalten of fa is
begin
    s <= (x xor y) xor cin;
    cout <= (x and y) or (x and cin) or (y and cin);
end verhalten;

entity add4 is
    port(
        x: in bit_vector(3 downto 0);
        y: in bit_vector(3 downto 0);
        cin: in bit;
        s: out bit_vector(3 downto 0);
        cout: out bit
    );
end entity;

architecture verhalten of add4 is
    component fa is
        port(
            x: in bit;
            y: in bit;
            cin: in bit;
            s: out bit;
            cout: out bit
        );
    end component;

    signal carry: bit_vector(2 downto 0);

    begin
        fa0: fa port map( x(0), y(0), cin, s(0), carry(0) );
        fa1: fa port map( x(1), y(1), carry(0), s(1), carry(1) );
        fa2: fa port map( x(2), y(2), carry(1), s(2), carry(2) );
        fa3: fa port map( x(3), y(3), carry(2), s(3), cout );

end verhalten;

entity add32 is
    port(
        x: in bit_vector(31 downto 0);
        y: in bit_vector(31 downto 0);
        cin: in bit;
        s: out bit_vector(31 downto 0);
        cout: out bit
    );
end entity;

architecture verhalten of add32 is
    component add4 is
        port(
            x: in bit_vector(3 downto 0);
            y: in bit_vector(3 downto 0);
            cin: in bit;
            s: out bit_vector(3 downto 0);
            cout: out bit
        );
    end component;

    signal carry: bit_vector(6 downto 0);

    begin
        add4_0: add4 port map( x(3 downto 0)  , y(3 downto 0)  , cin,      s(3 downto 0)  , carry(0) );
        add4_1: add4 port map( x(7 downto 4)  , y(7 downto 4)  , carry(0), s(7 downto 4)  , carry(1) );
        add4_2: add4 port map( x(11 downto 8) , y(11 downto 8) , carry(1), s(11 downto 8) , carry(2) );
        add4_3: add4 port map( x(15 downto 12), y(15 downto 12), carry(2), s(15 downto 12), carry(3) );
        add4_4: add4 port map( x(19 downto 16), y(19 downto 16), carry(3), s(19 downto 16), carry(4) );
        add4_5: add4 port map( x(23 downto 20), y(23 downto 20), carry(4), s(23 downto 20), carry(5) );
        add4_6: add4 port map( x(27 downto 24), y(27 downto 24), carry(5), s(27 downto 24), carry(6) );
        add4_7: add4 port map( x(31 downto 28), y(31 downto 28), carry(6), s(31 downto 28), cout     );

end verhalten;