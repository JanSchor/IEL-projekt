
% https://tinyurl.com/2aru8mwb

U1 = 125;
U2 = 65;

R1 = 510;
R2 = 500;
R3 = 550;
R4 = 250;
R5 = 300;
R6 = 800;
R7 = 330;
R8 = 250;

Ra = (R2*R3)/(R2+R3+R4);
Rb = (R2*R4)/(R2+R3+R4);
Rc = (R3*R4)/(R2+R3+R4);

Rc7 = Rc + R7;

R56 = (R5*R6)/(R5+R6);

Rb56 = Rb + R56;

Rb56c7 = (Rb56*Rc7)/(Rb56+Rc7);

R = R1 + Ra + Rb56c7 + R8;

U = U1 + U2;

I = U/R;

U_Rb56c7 = Rb56c7 * I;

I_Rc7 = U_Rb56c7 / Rc7;

U_R7 = I_Rc7 * R7;
U_R8 = I * R8;
U_R1 = I * R1;

U_R3 = U - U_R1 - U_R7 - U_R8;
I_R3 = U_R3 / R3 * 1000;

fprintf("I_R3 = %f mA\n", I_R3);
fprintf("U_R3 = %f V\n", U_R3);