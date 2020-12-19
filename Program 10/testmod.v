`include "counter2.v"
module testmod;
reg r,c;
wire [2:0] ct;
counter2 countbeh (ct,r,c);
initial
begin
 $dumpfile("count.vcd");
$dumpvars(0,testmod);
 r =1;
 c=0;
 #100 r=0;
 #200 $finish;
end
always #5 c=~c;
endmodule