module priority_encoder (din, dout);
input [7:0] din;
output [2:0] dout;
reg [2:0] dout;
always @(din)
begin
if (din[7]) dout=3'b111;
else if (din[6]) dout=3'b110;
else if (din[5]) dout=3'b101;
else if (din[4]) dout=3'b100;
else if (din[3]) dout=3'b011;
else if (din[2]) dout=3'b010;
else if (din[1]) dout=3'b001;
else if (din[0]) dout=3'b000;
else dout=3'bX;

end
endmodule
