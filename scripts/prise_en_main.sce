clc; clf; clear;


//Question 1

help spec
eye(3,3); //matrice identité 3x3


//Question 2

A = [1, 0, 3, 1; 1, 2, 0, 1; 0, 1, 3, 0];
size(A); //nb lignes, colonnes
A(1, :); //1ere ligne
A(:, 4); //derniere colonne
A(2, 3); //element a la 2e ligne, 3e colonne
diag(A); //extraction de la diagonale
triu(A); //triangle superieur
tril(A); //triangle inferieur


//Question 3

I = diag(ones(10, 1));
T = diag(ones(10, 1) + ones(10, 1)) + diag(-ones(9, 1), 1) + diag(ones(9, 1), -1);
T2 = toeplitz([2 -1 0 0 0 0 0 0 0 0]) + diag(2 .* ones(9, 1), -1);


//Question 4

x = 0:(%pi/3):2*%pi;
y = sin(x);
x2 = 0:(2*%pi/21):2*%pi;
y2 = sin(x2);

figure(0);

plot(x, y, 'b-');
plot(x2, y2, 'r-');

xtitle('Graphe de la fonction sin');
legend('6 points', '21 points');
xlabel('x');
ylabel('sin(x)');


//Question 5

x = 0:(%pi/10):2*%pi;
x2 = -10:0.2:10;

ysin = sin(x);
yexp = exp(x2);
ypoly1 = x2.^2 .*(x2-1);
ypoly2 = (x2+1) ./ (x2.^2+1);

figure(1);

subplot(221);
plot(x, ysin);
xtitle('Graphe de la fonction sin');
xlabel('x');
ylabel('sin(x)');

subplot(222)
plot(x2, yexp);
xtitle('Graphe de la fonction exp');
xlabel('x');
ylabel('exp(x)');

subplot(223);
plot(x2, ypoly1);
xtitle('Graphe de la fonction x²(x-1)');
xlabel('x');
ylabel('x²(x-1)');

subplot(224)
plot(x2, ypoly2);
xtitle('Graphe de la fonction (x+1)/(x²+1)');
xlabel('x');
ylabel('(x+1)/(x²+1)');

