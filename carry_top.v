module carry_top(
	input a [3:0] ,
        input [3:0] b,
	input cin,
	output [3:0] sum,
	output cout);

wire [4:0] carry;

carry_logic dut(a,b,cin,carry);

half_adder ha1 (a[0], b[0], sum[0]);
full_adder fa1 (a[1], b[1], carry[1], sum[1]);
full_adder fa2 (a[2], b[2], carry[2], sum[2]);
full_adder fa3 (a[3], b[3], carry[3], sum[3]);

assign cout = carry[4];
endmodule
