`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2023 02:13:08
// Design Name: 
// Module Name: tb_count
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


module tb_count();
    reg clk;
    reg reset;
    wire [7:0]out;
    
    odd_count dut(.clk(clk), .reset(reset), .out(out));
    
    always begin
        #1 clk = ~clk;
        
    end 
   
    initial begin
        clk <= 0;
        reset <= 1'b1;
        #15
        reset <= 1'b0;   
    end
endmodule
