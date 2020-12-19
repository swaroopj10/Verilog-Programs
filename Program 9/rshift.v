module rshift(input clk,input clrb,input sdr,output reg [3:0]q);
always @(posedge(clk),negedge(clrb))
if(~clrb)
q<=4'b0000;
else
q<={sdr,q[3:1]};
endmodule