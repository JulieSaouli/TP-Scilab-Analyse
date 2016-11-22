clc; clf; clear;

function I=rectangle(n)
    
    I = 0;
    largeur = 1 / n;
    
    for a = x([1:n-1])
        longueur = a^(20) * exp(a);
        I = I + largeur * longueur;
    end
    
endfunction

n = 1000000;

x = linspace(0, 1, n);

I = rectangle(n)

