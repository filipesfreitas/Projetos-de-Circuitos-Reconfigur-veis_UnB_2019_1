clear all
clc
close all
EW=8; % tamanho do expoente
FW=18; % tamanho da mantissa

Xfus_arq_float = importdata('Xfus_arq_float_est.txt');
Xfus_arq_bin_handlle = fopen('Xfus_arq_est_vhdl.txt','r');
Xfus_arq_bin= zeros(100,1);
for i=1:100
   Xfus_arq_bin(i) = bin2float(fgets(Xfus_arq_bin_handlle),EW,FW);
end

% media_float = mean(Xfus_arq_float)
% media_bin = mean(Xfus_arq_bin )
% 
% desvio_padrao_xfusao_fpga = square(sum((Xfus_arq_bin - media_bin).^2)/100)
% desvio_padrao_xfusao_software = square(sum((Xfus_arq_float - media_float).^2)/100)