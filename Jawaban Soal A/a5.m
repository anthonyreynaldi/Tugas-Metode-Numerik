1;
%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

function f = fun(x)
  f = [(x(1)-4).^2 + (x(2)-4).^2 - 5; x(1).^2 + x(2).^2 - 16];
endfunction

format compact

#titik 1
disp("Titik 1 (1.8, 3.5)");
[x,fx] = fsolve(@fun,[1.8; 3.5])

#titik 2
disp("Titik 2 (3.5, 1.8)");
[x,fx] = fsolve(@fun,[3.5; 1.8])