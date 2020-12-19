module encoder(Do,Din,En);
input En;
input[3:0]Din;
output [1:0]Do;
reg [1:0]Do;
always@(En or Din)
begin
if(En)
begin
case(Din)
4'b0001:Do=2'b00;
4'b0010:Do=2'b01;
4'b0100:Do=2'b10;
4'b1000:Do=2'b11;
default:Do=2'bzz;
endcase
end
end
endmodule