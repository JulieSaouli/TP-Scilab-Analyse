clc; clf; clear;

Ntermes = input('Entrer le nombre de termes')
s = 0;
x = linspace(-0.5, 0.5, 10000)

//Creation de la serie de Fourier partielle
for i = 0:Ntermes;
    s = s + (4/%pi) * sin(2 * (2*i+1) * %pi * x) / (2*i+1);
end;

//Graphiques
figure(0);
plot(x, s, 'r');
xlabel("x")
ylabel("S_{Ntermes}")
