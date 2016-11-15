test = [10, -1, 0, 1; 0.2, 8, 0.2, 0.2; 1, 1, 2, 1; -1, -1, -1, -11]
A = [1+%i, %i, 2; 3, 2+%i, 1; 1, %i, 6]
n = size(A, "r")
d = diag(A)
B = A - diag(d)
a = linspace(0, 2*%pi, 100)
for i = 1:n
    cx = real(d(i))
    cy = imag(d(i))
    radius = sum(abs(B(i,:)))
    x = cx + radius * cos(a)
    y = cy + radius * sin(a)
    plot(x, y, "r")
end

for j = spec(A)
    plot(real(j), imag(j), ".b")
end
xtitle('Disques de Gerschgörin dans le plan complexe', 'Axe réel', 'Axe imaginaire');
