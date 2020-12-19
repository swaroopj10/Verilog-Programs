`include "gates.v"
module test_gates;
wire [2:0]y;
reg a,b;
gates dut(.y(y),.a(a),.b(b));
initial
begin
$dumpfile("gates.vcd");
$dumpvars(0,test_gates);
a=1'b0;
b=1'b0;
#50;
a=1'b0;
b=1'b1;
#50;
a=1'b1;
b=1'b0;
#50;
a=1'b1;
b=1'b1;
#50;
end
endmodule