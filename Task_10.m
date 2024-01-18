clear all; close all; clc

Task_6
%VG_max, D_min and R_max simulation parameters done.

Vg=18; R=25; D=0.5637; n=0.5111; L3=180e-6; C1=16.5e-6; C2=1.25e-6; Lm=120e-6; fs=100e3;

VC1=eval(VC1);
VC2=eval(VC2);
ILM=eval(ILM);
IL3=eval(IL3);

dilm=eval(dilm);
dil3=eval(dil3);
dvc1=eval(dvc1);
dvc2=eval(dvc2);

%Semiconductor approximate values derived
IQ_mean=D*ILM
IQ_rms=sqrt(D)*ILM

ID1_mean=D*IL3
ID1_rms=sqrt(D)*IL3

ID2_mean=(1-D)*(ILM/(n+1)-IL3)
ID2_rms=sqrt(1-D)*(ILM/(n+1)-IL3)

ID3_mean=(1-D)*(ILM/(n+1))
ID3_rms=sqrt(1-D)*(ILM/(n+1))

VQ_mean=(1-D)*(Vg+VC1/(n+1))
V_DS=Vg+VC1/(n+1)
V_D3=VC1+n*Vg

