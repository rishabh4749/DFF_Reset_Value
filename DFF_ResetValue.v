`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 00:30:23
// Design Name: 
// Module Name: DFF_ResetValue
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


module DFF_ResetValue(
    input clk,
    input [7:0] d,
    input reset,
    output reg [7:0] q
    );
    integer i;
    always @ (negedge clk) begin
    if(reset)
    q<=8'h34;
    else
    begin
    for(i=0;i<8;i=i+1)
    q[i]<=d[i];
    end
    end
endmodule
