`timescale 1ns / 1ps



module tb;
    reg clk, rst, read, write;
    reg [3:0] data_in;
    wire [3:0] data_out;
    wire full, empty;

    fifo uut(clk, rst, read, write, data_in, data_out, full, empty);

    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        read = 0;
        write = 0;
        data_in = 0;
        #10 rst = 0;
        #10 write = 1; data_in = 4'b0001;
        #10 data_in = 4'b0010;
        #10 data_in = 4'b0011;
        #10 write = 0;
        #10 read = 1;
        #50 read = 0;
        #20 $finish;
    end

    initial begin
        $dumpfile("fifo_tb.vcd");
        $dumpvars(0, tb);
    end
endmodule

