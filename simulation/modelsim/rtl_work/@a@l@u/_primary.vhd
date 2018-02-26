library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        F               : out    vl_logic_vector(63 downto 0);
        status          : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(63 downto 0);
        B               : in     vl_logic_vector(63 downto 0);
        FS              : in     vl_logic_vector(4 downto 0)
    );
end ALU;
