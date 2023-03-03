`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 04:49:01
// Design Name: 
// Module Name: tb_edge_detector
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


module tb_edge_detector;

    reg clk, a, reset;
    wire out;
    integer i;
    
    edge_detector dut(.clk(clk), .a(a), .res(reset), .out(out));
    
    always begin
    #5 clk = ~clk;
    end
    
    initial begin
        clk <= 0;
        a <= 0;
        reset <= 1;
        #20
        reset <= 0;
        for(i=0;i<10;i=i+1) begin
           #20 a <= ~a;
        end
        
    end 


endmodule