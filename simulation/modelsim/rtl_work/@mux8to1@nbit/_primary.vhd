library verilog;
use verilog.vl_types.all;
entity Mux8to1Nbit is
    generic(
        N               : integer := 8
    );
    port(
        F               : out    vl_logic_vector;
        S               : in     vl_logic_vector(2 downto 0);
        I0              : in     vl_logic_vector;
        I1              : in     vl_logic_vector;
        I2              : in     vl_logic_vector;
        I3              : in     vl_logic_vector;
        I4              : in     vl_logic_vector;
        I5              : in     vl_logic_vector;
        I6              : in     vl_logic_vector;
        I7              : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Mux8to1Nbit;
