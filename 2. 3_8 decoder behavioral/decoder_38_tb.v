module decoder_38_tb;

reg [2:0] Data_in;
wire [7:0] Data_out;

decoder_38 dut (Data_in,Data_out);

initial 
begin

Data_in = 3'b000; #100;
Data_in = 3'b001; #100;
Data_in = 3'b010; #100;
Data_in = 3'b011; #100;
Data_in = 3'b100; #100;
Data_in = 3'b101; #100;
Data_in = 3'b110; #100;
Data_in = 3'b111; #100;

end

initial
$monitor("Data in=%b, Data out=%b",Data_in,Data_out);
      
endmodule
