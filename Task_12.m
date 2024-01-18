clear all; close all; clc;
syms Vg D R Rc Ron VD VC1 VC2 ILM IL3 n 

%Inductor voltages and condensator currents in ON state
Vlm_on=Vg-ILM*Ron;
Vl3_on=-(R/(R+Rc)*VC2+IL3*(R*Rc)/(R+Rc))-Vg-VD+VC1;
Ic1_on=-IL3;
Ic2_on=IL3-(R/(R+Rc)*VC2+IL3*(R*Rc)/(R+Rc))/R;

%Inductor voltages and condensator currents in OFF state
Vlm_off=(-VC1-2*VD)/(n+1);
Vl3_off=-(R/(R+Rc)*VC2+IL3*(R*Rc)/(R+Rc))+VC1+VD;
Ic1_off=ILM/(n+1)-IL3;
Ic2_off=IL3-(R/(R+Rc)*VC2+IL3*(R*Rc)/(R+Rc))/R;

%Charge balance and volt-second balance for condensators and inductances
Eq1=D*Vlm_on+(1-D)*Vlm_off;
Eq2=D*Vl3_on+(1-D)*Vl3_off;
Eq3=D*Ic1_on+(1-D)*Ic1_off;
Eq4=D*Ic2_on+(1-D)*Ic2_off;

solution=solve(Eq1,Eq2,Eq3,Eq4,VC1,VC2,ILM,IL3);
VC1=simplify(solution.VC1);
VC2=simplify(solution.VC2);
ILM=simplify(solution.ILM);
IL3=simplify(solution.IL3);

M=simplify(VC2/Vg);
% Rc=0; VD=0; Ron=0;
% M=eval(M);
% M=simplify(M)

Vg=15; Vo=25; n=0.5111; R=25; VD=0.7; Rc=10e-3; Ron=0.38;
M=eval(M);
sol1=solve(M-Vo/Vg,D);
D_max=eval(real(sol1(2)))

Vg=18;
M=eval(M);
sol2=solve(M-Vo/Vg,D);
D_min=eval(real(sol2(2)))



