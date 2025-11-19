module carry_logic(
	input [3:0] a,b,
	input cin,
	output [4:0] carry);
wire [3:0] p,g;

assign p = a ^ b;
assign g = a & b; 

assign carry[0] = cin;
assign carry[1] = g[0] | (p[0] & carry[0]);
assign carry[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & carry[0]);
assign carry[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & carry[0]);
assign carry[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & carry[0]);
endmodule
