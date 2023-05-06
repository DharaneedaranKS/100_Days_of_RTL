`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 08:54:51
// Design Name: 
// Module Name: reload_counter
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


module reload_counter(
    input load_i,
    input [3:0] load,
    input reset,
    input clk,
    output reg [3:0] count_out
    );
    
    
    always @(posedge clk) begin
        if (reset == 1'b1)
            count_out <= 4'b0;
        else begin
            if (load_i == 1'b0) begin
                    count_out = count_out + 1;
            end
            else 
                count_out <= load;
         end
    end

endmodule
