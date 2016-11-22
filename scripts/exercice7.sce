clc; clf; clear; 

A = [1+%i, %i, 2; 3, 2+%i, 1; 1, %i, 6]

n = size(A, "r")
d = diag(A)
B = A - diag(d)

a = linspace(0, 2*%pi, 100)

figure(0);

//Disques
for i = 1:n
    cx = real(d(i))
    cy = imag(d(i))
    radius = sum(abs(B(i,:)))
    x = cx + radius * cos(a)
    y = cy + radius * sin(a)
    plot(x, y, "r")
end

//Valeurs propres
for j = spec(A)
    plot(real(j), imag(j), ".b")
end

title('Disques de Gerschgörin dans le plan complexe')
xlabel('Axe réel')
ylabel('Axe imaginaire');
