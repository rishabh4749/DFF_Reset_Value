`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 00:33:22
// Design Name: 
// Module Name: DFF_ResetValue_tb
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


module DFF_ResetValue_tb(

    );
    reg clk;
    reg [7:0] d;
    reg reset;
    wire [7:0] q;
    DFF_ResetValue dut(.clk(clk),.q(q),.d(d),.reset(reset));
    always #10 clk=~clk;
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%h q=%h reset=%0b",$time,d,q,reset);
    #40 $finish;
    end
    initial
    begin
    clk<=0;
    #19;
    d<=8'h98;
    reset<=1;
    #29;
    d<=8'h67;
    reset<=1;
    end
endmodule
