clear all; close all; clc;

Task_7

syms dvo dIl3 dVc1 d

Lm_min=simplify(solve(dilm-1/4*ILM,Lm))
L3_min=simplify(solve(dil3-1/4*IL3,L3))
C1_min=simplify(solve(dvc1-dVc1,C1))
C2_min=simplify(solve(dvc2-dvo,C2))

% clear all;

syms Vg D Vo n 
VC=Vg*D*(n+D)/(1-D); 
n=simplify(solve(VC-Vo,n));

Vg_min=15; Vg_max=18; Vo=25; Po_min=25; Po_max=50; dvo=0.25; fs=100e3; 
R_max=Vo^2/Po_min; R_min=Vo^2/Po_max;

D_max=0.6; % chosen by us
D=D_max; Vg=Vg_min;
n=eval(n);
D_min=-(Vo + Vg_max*n - (Vg_max^2*n^2 + 2*Vg_max*Vo*n + 4*Vg_max*Vo + Vo^2)^(1/2))/(2*Vg_max);


R=R_max; Vg=Vg_max; 
dVc1=0.34;
L1=eval(Lm_min)
L2=n^2*L1
L3=eval(L3_min)
C1=eval(C1_min)
C2=eval(C2_min)







