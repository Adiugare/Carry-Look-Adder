# Carry-Look-Adder
A Carry Lookahead Adder (CLA) improves the speed of binary addition by generating carry signals in parallel rather than sequentially, eliminating the delay associated with ripple-carry adders.

1. Half Adder

A half adder performs addition of two single bits.

Inputs:

A, B

Outputs:

Sum = A ⊕ B

Carry = A · B

Used only for the least significant bit (LSB) when no carry-in is required.

2. Full Adder

A full adder adds three bits: A, B, and a carry-in.

Inputs:

A, B, Cin

Outputs:

Sum = A ⊕ B ⊕ Cin

Cout = (A · B) + (Cin · (A ⊕ B))

Used for all bits except the LSB.

3. Carry Lookahead Logic

To generate carries quickly, the CLA uses two important signals:

Generate (G)
Gi = Ai · Bi


A carry is generated at bit i.

Propagate (P)
Pi = Ai ⊕ Bi


A carry is propagated through bit i.

Carry Equations for a 4-bit Adder

Let C0 = Cin.

C1 = G0 + (P0 · C0)

C2 = G1 + (P1 · G0) + (P1 · P0 · C0)

C3 = G2 + (P2 · G1) + (P2 · P1 · G0)
           + (P2 · P1 · P0 · C0)

C4 = G3 + (P3 · G2) + (P3 · P2 · G1)
           + (P3 · P2 · P1 · G0)
           + (P3 · P2 · P1 · P0 · C0)


All these carries are computed in parallel, which significantly reduces delay.

4. Structural Assembly of the CLA

Inputs A[3:0], B[3:0], and Cin are applied.

The carry lookahead block computes C1, C2, C3, and C4 using the P and G signals.

Adders:

Bit 0 → Half Adder

Bit 1–3 → Full Adders with carry-ins C1, C2, C3

The sum outputs are generated for all bits.

Cout = C4 is the final carry.

5. Why the CLA Is Fast

Ripple carry adders must wait for each carry to propagate.

CLA computes all carries simultaneously using logic equations.

This reduces the overall addition delay and is why CLA is used in high-performance arithmetic circuits like CPUs.
