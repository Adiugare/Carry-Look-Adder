module full_adder(a,b,cin,sum,carry);
   input a,b,cin;
   output sum,carry;


half_adder HA1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder HA2(.a(w1),.b(cin),.sum(sum),.carry(w3));
or or1(carry,w2,w3);
endmodule
