%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

% (x ? 4)^2+ (y ? 4)^2 = 5
% (x^2-8*x+16) + (y^2-8*y+16) - 5 = 0

% x^2 + y^2 - 16 = 0

1;
function r = generate_j(x, y)
  r = [2*x-8, 2*y-8; 2*x, 2*y];
endfunction

function r = generate_f(x, y)
  r = [(x-4).^2 + (y-4).^2 - 5; x.^2 + y.^2 - 16];
endfunction

function result = newton_raphson(x, y)
  es = 10.^-4;
  iter = 0;
  maxiter = 50;
  
  %initialize
  hasil = [x; y];

  while(1)
    %generate matrix J and f
    J = generate_j(hasil(1), hasil(2));
    f = generate_f(hasil(1), hasil(2));
    
    d = J\f;
    hasil = hasil - d;
    
    iter = iter + 1;
    
    %count error approx
    ea=100*max(abs(d./hasil));
    
    %check error stop
    if(ea <= es || iter >= maxiter)
      break;
    endif
  endwhile
  
  result = [hasil(1) hasil(2)];
endfunction

%TITIK 1
disp("Titik 1 (1.5, 3.5)");
disp(newton_raphson(1.5, 3.5));

%TITIK 2
disp("Titik 2 (3.5, 1.5)");
disp(newton_raphson(3.5, 1.5));