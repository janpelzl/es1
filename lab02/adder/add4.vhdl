-- simple 4-bit bit adder circuit
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
