`include "s_andornot.v"
module tb_andornot;
reg a,b;
wire [2:0]y;
s_andornot ob(a,b,y);
initial
begin
$dumpfile("test.vcd"); //.vcd ->value change dump
$dumpvars(0,tb_andornot); //<levels><test bench module name>

a=1'b0;b=1'b0;
#20 //delay in between ach input
a=1'b0;b=1'b1;
#20
a=1'b1;b=1'b0;
#20
a=1'b1;b=1'b1;
#20

$finish;

end
endmodule