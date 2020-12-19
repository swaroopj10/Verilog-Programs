module s_nandnor(a,b,y);
input a,b;
output [1:0]y;
nand f(y[1],a,b);
nor o(y[0],a,b);
endmodule