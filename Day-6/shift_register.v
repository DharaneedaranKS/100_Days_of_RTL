`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 07:01:40
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input clk,
    input reset,
    input x_i,
    output reg [2:0] out
    );
    
    always@(posedge clk or negedge reset) begin
        if (reset)
            out <= 3'b000;
        else begin
            out <= out << 1;
            out <= out + x_i;
        end
    end
    
endmodule
