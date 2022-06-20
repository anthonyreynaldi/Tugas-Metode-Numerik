1;
1;
%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

%persamaan dasar lingkaran
% x^2 + y^2 = r^2

%persamaan 1
%persamaan: (x - 4)^2 + (y - 4)^2 = 5
r1 = sqrt(5);
x1 = 4;
y1 = 4;
th1 = 0:pi/50:2*pi;
xunit1 = r1 * cos(th1) + x1;
yunit1 = r1 * sin(th1) + y1;
plot(xunit1, yunit1);

hold on

%persamaan 2
%persamaan: x^2 + y^2 = 16
r2 = sqrt(16);
x2 = 0;
y2 = 0;
th2 = 0:pi/50:2*pi;
xunit2 = r2 * cos(th2) + x2;
yunit2 = r2 * sin(th2) + y2;
plot(xunit2, yunit2);

hold on

function r = f1(x,y)
  %r = sqrt( 5 - (y - 4).^2 );
  r = (5 - (y - 4).^2 - 16 - x.^2) / -8;
endfunction

function r = f2(x,y)
  r = sqrt( 16 - x.^2 );
endfunction


function result = gauss_seidel(x, y) %initial value
  es = 10.^-4;
  iter = 0;
  maxiter = 10000000;
  
  plotx = [x];
  ploty = [y];

  while(1)
    iter = iter +1;
    
    %save the old value
    xold = x;
    yold = y;
    
    %determine new value of x and y
    x = f1(x, y);
    y = f2(x, y);
    
    plotx = [plotx; x];
    ploty = [ploty; y];
    
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
  
  plot(plotx, ploty);
  
  hold on

endfunction

#titik 1
disp("Titik 1 (1.8, 3.6)");
disp(gauss_seidel(1.8, 3.5));

#titik 2
disp("Titik 2 (3.6, 1.8)");
disp(gauss_seidel(3.7, 1.6));

hold off