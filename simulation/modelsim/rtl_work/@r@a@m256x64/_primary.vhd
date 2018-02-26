library verilog;
use verilog.vl_types.all;
entity RAM256x64 is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        \in\            : in     vl_logic_vector(63 downto 0);
        write           : in     vl_logic;
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end RAM256x64;
