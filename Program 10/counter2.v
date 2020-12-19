module counter2 ( count,rst,clk);
input rst, clk;
output reg [2:0] count;
always @(posedge (clk))
if (rst)
count<= 3'b000;
else
count<= count + 1;
endmodule