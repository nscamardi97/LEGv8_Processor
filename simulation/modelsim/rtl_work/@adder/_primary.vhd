library verilog;
use verilog.vl_types.all;
entity Adder is
    port(
        F               : out    vl_logic_vector(63 downto 0);
        Cout            : out    vl_logic;
        A               : in     vl_logic_vector(63 downto 0);
        B               : in     vl_logic_vector(63 downto 0);
        Cin             : in     vl_logic
    );
end Adder;
