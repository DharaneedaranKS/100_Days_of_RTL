`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 23:13:44
// Design Name: 
// Module Name: tb_sequence_detector
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


module tb_sequence_detector();

    reg clk, reset, x_i;
    wire det_o;
    
    sequence_detector dut(.clk(clk), .reset(reset), .x_i(x_i), .det_o(det_o));
    
    always begin
    #5 clk <= 1'b0;
    #5 clk <= 1'b1;
    end
    
    reg [11:0] seq = 12'b111011011011;
    integer i;
    
    initial begin 
        reset <= 1'b1;
    x_i <= 1'b1;
    @(posedge clk);
    reset <= 1'b0;
    x_i <= 1'b1;
    #15
    //@(posedge clk);
    #1
    for (i=0; i<12; i=i+1) begin
      x_i <= seq[i];
      @(posedge clk);
    end
    for (i=0; i<12; i=i+1) begin
      x_i <= $random%2;
      @(posedge clk);
    end
    end

endmodule
