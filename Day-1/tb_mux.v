`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 11:16:51
// Design Name: 
// Module Name: tb_mux
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


module tb_mux;

    wire out;
    reg in1, in2, select;
    
    mux dut(.a(in1), .b(in2), 
            .sel(select), .out(out));
            
    initial begin 
        in1=1'b0;in2=1'b0;
        select=1'b0; 
        #2    in1=1'b1;
        #2    select=1'b1;
        #2    in2=1'b1;
        #2    $stop();
        end
    
    
endmodule
