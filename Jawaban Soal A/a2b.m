1;
%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

function r = f1(x,y, type)
  if (type == 1)
    r = (5 - (y - 4).^2 - 16 - x.^2) / -8;
  elseif (type == 2)
    r = sqrt(5 - (y - 4).^2 + 8*x - 16);
  endif
endfunction

function r = f2(x,y)
  r = sqrt( 16 - x.^2 );
endfunction


function result = gauss_seidel(x, y, type) %initial value
  es = 10.^-4;
  iter = 0;
  maxiter = 50;

  while(1)
    iter = iter +1;
    
    %save the old value
    xold = x;
    yold = y;
    
    %determine new value of x and y
    x = f1(x, y, type);
    y = f2(x, y);
    
    %count error approx
    if (x ~= 0)
      ea(1) = (abs(x - xold) / x) * 100;
    endif
    
    if (y ~= 0)
      ea(2) = (abs(y - yold) / y) * 100;
    endif
    
    %check error stop
    if(max(ea) <= es || iter >= maxiter)
      break;
    endif
    
  endwhile
  
  result = [x y];

endfunction

#titik 1
disp("Titik 1 (1.8, 3.5)");
disp(gauss_seidel(1.8, 3.5, 1));

#titik 2
disp("Titik 2 (3.5, 1.8)");
disp(gauss_seidel(3.5, 1.8, 2));