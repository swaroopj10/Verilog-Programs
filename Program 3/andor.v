module andor(A,B,C,D,Y);
input A,B,C,D;
output Y;
wire al,a2;
and gl(al,A,B);
and g2(a2,C,D);
or g3(Y,al,a2);
endmodule