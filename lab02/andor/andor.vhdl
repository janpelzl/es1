entity andor is
    port(
        a:  in bit;
        b:  in bit;
        x:  out bit;
        y:  out bit
    );
end entity;

architecture verhalten of andor is

begin
    x <= a AND b;
    y <= a OR b;
end architecture;