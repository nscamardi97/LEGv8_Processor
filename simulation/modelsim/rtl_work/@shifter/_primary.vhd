library verilog;
use verilog.vl_types.all;
entity Shifter is
    port(
        A               : in     vl_logic_vector(63 downto 0);
        shift_amt       : in     vl_logic_vector(5 downto 0);
        left            : out    vl_logic_vector(63 downto 0);
        right           : out    vl_logic_vector(63 downto 0)
    );
end Shifter;
