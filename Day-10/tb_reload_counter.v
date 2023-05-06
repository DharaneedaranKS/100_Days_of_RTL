`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 09:03:52
// Design Name: 
// Module Name: tb_reload_counter
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


module tb_reload_counter( );

    reg clk, load_i, reset;
    reg [3:0] load;
    wire [3:0] count_out;
    
    reload_counter dut(.load_i(load_i), .load(load), .clk(clk), .count_out(count_out), .reset(reset));
    
    always begin
        #5 clk = 1'b1; 
        #5 clk = 1'b0;
    end
    
    integer i, cycles;
    initial begin
        reset <= 1'b1;
        load_i <= 1'b0;
        load <= 4'h0;
        @(posedge clk);
            reset <= 1'b0;
            for (i=0; i<3; i=i+1) begin
                load_i <= 1;
                load <= 3*i;
                cycles = 4'hF - load[3:0];
                @(posedge clk);
                    load_i <= 0;
                    while (cycles) begin
                        cycles = cycles - 1;
                        @(posedge clk);
                    end
            end
         end
    
endmodule
