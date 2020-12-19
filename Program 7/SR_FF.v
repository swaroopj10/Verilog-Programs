module SR_FF (sr, clk, q, qb);
input [1:0] sr;
input clk;
output reg q=1'b0;
output reg qb;
always @ (posedge clk)
begin
 case (sr)
 2'b00 : q = q ;
 2'b01 : q = 1'b0 ;
 2'b10 : q = 1'b1 ;
 2'b11 : q = 1'bz ;
 endcase
 qb =~ q;
 end
endmodule