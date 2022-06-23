1;
%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

function f = fun(x)
  f = [-x(2) - x(1).^2 + x(1) + 0.75; x(2) + 5*x(1)*x(2) - x(1).^2];
endfunction

format compact

disp("Titik Initial (1.2, 1.2)");
[x,fx] = fsolve(@fun,[1.2; 1.2])
