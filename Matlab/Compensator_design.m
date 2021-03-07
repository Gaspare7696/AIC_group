clc
clear all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%VDD=1.5V, VSS=-1.5V

%%%SCHEMATIC%%%

gm1=117.4e-6;
gm2=251.7e-6;
gm3=21.8e-3;
gmf=7.8e-3;

CL=500e-12;
GBW=1.5e6;

%If we want wGBW=1.5MHz:

Cc1=gm1/(GBW*2*pi)

Rc1=1/gm3

Cc2=Cc1*gm2/(gm3-gm2)

Rc2=CL/(gm3*Cc2) - gmf/(gm3*gm2)

damping_factor=0.5*(CL/Cc2+gm3/gm2-1)*(CL/Cc2*(gm3/gm2-1))^(-0.5)

%%%LAYOUT%%%

gm1_L=29.26e-6*4;
gm2_L=30.16e-6*4*2;
gm3_L=2.724e-3*8;
gmf_L=1.948e-3*4;

Cc1_L=gm1_L/(GBW*2*pi)

Rc1_L=1/gm3_L

Cc2_L=Cc1_L*gm2_L/(gm3_L-gm2_L)

Rc2_L=CL/(gm3_L*Cc2_L) - gmf_L/(gm3_L*gm2_L)

Co2_L=1.09e-12+65.42e-15 %%Cgs10//Cds8

verification=Cc2_L/((gm1_L*gm2_L/((gm3_L-gm2_L)^2))*Co2_L)

