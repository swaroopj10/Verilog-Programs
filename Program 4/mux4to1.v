module mux4to1(a, b, c, d, sel1, sel2, y);
input a, b, c, d, sel1, sel2;
output y;
wire and1, and2, and3, and4;
and g1(and1, a, ~sel1, ~sel2);
and g2(and2, b, ~sel1, sel2);
and g3(and3, c, sel1, ~sel2);
and g4(and4, d, sel1, sel2);
or g5(y, and1, and2, and3, and4);
endmodule