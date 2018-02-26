library verilog;
use verilog.vl_types.all;
entity Decoder5to32 is
    port(
        S               : in     vl_logic_vector(4 downto 0);
        M               : out    vl_logic_vector(31 downto 0)
    );
end Decoder5to32;
