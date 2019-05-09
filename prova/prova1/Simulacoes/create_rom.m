clear all
close all
clc
EW=8; % tamanho do expoente
FW=18; % tamanho da mantissa

handle_rom_xir  = fopen("rom_xir.coe",'w');
handle_rom_xul  = fopen("rom_xul.coe",'w');

sz = importdata("sz_arq_float.txt");
sk = importdata("sk_arq_float.txt");

fprintf(handle_rom_xir,"memory_initialization_radix = 2;\nmemory_initialization_vector=\n");%escreve cabeçalho
fprintf(handle_rom_xul,"memory_initialization_radix = 2;\nmemory_initialization_vector=\n");%escreve cabeçalho

rand('twister',140020161);%semente para gerar as matriculas

for i= 1:1:100

 xul = 100 + sk*(randn());
 xir = 100 + sz*(randn());
 
 xul = float2bin(EW,FW,xul);
 xir = float2bin(EW,FW,xir);

 if i == 100
   fprintf(handle_rom_xir,"%s;",xir);
   fprintf(handle_rom_xul,"%s;",xul);

else
fprintf(handle_rom_xir,"%s,\n",xir);
fprintf(handle_rom_xul,"%s,\n",xul);
end
end
close all
