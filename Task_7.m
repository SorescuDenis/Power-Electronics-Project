clear all; close all; clc;

Task_6
syms Vo Po 

sol=solve(M_ideal-Vo/Vg,D);
D_new=sol(2);
R=Vo^2/Po;

VC1=subs(VC1,D,D_new);
VC2=subs(VC2,D,D_new);
ILM=subs(ILM,D,D_new);
IL3=subs(IL3,D,D_new);

dilm=subs(dilm,D,D_new);
dil3=subs(dil3,D,D_new);
dvc1=subs(dvc1,D,D_new);
dvc2=subs(dvc2,D,D_new);

%Approximate Values
VQ_mean=(1-D_new)*(Vg+VC1/(n+1));
VD1_mean=(1-D_new)*Vg;
VD2_mean=D_new*Vg;
VD3_mean=D_new*(VC1+n*Vg);

VQ_rms=sqrt((1-D_new))*(Vg+VC1/(n+1));
VD1_rms=sqrt((1-D_new))*Vg;
VD2_rms=sqrt(D_new)*Vg;
VD3_rms=sqrt(D_new)*(VC1+n*Vg);




