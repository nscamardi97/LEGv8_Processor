library verilog;
use verilog.vl_types.all;
entity Mux32to1Nbit is
    generic(
        N               : integer := 32
    );
    port(
        F               : out    vl_logic_vector;
        S               : in     vl_logic_vector(4 downto 0);
        I00             : in     vl_logic_vector;
        I01             : in     vl_logic_vector;
        I02             : in     vl_logic_vector;
        I03             : in     vl_logic_vector;
        I04             : in     vl_logic_vector;
        I05             : in     vl_logic_vector;
        I06             : in     vl_logic_vector;
        I07             : in     vl_logic_vector;
        I08             : in     vl_logic_vector;
        I09             : in     vl_logic_vector;
        I10             : in     vl_logic_vector;
        I11             : in     vl_logic_vector;
        I12             : in     vl_logic_vector;
        I13             : in     vl_logic_vector;
        I14             : in     vl_logic_vector;
        I15             : in     vl_logic_vector;
        I16             : in     vl_logic_vector;
        I17             : in     vl_logic_vector;
        I18             : in     vl_logic_vector;
        I19             : in     vl_logic_vector;
        I20             : in     vl_logic_vector;
        I21             : in     vl_logic_vector;
        I22             : in     vl_logic_vector;
        I23             : in     vl_logic_vector;
        I24             : in     vl_logic_vector;
        I25             : in     vl_logic_vector;
        I26             : in     vl_logic_vector;
        I27             : in     vl_logic_vector;
        I28             : in     vl_logic_vector;
        I29             : in     vl_logic_vector;
        I30             : in     vl_logic_vector;
        I31             : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Mux32to1Nbit;
