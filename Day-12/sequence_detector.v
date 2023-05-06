`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 23:00:54
// Design Name: 
// Module Name: sequence_detector
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


module sequence_detector(
    input clk,
    input reset,
    input x_i,
    output reg det_o
    );
    
    reg [11:0] in;
    
    always @(posedge clk) begin
        if (reset == 0)
            in <= 12'b0;
        else begin
        in <= in<<1;
        in[0] <= x_i;
        if (in == 12'b111011011011)
           det_o <= 1'b1;
        else 
           det_o <= 1'b0;
        end
    end
    
endmodule
