
U1 = 2;
U2 = 3;

R1 = 12;
R2 = 10;

L1 = 0.17;
L2 = 0.08;

C1 = 0.00000015;
C2 = 0.00000009;

f = 65;

omega = 2 * pi * f;

Z_C1 = -1j / (omega * C1);
Z_C2 = -1j / (omega * C2);

Z_L1 = 1j * omega * L1;
Z_L2 = 1j * omega * L2;

A = [Z_C1 + R1 + Z_L2, 0, -Z_L2;
     0, Z_L1 + Z_C2, -Z_C2;
     -Z_L2, -Z_C2, R2 + Z_L2 + Z_C2];

B = [U2 - U1; U1; 0];

X = A \ B;

I_b = X(2, 1);

sI_b = abs(I_b);

I_L1 = I_b;
U_L1 = I_L1 * Z_L1;

sU_L1 = abs(U_L1);

phi = atan(imag(I_b) / real(I_b));
