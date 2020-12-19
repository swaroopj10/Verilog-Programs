module s_andornot(a,b,y);
input a,b;
output [2:0]y;
and f(y[2],a,b);
or o(y[1],a,b);
not n(y[0],a);
endmodule