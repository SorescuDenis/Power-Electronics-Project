clear all; close all; clc;

Task_3

dilm=Vlm_on*D/(Lm*fs)
dil3=simplify((1-D)*(VC1-VC2)/(L3*fs))
dvc1=simplify(D*IL3/(C1*fs))
dvc2=dil3/(8*C2*fs)