`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 01:35:54
// Design Name: 
// Module Name: mux
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


module mux(
    input a,
    input b,
    input sel,
    output reg out
    );
    
    
    always@(*) begin
       casez(sel)
        1'b0 : out = a;
        1'b1 : out = b;
       endcase 
     end
endmodule
