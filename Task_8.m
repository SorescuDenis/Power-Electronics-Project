clear all; close all; clc;

Task_6

% D=0:0.001:1;
% n=0.5;
% for i=1:length(D)
%     f(i)=(1-D(i))^2/(D(i)+n);
% end
% max(f)

CCM_D2=simplify(ILM/(n+1)-IL3-dilm/(2*(n+1))+dil3/2)
CCM_D3=simplify(ILM/(n+1)-dilm/(2*(n+1)))