library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        ControlWorld    : in     vl_logic_vector(22 downto 0);
        Const           : in     vl_logic_vector(63 downto 0);
        Bsel            : in     vl_logic;
        data            : inout  vl_logic_vector(63 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        status          : out    vl_logic_vector(3 downto 0)
    );
end Datapath;
