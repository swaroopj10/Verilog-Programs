 `include "jk_flipflop1.v"
 module JK_ff_tb;
 reg clk;
 reg reset;
 reg j,k;
 wire q;
 wire qb;
jk_flipflop1 flipflop(.clk(clk),.reset(reset),.j(j),.k(k),.q(q),.q_bar(qb));
 initial begin
 $dumpfile("jk.vcd");
$dumpvars(0,JK_ff_tb);
$monitor(clk,j,k,q,qb,reset);
j=1'b0;
k=1'b0;
reset=1;
clk=1;
#10
reset=0;
j=1'b1;
k=1'b0;
#100
reset=0;
j=1'b0;
k=1'b1;
#100
reset=0;
j=1'b1;
k=1'b1;
#100
reset=0;
j=1'b0;
k=1'b0;
#100
reset=1;$finish;
 end
 endmodule 