%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

1;
function r = generate_j(x, y)
  %r = [2*x+y x;3*y^2 1+6*x*y];
  r = [-2*x + 1, -1; 2*x - 5*y, -5*x - 1];
endfunction

function r = generate_f(x, y)
  %r = [x^2 + x*y - 10;y+3*x*y^2 - 57];
  r = [-x.^2 + x - y + 0.75; x.^2 - y - 5*x*y];
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

%output
disp("Hasil dengan Initial Value (1.2, 1.2)) = ")
disp(newton_raphson(1.2, 1.2));