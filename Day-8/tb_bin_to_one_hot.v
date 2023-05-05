`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 17:17:00
// Design Name: 
// Module Name: tb_bin_to_one_hot
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


module tb_bin_to_one_hot();

    reg [3:0] bin;
    wire [15:0] one_hot;
    integer i;
    
    bin_to_one_hot dut(.bin(bin), .one_hot(one_hot));
    
    initial begin
       for(i=0; i<16; i=i+1) begin
        bin <= i;
       end
        
    end
    

endmodule
