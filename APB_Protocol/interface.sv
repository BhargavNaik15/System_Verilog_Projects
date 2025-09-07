interface apb_if #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32
);

    // Global Signals
    logic pclk;
    logic presetn;
    
    // Requester [Master] Signals
    logic [ADDR_WIDTH - 1: 0] paddr;
    logic [DATA_WIDTH - 1: 0] pwdata;
    logic [DATA_WIDTH / 8 : 0] pstrb;
    logic [2:0] pprot;
    logic pselx;
    logic penable;
    logic pwrite;

    // Completer [Slave] Signals
    logic pready;
    logic prdata;
    logic pslverr;

endinterface