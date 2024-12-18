
% https://tinyurl.com/245z5n3z

U1 = 120;
U2 = 50;

I = 0.7;

R1 = 53;
R2 = 49;
R3 = 65;
R4 = 39;
R5 = 32;
R6 = 48;

A = [-(1/R1 + 1/R3 + 1/R4 + 1/R2), (1/R3 + 1/R4), 0;
     (1/R3 + 1/R4), -(1/R3 + 1/R4 + 1/R6), 1/R6;
     0, 1/R6, -(1/R6 + 1/R5)];

B = [(U2/R3 - U1/R1); -(I + U2/R3); I];

X = A \ B;

Ua = X(1, 1);
I_R2 = Ua / R2;

fprintf("I_R2 = %f mA\n", I_R2);
fprintf("U_R2 = %f V\n", Ua);