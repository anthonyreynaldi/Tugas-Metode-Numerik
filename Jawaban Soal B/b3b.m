1;
%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036


function r = f1(x,y, type)
  if (type == 1)
    r = y + x.^2 - 0.75;
  elseif (type == 2)
    r = sqrt( x - y + 0.75);
  endif
endfunction

function r = f2(x,y, type)
  if (type == 1)
    r = x.^2 - 5*x*y;
  elseif (type == 2)
    r = (x.^2 - y) / 5*x;
  endif
endfunction


function result = gauss_seidel(x, y, type1, type2) %initial value
  es = 10.^-4;
  iter = 0;
  maxiter = 10000000;
  lamda = 0.5;

  while(1)
    iter = iter +1;
    
    %save the old value
    xold = x;
    yold = y;
    
    %determine new value of x and y
    x = f1(x, y, type1);
    x = lamda * x + (1 - lamda) * xold; #relaxed
    
    y = f2(x, y, type2);
    y = lamda * y + (1 - lamda) * yold;  # relaxed
    
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
disp("Titik 1 (1.2, 1.2), Lamda = 0.5");
disp(gauss_seidel(1.2, 1.2, 2, 2));