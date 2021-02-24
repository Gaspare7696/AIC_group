clc
clear all

%%% BETA MULTIPLIER

Vdd=1.5;
Vss=-1.5;
kn=116e-6;
kp=36e-6;
Vthn=0.76;
Vthp=0.9;
Iref=10e-6;
R=2e3;
k=2;

W_L_1=2/(R^2*kn*Iref)*(1-1/sqrt(k))^2

W_L_2=k*W_L_1

W_L_n=W_L_1

W_L_p=kn/kp*W_L_n

Ln=1.65;
Lp=1.2;

W2=W_L_2*Ln
Wn=W_L_n*Ln
Wp=W_L_p*Lp

%%% START UP CIRCUIT




