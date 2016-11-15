function a=in_circle(cx, cy, x, y, r)
    a=sqrt((cx - x)^2 + (cy - y)^2) < r
endfunction
//AMELIE.FONDEVILLA@INRIA.FR
test = [10, -1, 0, 1; 0.2, 8, 0.2, 0.2; 1, 1, 2, 1; -1, -1, -1, -11]
A = [1+%i, %i, 2; 3, 2+%i, 1; 1, %i, 6]
n = size(A, "r")
d = diag(A)
B = A - diag(d)
for i = 1:n
    cx = real(d(i))
    cy = imag(d(i))
    radius = sum(abs(B(i,:)))
    for i = cx-radius:0.6:cx+radius
        for j = cy-radius:0.6:radius
            if in_circle(cx, cy, i, j, radius) then
                plot(i, j, ".r")
            end
        end
    end
end

for j = spec(A)
    plot(real(j), imag(j), ".b")
end
xtitle('Disques de Gerschgörin dans le plan complexe', 'Axe réel', 'Axe imaginaire');
