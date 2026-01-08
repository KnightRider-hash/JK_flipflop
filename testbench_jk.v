`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2026 20:05:52
// Design Name: 
// Module Name: testbench_jk
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
`timescale 1ns/1ps

module testbench_jk();


reg J, K;
reg CL,R;        // clock must be reg
wire Q;

jk_ff dut (
    .j(J),
    .k(K),
    .clk(CL),
    .reset(R),
    .q(Q)
);

// Clock generation (10 ns period)
always #5 CL = ~CL; 



initial begin
    // Initialize
    CL = 0;
    J  = 0;
    K  = 0;
    R  = 0;
    
      R = 1;
     @(posedge CL);
     R = 0;
     J = 0; K = 1;   // Reset
     @(posedge CL)
     J = 1; K = 0;  //set
     @(posedge CL)
     
     J = 1; K = 1;   // Toggle
     @(posedge CL)
     J = 0; K = 0;   //Hold
     @(posedge CL)
     J=1; K= 0;
     @(posedge CL)
    
     R=1;
     @(posedge CL) 
     R =0;
     @(posedge CL)   

    #20 $stop;
end

endmodule

