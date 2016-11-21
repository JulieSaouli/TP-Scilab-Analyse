clc; clf; clear;

//question 1

I = exp(1)-1;

for n = 1:20;
    I = exp(1) - n*I
end;


//question 2
S = 0

for i = 0:20;
    S = S + 1 / ((i+21)*factorial(i));
end;

disp(S)
