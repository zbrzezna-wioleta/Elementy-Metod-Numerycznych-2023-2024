// Zbrzezna Wioleta, Informatyka, IO, 3, Kolokwium nr 1 wersja D
//zad1
clear;
//zad2
clc;
//zad3
clf reset;
//zad4
disp("Zad4");
disp("Wioleta Zbrzzezna, Informatyka, III rok, Informatyka ogólna");
//zad5
disp("Zad5");
A=[1/2 1/3 1/4; 1/3 1/4 1/5];
//zad6
disp("Zad6");
B=A.^2;
disp(B);
//zad7
disp("zad 7-------------");
z = zeros(1, 10); // Tworzymy wektor na 10 wyrazów, ale będziemy korzystać tylko z parzystych pozycji
z(1) = 1;
for i = 2:10
z(i) = 2 * z(i - 1) + 1;
end
for i = 2:2:10
printf("z(%d) = %d\n", i, z(i));
end

//zad 8 
disp("Zad8");
function y=f(x)
    y=log(cos(x)^2+0.1);
endfunction
//zad9
disp("Zad9");
x=-0.1;
wynik=f(x);
disp(wynik);
//zad10
disp("Zad10");
M=zeros(3,3);
for i=1:3
    for j=1:3
        M(i,j)=i*j;
    end
end
disp(M);
//zad 11
disp("Zad11");
function y = det2(C)
    if size(C) == [2, 2]
        y = C(1, 1) * C(2, 2) - C(2, 1) * C(1, 2);
    else
        disp("Zły rozmiar");
    end
endfunction
//zad12
disp("Zad12");
C=B(:,1:2);
wyznacznik=det2(C);
disp(wyznacznik);
//zad13
disp("Zad13");
function y=g(x);
    if x<=0 then
        y=exp(x)-1;
    else
        y=log(x);
    end
endfunction
//zad14
disp("Zad14");
l=-5;
p=2.5;
lp=250;
linia=linspace(l,p,lp)';
for i=1:lp
    pkt(i)=g(linia(i));
end
plot(pkt,linia);
