clc
clear all
close all
N = 100;

sk0 = importdata('sk_arq_float.txt','w');
sz   = importdata('sz_arq_float.txt','w');

Xul  =importdata('Xul_arq_float.txt');
Xir  =importdata('Xir_arq_float.txt');

Xfus = zeros(N,1);
sk = sk0;

for i = 1:1:N
   if i == 1
      Gk = sk/(sk+sz);
   end 
   
   sk = sk - Gk*sk;
   Xfus(i) = Xul(i) + Gk*(Xir(i) - Xul(i));
end
Xfus_arq = fopen('Xfus_arq_float_est.txt','w');
fprintf(Xfus_arq,'%f\n',Xfus);
close all;
