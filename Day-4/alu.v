`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 06:32:58
// Design Name: 
// Module Name: alu
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


module alu( input [7:0]a,
   input [7:0]b,
   input [2:0]op,
   output reg [7:0]res_o
    );
    
    parameter ADD = 3'b000,
              SUB = 3'b001,
              SLL = 3'b010,
              LSR = 3'b011,
              AND = 3'b100,
              OR = 3'b101,
              XOR = 3'b110,
              EQL = 3'b111;
              
     reg carry;
     
     always@(*) begin 
        
        case (op)
           ADD : {carry, res_o} <= a+b;
           SUB : res_o <= a-b;
           SLL: res_o <= a<< b[2:0];
           LSR : res_o <= a >> b[2:0];
           AND : res_o <= a&b;
           OR : res_o <= a| b;
           XOR : res_o <= a^b;
           EQL : res_o <= a== b;
           endcase
           
       end
           
         
    
endmodule
