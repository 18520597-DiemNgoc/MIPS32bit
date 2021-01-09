library verilog;
use verilog.vl_types.all;
entity MIPS is
    port(
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0);
        O_Mux_32bit     : out    vl_logic_vector(31 downto 0);
        O_ALU           : out    vl_logic_vector(31 downto 0);
        O_Mem           : out    vl_logic_vector(31 downto 0);
        O_MemToReg      : out    vl_logic_vector(31 downto 0);
        O_RegDst        : out    vl_logic_vector(4 downto 0);
        O_INST          : out    vl_logic_vector(31 downto 0);
        ALUControl      : out    vl_logic_vector(2 downto 0);
        RegDst          : out    vl_logic;
        RegWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemtoReg        : out    vl_logic;
        Branch          : out    vl_logic;
        clock           : in     vl_logic;
        Reset           : in     vl_logic;
        Addr1           : out    vl_logic_vector(4 downto 0);
        Addr2           : out    vl_logic_vector(4 downto 0)
    );
end MIPS;
