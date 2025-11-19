/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Wed Nov 19 15:25:42 2025
/////////////////////////////////////////////////////////////


module carry_top ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  tri   [3:0] a;
  tri   [3:0] b;
  tri   cin;
  tri   [3:0] sum;
  tri   cout;
  tri   [3:0] carry;
  wire   SYNOPSYS_UNCONNECTED__0;

  carry_logic dut ( .p1(a), .p2(b), .p3(cin), .p4({cout, carry[3:1], 
        SYNOPSYS_UNCONNECTED__0}) );
  half_adder ha ( .p1(a[0]), .p2(b[0]), .p3(sum[0]) );
  full_adder fa1 ( .p1(a[1]), .p2(b[1]), .p3(carry[1]), .p4(sum[1]) );
  full_adder fa2 ( .p1(a[2]), .p2(b[2]), .p3(carry[2]), .p4(sum[2]) );
  full_adder fa3 ( .p1(a[3]), .p2(b[3]), .p3(carry[3]), .p4(sum[3]) );
endmodule
