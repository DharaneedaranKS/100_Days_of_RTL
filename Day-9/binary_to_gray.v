`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 22:15:18
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray #(parameter len = 4)(
    input [len-1:0] in,
    output reg [len-1:0] out
    );
    
    integer i;
    
    always @(in) begin
        
        out[len-1] = in[len-1];
        for (i=0;i<len-1;i=i+1) begin
            out[i] = in[i]^in[i+1];
        end
        
    end
    
endmodule
