`include "decoder.v"
module test_dec;
reg [1:0]Din;
reg En;
wire [3:0]Do;
decoder udue(.Do(Do),.Din(Din),.En(En));
initial begin
$dumpfile("decoder.vcd");
$dumpvars(0,test_dec);
En=1;

Din=2'b00;#100;
Din=2'b01;#100;
Din=2'b10;#100;
Din=2'b11;#100;
end
endmodule