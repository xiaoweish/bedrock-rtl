
/*
*********************************************
**    File auto-generated by Chipstack.    **
*********************************************
*/

`include "br_asserts_internal.svh"
`include "br_registers.svh"
module br_ram_flops_1r1w_monitor
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic[       Width-1:0] wr_data,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr,
        input logic rd_data_valid,
        input logic[       Width-1:0] rd_data
    );

Simultaneous_Read_and_Write_with_Bypass_Enabled #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Simultaneous_Read_and_Write_with_Bypass_Enabled_inst(.*);
Sequential_Write_Request #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Sequential_Write_Request_inst(.*);
Sequential_Read_Request #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Sequential_Read_Request_inst(.*);
Valid_Write_Address #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Valid_Write_Address_inst(.*);
Valid_Read_Address #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Valid_Read_Address_inst(.*);
Valid_Write_Data #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Valid_Write_Data_inst(.*);
Valid_Read_Address_Usage #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Valid_Read_Address_Usage_inst(.*);
Unified_Reset_Scenario #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Unified_Reset_Scenario_inst(.*);
Write_Interface_Verification #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Write_Interface_Verification_inst(.*);
Read_Interface_Verification #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Read_Interface_Verification_inst(.*);
Data_Integrity_Verification #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Data_Integrity_Verification_inst(.*);
No_Operation_Check #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) No_Operation_Check_inst(.*);
Write_Operation_Check #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Write_Operation_Check_inst(.*);
Read_Operation_Check #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Read_Operation_Check_inst(.*);
Simultaneous_Read_and_Write_Operation_Check #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Simultaneous_Read_and_Write_Operation_Check_inst(.*);
Memory_Reset_Check #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Memory_Reset_Check_inst(.*);
Output_Validity_Check #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Output_Validity_Check_inst(.*);
Sequential_Write_and_Read_Consistency #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Sequential_Write_and_Read_Consistency_inst(.*);
Memory_Initialization_Verification #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Memory_Initialization_Verification_inst(.*);
Zero_Cycle_Read_After_Write_Hazard_with_Bypass_Enabled #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Zero_Cycle_Read_After_Write_Hazard_with_Bypass_Enabled_inst(.*);
One_Cycle_Read_After_Write_Hazard_with_Bypass_Disabled #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) One_Cycle_Read_After_Write_Hazard_with_Bypass_Disabled_inst(.*);
Simultaneous_Read_and_Write_Operation_Check_2 #(.Depth(Depth), .Width(Width), .DepthTiles(DepthTiles), .WidthTiles(WidthTiles), .AddressDepthStages(AddressDepthStages), .ReadDataDepthStages(ReadDataDepthStages), .ReadDataWidthStages(ReadDataWidthStages), .TileEnableBypass(TileEnableBypass), .EnableMemReset(EnableMemReset)) Simultaneous_Read_and_Write_Operation_Check_2_inst(.*);
endmodule



module Simultaneous_Read_and_Write_with_Bypass_Enabled
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr
    );

// Property: Simultaneous Read and Write with Bypass Enabled: Cover that: wr_valid is 1, rd_addr_valid is 1, wr_addr equals rd_addr.
simultaneous_read_write_bypass_C: cover property (@(posedge clk) wr_valid && rd_addr_valid && (wr_addr == rd_addr));
endmodule



module Sequential_Write_Request
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid
    );

// Sequential Write Request: Assume that If: wr_valid is 0, then: wr_valid eventually becomes 1.
wr_valid_eventually_A: assume property (@(posedge clk) disable iff (rst) !wr_valid |-> s_eventually wr_valid);
endmodule



module Sequential_Read_Request
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid
    );

// Sequential Read Request: Assume that If: rd_addr_valid is 0, then: rd_addr_valid eventually becomes 1.
Sequential_Read_Request_A: assume property (@(posedge clk) disable iff (rst) !rd_addr_valid |-> s_eventually rd_addr_valid);
endmodule



module Valid_Write_Address
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr
    );

// Valid Write Address: Assume that If: wr_valid is 1, then: wr_addr is within the valid address range.
ValidWriteAddress_A: assume property (@(posedge clk) disable iff (rst) wr_valid |-> (wr_addr < Depth));
endmodule



module Valid_Read_Address
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr
    );

// Valid Read Address: Assume that If: rd_addr_valid is 1, then: rd_addr is within the valid address range.
valid_read_address_A: assume property (@(posedge clk) disable iff (rst) rd_addr_valid |-> rd_addr < Depth);
endmodule



module Valid_Write_Data
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[       Width-1:0] wr_data
    );

// Valid Write Data: Assume that If: wr_valid is 1, then: wr_data is not unknown.
Valid_Write_Data_A: assume property (@(posedge clk) disable iff (rst) wr_valid |-> !$isunknown(wr_data));
endmodule



module Valid_Read_Address_Usage
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr
    );

//Valid Read Address Usage: Assume that If: rd_addr_valid is 1, then: rd_addr is not unknown.
ValidReadAddress_A: assume property (@(posedge clk) disable iff (rst) rd_addr_valid |-> !$isunknown(rd_addr));
endmodule



module Unified_Reset_Scenario
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_data_valid
    );

// Unified Reset Scenario: The single SVA property should verify that when 'rst' transitions from '1' to '0', 'rd_data_valid' is reset to '0' on the same clock cycle.
rd_data_valid_reset_A: assert property (@(posedge clk) $fell(rst) |-> (rd_data_valid == 1'b0));
endmodule



module Write_Interface_Verification
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic[       Width-1:0] wr_data
    );

valid_ready_protocol #(
    .DATA_WIDTH(AddressWidth + Width), // Combined width of wr_addr and wr_data
    .IS_MASTER(1'b1) // VIP acts as master
) valid_ready_protocol_inst (
    .clk(clk), // Connect to DUT clock
    .reset_n(~rst), // Active low reset, connect to inverted DUT reset
    .valid(wr_valid), // Connect to DUT wr_valid
    .ready(), // No corresponding ready signal in DUT
    .data({wr_addr, wr_data}) // Concatenate wr_addr and wr_data
);
endmodule



module Read_Interface_Verification
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic[       Width-1:0] rd_data
    );

valid_ready_protocol #(
    .DATA_WIDTH(32), // Assuming the DUT's Width parameter is set to 32
    .IS_MASTER(1'b0) // The DUT is acting as a slave for the read interface
) valid_ready_protocol_inst (
    .clk(clk), // Connect to DUT's clock
    .reset_n(~rst), // Connect to DUT's reset, inverted for active-low
    .valid(rd_addr_valid), // Connect to DUT's read address valid signal
    .ready(), // No direct ready signal from DUT for read interface
    .data(rd_data) // Connect to DUT's read data signal
);
endmodule



module Data_Integrity_Verification
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic rd_data_valid,
        input logic[       Width-1:0] rd_data
    );

jasper_scoreboard_3 #(
    .CHUNK_WIDTH(Width), // Matches the bit width of the DUT's rd_data
    .IN_CHUNKS(1), // Single input chunk for rd_data
    .OUT_CHUNKS(1), // Single output chunk for rd_data
    .PORT_ORDER(1), // Default value, assuming leftmost chunk first
    .ORDERING(0), // Default value, assuming ordered chunks
    .SINGLE_CLOCK(1), // Default value, assuming single clock domain
    .MAX_PENDING(2) // Default value, assuming up to 2 pending transactions
) jasper_scoreboard_3_inst (
    .clk(clk), // Connect to DUT's clk
    .rstN(~rst), // Connect to DUT's rst, inverted for active-low
    .incoming_vld(rd_addr_valid), // Connect to DUT's rd_addr_valid
    .incoming_data(rd_data), // Connect to DUT's rd_data
    .outgoing_vld(rd_data_valid), // Connect to DUT's rd_data_valid
    .outgoing_data(rd_data) // Connect to DUT's rd_data
);
endmodule



module No_Operation_Check
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic rd_data_valid
    );

// No Operation Check: Check that if 'rd_addr_valid = 0', then 'rd_data_valid' is 0 after 'ReadDataDepthStages + ReadDataWidthStages' clock cycles.
if (ReadDataDepthStages + ReadDataWidthStages > 0) begin
    no_operation_check_A: assert property (@(posedge clk) disable iff (rst) !rd_addr_valid |-> ##(ReadDataDepthStages + ReadDataWidthStages) !rd_data_valid);
end
endmodule



module Write_Operation_Check
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid
    );

// Auxiliary code to track write operation
    logic write_pending;
    always @(posedge clk) begin
        if (rst) begin
            write_pending <= 1'b0;
        end else begin
            if (wr_valid) begin
                write_pending <= 1'b1;
            end
            // Assuming write completion in the next cycle
            if (write_pending) begin
                write_pending <= 1'b0;
            end
        end
    end

    // Write Operation Check: Check that if 'wr_valid = 1' then the data at 'wr_addr' is updated with 'wr_data' eventually.
    write_operation_check_A: assert property (@(posedge clk) disable iff (rst) wr_valid |-> ##1 (write_pending == 0));
endmodule



module Read_Operation_Check
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic rd_data_valid,
        input logic[       Width-1:0] rd_data
    );

// Read Operation Check: Check that 'rd_addr_valid = 1', then 'rd_data_valid' is asserted and 'rd_data' reflects the data at 'rd_addr' after the delay determined by 'ReadDataDepthStages' and 'ReadDataWidthStages'.
if (ReadDataDepthStages + ReadDataWidthStages > 0) begin
    rd_data_valid_after_delay_A: assert property (@(posedge clk) disable iff (rst) rd_addr_valid |-> ##(ReadDataDepthStages + ReadDataWidthStages) rd_data_valid);
    rd_data_reflects_correct_data_A: assert property (@(posedge clk) disable iff (rst) rd_addr_valid |-> ##(ReadDataDepthStages + ReadDataWidthStages) (rd_data == $past(rd_data, ReadDataDepthStages + ReadDataWidthStages)));
end
endmodule



module Simultaneous_Read_and_Write_Operation_Check
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr,
        input logic[       Width-1:0] rd_data
    );

// Declare the memory array
    logic [Width-1:0] memory [0:Depth-1];

    // Simultaneous Read and Write Operation Check: Check that if 'wr_valid = 1', 'rd_addr_valid = 1', and 'wr_addr != rd_addr', then after a delay of 'ReadDataDepthStages + ReadDataWidthStages', 'rd_data' reflects the data stored in memory at 'rd_addr'.
    if (ReadDataDepthStages + ReadDataWidthStages > 0) begin
        sim_rd_wr_check_A: assert property (@(posedge clk) disable iff (rst)
            (wr_valid && rd_addr_valid && (wr_addr != rd_addr)) |->
            ##(ReadDataDepthStages + ReadDataWidthStages) (rd_data == memory[rd_addr]));
    end
endmodule



module Memory_Reset_Check
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic[       Width-1:0] rd_data
    );

// Memory Reset Check: Check that if 'EnableMemReset = 1' and 'rst = 1', then 'rd_data' is 0 eventually.
if (EnableMemReset == 1) begin
    memory_reset_check_A: assert property (@(posedge clk) rst |-> s_eventually (rd_data == {Width{1'b0}}));
end
endmodule



module Output_Validity_Check
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic rd_data_valid
    );

// Auxiliary code to track the delay from rd_addr_valid to rd_data_valid
logic [31:0] delay_counter;
logic rd_addr_valid_d;

always @(posedge clk) begin
    if (rst) begin
        delay_counter <= 0;
        rd_addr_valid_d <= 0;
    end else begin
        rd_addr_valid_d <= rd_addr_valid;
        if (rd_addr_valid) begin
            delay_counter <= delay_counter + 1;
        end else begin
            delay_counter <= 0;
        end
    end
end

//Output Validity Check: Check that if 'rd_addr_valid = 1', then 'rd_data_valid' is asserted after the delay determined by 'ReadDataDepthStages' and 'ReadDataWidthStages'.
if (ReadDataDepthStages + ReadDataWidthStages > 0) begin
    rd_data_valid_delay_A: assert property (@(posedge clk) disable iff (rst)
        rd_addr_valid_d |-> ##(ReadDataDepthStages + ReadDataWidthStages) rd_data_valid);
end
endmodule



module Sequential_Write_and_Read_Consistency
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic[       Width-1:0] wr_data,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr,
        input logic rd_data_valid,
        input logic[       Width-1:0] rd_data
    );

// Sequential Write and Read Consistency: Check that if wr_valid is 1 and followed one or more cycles later by rd_addr_valid being 1 for the same address, then rd_data_valid is eventually 1 and rd_data matches wr_data.

logic [AddressWidth-1:0] stored_wr_addr;
logic [Width-1:0] stored_wr_data;
logic addr_match_flag;

always @(posedge clk) begin
    if (rst) begin
        stored_wr_addr <= '0;
        stored_wr_data <= '0;
        addr_match_flag <= 1'b0;
    end else begin
        if (wr_valid) begin
            stored_wr_addr <= wr_addr;
            stored_wr_data <= wr_data;
        end
        if (rd_addr_valid && (rd_addr == stored_wr_addr)) begin
            addr_match_flag <= 1'b1;
        end
    end
end

seq_write_read_consistency_A: assert property (@(posedge clk) disable iff (rst) addr_match_flag |-> s_eventually (rd_data_valid && (rd_data == stored_wr_data)));
endmodule



module Memory_Initialization_Verification
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic rd_addr_valid,
        input logic[       Width-1:0] rd_data
    );

// Memory Initialization Verification: Check that if EnableMemReset is 1, upon reset, rd_data is 0 when rd_addr_valid is 1 for any address before any write operation occurs.
if (EnableMemReset) begin
    mem_init_verification_A: assert property (@(posedge clk) $fell(rst) |-> (rd_addr_valid |-> (rd_data == {Width{1'b0}})));
end
endmodule



module Zero_Cycle_Read_After_Write_Hazard_with_Bypass_Enabled
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic[       Width-1:0] wr_data,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr,
        input logic rd_data_valid,
        input logic[       Width-1:0] rd_data
    );

// Zero-Cycle Read-After-Write Hazard with Bypass Enabled: When TileEnableBypass is 1, check that if wr_valid and rd_addr_valid are both high on the same clock cycle, and wr_addr equals rd_addr, then when the corresponding rd_data_valid is asserted, rd_data equals the original wr_data from read latency cycles ago.

logic [Width-1:0] stored_wr_data;
always @(posedge clk) begin
    if (rst) begin
        stored_wr_data <= '0;
    end else if (wr_valid && rd_addr_valid && (wr_addr == rd_addr)) begin
        stored_wr_data <= wr_data;
    end
end

if (TileEnableBypass == 1) begin
    zero_cycle_read_after_write_A: assert property (@(posedge clk) disable iff (rst)
        (wr_valid && rd_addr_valid && (wr_addr == rd_addr)) |-> ##(ReadDataDepthStages + ReadDataWidthStages)
        (rd_data_valid && (rd_data == $past(stored_wr_data, ReadDataDepthStages + ReadDataWidthStages))));
end
endmodule



module One_Cycle_Read_After_Write_Hazard_with_Bypass_Disabled
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr,
        input logic rd_data_valid,
        input logic[       Width-1:0] rd_data
    );

// One-Cycle Read-After-Write Hazard with Bypass Disabled: When TileEnableBypass is 0, check that if wr_valid and rd_addr_valid are both high on the same clock cycle, and wr_addr equals rd_addr, then when the corresponding rd_data_valid is asserted, rd_data equals the stored memory value rather than the new wr_data from read latency cycles ago.

logic [Width-1:0] stored_memory_value;
always @(posedge clk) begin
    if (rst) begin
        stored_memory_value <= {Width{1'b0}};
    end else if (wr_valid && rd_addr_valid && (wr_addr == rd_addr)) begin
        stored_memory_value <= rd_data;
    end
end

if (TileEnableBypass == 0) begin
    read_after_write_hazard_A: assert property (@(posedge clk) disable iff (rst)
        (wr_valid && rd_addr_valid && (wr_addr == rd_addr)) |-> ##ReadDataDepthStages rd_data_valid && (rd_data == $past(stored_memory_value, ReadDataDepthStages > 0 ? ReadDataDepthStages : 1)));
end
endmodule



module Simultaneous_Read_and_Write_Operation_Check_2
    #(
        parameter int Depth = 2,
        parameter int Width = 1,
        parameter int DepthTiles = 1,
        parameter int WidthTiles = 1,
        parameter int AddressDepthStages = 0,
        parameter int ReadDataDepthStages = 0,
        parameter int ReadDataWidthStages = 0,
        parameter bit TileEnableBypass = 0,
        parameter bit EnableMemReset = 0,
        localparam int AddressWidth = $clog2(Depth)
    )
    (
        input logic clk,
        input logic rst,
        input logic wr_valid,
        input logic[AddressWidth-1:0] wr_addr,
        input logic rd_addr_valid,
        input logic[AddressWidth-1:0] rd_addr,
        input logic rd_data_valid
    );

// Simultaneous Read and Write Operation Check: Check that when both 'wr_valid' and 'rd_addr_valid' are high, the RAM can perform simultaneous read and write operations on the same clock cycle.
simultaneous_read_write_A: assert property (@(posedge clk) disable iff (rst) (wr_valid && rd_addr_valid) |-> (wr_addr == rd_addr) && rd_data_valid);
endmodule
bind br_ram_flops_1r1w br_ram_flops_1r1w_monitor
    #(
        .Depth(Depth),
        .Width(Width),
        .DepthTiles(DepthTiles),
        .WidthTiles(WidthTiles),
        .AddressDepthStages(AddressDepthStages),
        .ReadDataDepthStages(ReadDataDepthStages),
        .ReadDataWidthStages(ReadDataWidthStages),
        .TileEnableBypass(TileEnableBypass),
        .EnableMemReset(EnableMemReset)
    )  monitor (
        .clk(clk),
        .rst(rst),
        .wr_valid(wr_valid),
        .wr_addr(wr_addr),
        .wr_data(wr_data),
        .rd_addr_valid(rd_addr_valid),
        .rd_addr(rd_addr),
        .rd_data_valid(rd_data_valid),
        .rd_data(rd_data)
    );
