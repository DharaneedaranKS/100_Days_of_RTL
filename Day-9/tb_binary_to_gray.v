`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 22:24:25
// Design Name: 
// Module Name: tb_binary_to_gray
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


module tb_binary_to_gray( );

    parameter len = 4;
    reg [len-1:0] in;
    wire [len-1:0] out;
    integer i;
    
    binary_to_gray #(len) dut(.in(in), .out(out));
    
   initial begin
    for (i=0; i<2*len; i=i+1) begin
      in = i;
      #5;
    end
  end
    

endmodule
