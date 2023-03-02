`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 03:38:30
// Design Name: 
// Module Name: tb_dff
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


module tb_dff;

    reg clock, data, reset;
    wire q;
    
    dff dut(.clk(clock), .d(data), .reset(reset), .q(q));
    

    always begin
     #5
     clock = ~clock;   
     end
     
     initial begin
     clock <= 1'b0;
      reset <= 1'b0;
      data <= 1'b0;
      #15
      data <= 1'b1;
      #15
      reset <= 1'b1;
      data <= 1'b0;
      #15
      data <= 1'b1;
     end
        
    
    

endmodule
