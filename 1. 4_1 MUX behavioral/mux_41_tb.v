module mux_41_tb();

reg a,b,c,d;
reg [1:0]s;
wire out;

mux_41 DUT(a, b, c, d, s, out);

initial
begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
s[0] = 1'b0;
s[1] = 1'b0;
end

initial
	begin
	    s[0]=1'b0; s[1]=1'b0; a=1'b1; b=1'b0; c=1'b0; d=1'b0;
	#10 s[0]=1'b1; s[1]=1'b0; a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#10 s[0]=1'b0; s[1]=1'b1; a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#10 s[0]=1'b1; s[1]=1'b1; a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#10;
	end
	
initial
$monitor("i0=%b, i1=%b, i2=%b, i3=%b, s[0]= %d  s[1]= %d  out= %d", a,b,c,d,s[0],s[1],out);

endmodule
