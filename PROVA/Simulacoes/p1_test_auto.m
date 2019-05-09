clear all 
clc
close all
EW=8; % tamanho do expoente
FW=18; % tamanho da mantissa

rand('twister',140020161);

Xir_arq_float = fopen('Xir_arq_float.txt','w');
Xul_arq_float = fopen('Xul_arq_float.txt','w');
Xir_arq_bin = fopen('Xir_arq_bin.txt','w');
Xul_arq_bin = fopen('Xul_arq_bin.txt','w');

sz_arq_float = fopen('sz_arq_float.txt','w');
sz_arq_bin = fopen('sz_arq_bin.txt','w');
sk_arq_float = fopen('sk_arq_float.txt','w');
sk_arq_bin = fopen('sk_arq_bin.txt','w');

for i =1:100
  Xul = rand();
  Xir = rand();
  fprintf(Xir_arq_float,'%f\n',Xir);
  fprintf(Xul_arq_float,'%f\n',Xul);
  
  Xul = float2bin(EW,FW,Xul);
  Xir = float2bin(EW,FW,Xir);
  fprintf(Xir_arq_bin,'%s\n',Xir);
  fprintf(Xul_arq_bin,'%s\n',Xul);
end


sk = (rand()+2)/4;% escala 0.5 a 0.75
sz = (rand()+(1/15))/(10/15);% escala 0.1 a 0.25
sk_bin = float2bin(EW,FW,sk);
sz_bin = float2bin(EW,FW,sz);

fprintf(sz_arq_float,'%f\n',sz);
fprintf(sz_arq_bin,'%s\n',sz_bin);
fprintf(sk_arq_float,'%f\n',sk);
fprintf(sk_arq_bin,'%s\n',sk_bin);
  
fclose(Xir_arq_float);
fclose(Xul_arq_float);
fclose(Xir_arq_bin);
fclose(Xul_arq_bin);

fclose(sz_arq_float);
fclose(sz_arq_bin);
fclose(sk_arq_float);
fclose(sk_arq_bin);
clear all 
clc
close all