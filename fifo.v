`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2025 19:51:35
// Design Name: 
// Module Name: fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo #(parameter m=4, n=16) (
    input clk,
    input rst,
    input read,
    input write,
    input [m-1:0] data_in,
    output reg [m-1:0] data_out,
    output full,
    output empty
);
    reg [m-1:0] mem [0:n-1];
    reg [4:0] wr_ptr;
    reg [4:0] rd_ptr;
    reg [5:0] c;

        assign full  = (c == n);
        assign empty = (c == 0);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
            c      <= 0;
            data_out <= 0;
        end else begin
            if (write && !full) begin
                mem[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr + 1;
            end
            if (read && !empty) begin
                data_out <= mem[rd_ptr];
                rd_ptr <= rd_ptr + 1;
            end
            case ({write && !full, read && !empty})
                2'b10: c <= c + 1;
                2'b01: c <= c - 1;
                default: c <= c;
            endcase
        end
    end
endmodule
