clc; clf; clear;

x = linspace(0, 4, 20);

y = x;
for i = 1:128;
    y = sqrt(y)
end;

z = y;
for i = 1:128;
    z = z.^2;
end;

figure(0);
plot(x, z, '.');
xlabel('x');
ylabel('f(x)');
