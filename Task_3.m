clear ; close all; clc;

syms Vg R D VC1 VC2 ILM IL3 n fs Lm C1 C2 L3


Vlm_on=Vg;
Vl3_on=-VC2-Vg+VC1;
Ic1_on=-IL3;
Ic2_on=IL3-VC2/R;


Vlm_off=-VC1/(n+1);
Vl3_off=-VC2+VC1;
Ic1_off=ILM/(n+1)-IL3;
Ic2_off=IL3-VC2/R;


Equ1=D*Vlm_on+(1-D)*Vlm_off;
Equ2=D*Vl3_on+(1-D)*Vl3_off;
Equ3=D*Ic1_on+(1-D)*Ic1_off;
Equ4=D*Ic2_on+(1-D)*Ic2_off;

solution=solve(Equ1,Equ2,Equ3,Equ4,VC1,VC2,ILM,IL3);
VC1=simplify(solution.VC1);
VC2=simplify(solution.VC2);
ILM=simplify(solution.ILM);
IL3=simplify(solution.IL3);



