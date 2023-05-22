%usa [psal]=genPDF(i,p,dx)
clear
clc
tic
archivo=strcat('p.txt');
fi = fopen(char(archivo), 'w') ;
bines=40;
dx=1/bines;
px(1)=1;
for i=2:bines px(i)=0; end  %inicializo un bin en uno y el resto en ceros
genPDF(1,px,dx,fi)
toc