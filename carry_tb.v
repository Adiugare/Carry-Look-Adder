module carry_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

carry_top dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
	a=4'b0; b=4'b0; cin=0;
	#10; a=4'b0101; b=4'b1101; cin=0;
	#10; a=4'b0101; b=4'b0010; cin=0;
	#10; a=4'b1000; b=4'b0011; cin=1;
	#10; a=4'b1001; b=4'b1100; cin=1;
	#10;
	$stop;
end
initial 
	$monitor("time=%0t, a=%b, b=%b, cin=%b, sum=%b, cout=%b", $time, a, b, cin, sum, cout);
endmodule
