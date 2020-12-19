module test;
reg a, b, c, d, sel1, sel2;
wire y;
mux4to1 mg(a, b, c, d, sel1, sel2, y);
initial
begin
 $dumpfile("mux4to1.vcd");
$dumpvars(0, test);
a = 0; b = 0; c = 0; d = 0; sel1 = 0; sel2 = 0;
#20
a = 1; b = 0; c = 0; d = 0; sel1 = 0; sel2 = 0;
#20
a = 0; b = 0; c = 0; d = 0; sel1 = 0; sel2 = 1;
#20
a = 0; b = 1; c = 0; d = 0; sel1 = 0; sel2 = 1;
#20
a = 0; b = 0; c = 0; d = 0; sel1 = 1; sel2 = 0;
#20
a = 0; b = 0; c = 1; d = 0; sel1 = 1; sel2 = 0;
#20
a = 0; b = 0; c = 0; d = 0; sel1 = 1; sel2 = 1;
#20
a = 0; b = 0; c = 0; d = 1; sel1 = 1; sel2 = 1;
#20
$finish;
end
endmodule