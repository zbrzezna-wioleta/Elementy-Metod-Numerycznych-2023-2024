clear; //czyści zawartość pamieci sesji w scilab
clc;

M=[2.541,2.112;1.8720,1.5560];
E=[0,0;0,0];
b=[4.653
    3.428]; 

function y=wz2(C);
    y=C(1,1)*C(2,2)-C(2,1)*C(1,2);
endfunction;

function Y=msum(C,D);
    Y=C+D;
endfunction

function Y=Cmk(MG,w,k);
    Y=MG;
    Y(:,k)=w;
endfunction

ME=msum(M,E);
detME=wz2(ME);
