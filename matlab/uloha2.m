
% https://tinyurl.com/263cmd2z

U1 = 130;
U2 = 180;

R1 = 350;
R2 = 600;
R3 = 195;
R4 = 650;
R5 = 80;

R12 = R1 + R2;
R34 = (R3 * R4) / (R3 + R4);

Ri = (R12 * R5) / (R12 + R5);

Ix = (U2 - U1) / (R5 + R12);
Ui = (R12 * Ix) + U1;

I_R34 = Ui / (Ri + R34);

% U_R34 = U_R4
U_R34 = R34 * I_R34;
I_R4 = U_R34 / R4 * 1000;

fprintf("I_R4 = %f mA\n", I_R4);
fprintf("U_R4 = %f V\n", U_R34);
