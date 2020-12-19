`include "fulladd.v"
module test_fa;
reg a,b,cin;
wire s,cout;
fulladd f1(a,b,cin,s,cout);
initial
begin
$dumpfile("fa.vcd");
$dumpvars(0,test_fa);
a=11;b=10;cin=01;
#5
a=10;b=11;cin=10;
#5
a=01;b=01;cin=00;
#100 $finish;
end
endmodule