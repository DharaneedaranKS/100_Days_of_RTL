`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 01:11:55
// Design Name: 
// Module Name: lfsr
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


module lfsr(
    input clk,
    input reset,
    output reg [3:0] x_o
    );
    
    always@(posedge clk or negedge reset) begin
        if (reset == 1'b0)
            x_o <= 4'b1111;
        else 
            x_o <= {x_o[2:0], x_o[3]^x_o[1]};
    end
    
endmodule
