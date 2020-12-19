`include "s_nandnor.v" //Include the main module here
module tb_nandnor;
reg a,b;
wire [1:0]y;
s_nandnor ob(a,b,y);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,tb_nandnor);
a=1'b0;b=1'b0;
#20
a=1'b0;b=1'b1;
#20
a=1'b1;b=1'b0;
#20
a=1'b1;b=1'b1;
#20
$finish;
end
endmodule