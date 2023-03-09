`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 01:21:33
// Design Name: 
// Module Name: tb_lfsr
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


module tb_lfsr();

    reg clk, reset;
    wire [3:0]out;
    
    lfsr dut(.clk(clk), .reset(reset), .x_o(out));
    
    always begin
        #5 clk = ~clk;
    end
    
    initial begin 
        clk <= 0;
        reset <= 0;
        #15
        reset <=1;
    end
    

endmodule
