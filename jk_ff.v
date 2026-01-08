`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2026 16:01:32
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,
    input k,
    input clk,
    input reset,
    output reg q
    );
    initial
    q<=0;
    always@(posedge clk or posedge reset)
    if(reset)
     q<=1'b0;
    else
     begin
     case({j,k})
     2'b00:;
     2'b01:q<=0;
     2'b10:q<=1;
     2'b11:q<=~q;
    endcase
    end  
endmodule
