`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2023 01:31:06
// Design Name: 
// Module Name: tb_alu_8bit
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


module tb_alu_8bit( );

    reg [7:0]a_i;
    reg [7:0]b_i;
    reg [2:0]op_i;
    wire [7:0]o_p;
    
    alu dut(.a(a_i), .b(b_i), .op(op_i), .res_o(o_p));
    
    integer i;
    
    initial begin 
       
       a_i = 8'd23;
       b_i = 8'd12;
       for(i=0; i<8; i=i+1) begin
         op_i = i;
       end  
    end
endmodule
