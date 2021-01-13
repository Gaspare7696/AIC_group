gm1=142.5e-6;
gm2=390.1e-6;
gm3=36.77e-3;
gmf=12.12e-3;
CL=500e-12;

%If we want wGBW=1.5MHz:

Cc1= 15e-12 

Rc1=1/gm3

Cc2=Cc1*gm2/(gm3-gm2)

Rc2=CL/(gm3*Cc2) - gmf/(gm3*gm2)
