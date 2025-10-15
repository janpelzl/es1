entity mux21 is
    port(
        I1:  in bit;
        I2:  in bit;
        A:  in bit;
        E:  in bit;
        Q:  out bit
    );
end mux21;

architecture verhalten of mux21 is

begin
    process(I1, I2, A, E)
    begin
        if(E = '0') then 
            case A is
                when '0' =>     Q <= I1;
                when '1' =>     Q <= I2;
                when others =>  Q <= '0';
            end case;
        else 
            Q <= '0';
        end if;
    end process;
end verhalten;