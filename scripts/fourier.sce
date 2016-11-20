clc; clf; clear;

Ntermes = input('Entrer le nombre de termes')
s = 0;
x = -2:0.01:2;

//Creation de la serie de Fourier partielle
for i = 0:Ntermes;
    s = s + (4/%pi) * sin(2 * (2*i+1) * %pi * x) / (2*i+1);
end;

//Creation de f
y = zeros(1, size(x, 'c'));
m = modulo(x, 1);
for j = 1:size(x, 'c');
    if ((0 < m(1, j)) & (m(1, j) < 1/2)) | ((0 > m(1, j)) & (m(1,j) < -1/2)) then
        y(1, j) = 1;
    else
        y(1, j) = -1;
    end
end

//Graphiques
figure(0);
plot(x, s, 'r');
plot(x, y, '.b');
