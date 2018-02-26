library verilog;
use verilog.vl_types.all;
entity RegisterNbit is
    generic(
        N               : integer := 64
    );
    port(
        Q               : out    vl_logic_vector;
        D               : in     vl_logic_vector;
        load            : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end RegisterNbit;
