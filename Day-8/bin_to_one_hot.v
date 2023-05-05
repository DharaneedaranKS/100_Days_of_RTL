`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 17:14:05
// Design Name: 
// Module Name: bin_to_one_hot
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


module bin_to_one_hot(
    input [3:0] bin,
    output reg [15:0] one_hot
    );
    
    always @(bin) begin
       one_hot = 1'b1<<bin;
    end
        
endmodule
