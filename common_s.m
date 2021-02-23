Bn = 50e-6 ;%%A/V*^2
W_L = 10 ;
Vthn = 0.7 ;
Rc = @(Gw,Vgs) Gw/(sqrt(2)*Bn*W_L*(Vgs-Vthn));