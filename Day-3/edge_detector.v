`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 04:38:37
// Design Name: 
// Module Name: edge_detector
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


module edge_detector(
    input a,
    input clk,
    input res,
    output out
    );
    
    reg out_int;
    
    always@(posedge clk or posedge res) begin
        if(res)
           out_int <= 0;
        else 
           out_int <= a;
    end
    
    assign out = a&~out_int;
        
    
endmodule
