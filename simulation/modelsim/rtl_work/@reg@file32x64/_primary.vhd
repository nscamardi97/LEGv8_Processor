library verilog;
use verilog.vl_types.all;
entity RegFile32x64 is
    port(
        A               : out    vl_logic_vector(63 downto 0);
        B               : out    vl_logic_vector(63 downto 0);
        D               : in     vl_logic_vector(63 downto 0);
        DA              : in     vl_logic_vector(4 downto 0);
        SA              : in     vl_logic_vector(4 downto 0);
        SB              : in     vl_logic_vector(4 downto 0);
        W               : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic
    );
end RegFile32x64;
