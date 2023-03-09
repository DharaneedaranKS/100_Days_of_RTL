`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 07:08:04
// Design Name: 
// Module Name: tb_shift_register
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


module tb_shift_register();

    reg clk, reset, x_i;
    wire [2:0] out;
    integer i;
    
    shift_register dut(.clk(clk), .reset(reset), .x_i(x_i), .out(out));
    
    always begin
     #5 clk = ~clk;
     end
     
    initial begin
       clk <= 1;
       reset <= 1;
       x_i <= 0;
       #10 reset <= 0;
       
       for(i=0;i<=20;i=i+1)
        #5 x_i <= $random%2;
    end

endmodule
