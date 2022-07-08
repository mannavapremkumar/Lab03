module mux_41 ( a, b, c, d, s, out);

input a, b, c, d;
input [1:0]s;
output reg out;

always @ (s)
begin

case (s)
2'b00 : out <= a;
2'b01 : out <= b;
2'b10 : out <= c;
2'b11 : out <= d;
endcase

end

endmodule
