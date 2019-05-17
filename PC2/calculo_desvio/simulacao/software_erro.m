clear all 
clc
close all
EW=8; % tamanho do expoente
FW=18; % tamanho da mantissa
format long;

X_arq_bin   = fopen('vel_bin.txt','r');
X_bin = zeros(100,1);

for i=1:100
    parse = fgets(X_arq_bin);
    X_bin(i) = bin2float(parse ,EW,FW);
end

X_arq_float_soft = importdata('X_arq_float_.txt');
desv_pad = (sum((X_arq_float_soft - X_bin).^2)/100).^(1/2);