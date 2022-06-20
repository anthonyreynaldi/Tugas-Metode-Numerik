%Anthony Reynaldi - C14200078
%Jeremy Dionn     - C14200206
%Wendy Santoso    - C14200036

#persamaan y = ?x2 + x + 0.75
f = @(x,y) -x.^2 + x +0.75 - y;
ezplot(f);

hold on

#persamaan: y + 5xy = x2
tempx = -0.199;
x = [];
y = [];

while(tempx < 6)
  tempy = 1 + 5 * tempx;
  tempy = tempx.^2 / tempy;
  x = [x; tempx];
  y = [y; tempy];
  tempx += 0.1;
end

plot(x, y);

tempx = -0.201;
x = [];
y = [];

while(tempx > -6)
  tempy = 1 + 5 * tempx;
  tempy = tempx.^2 / tempy;
  x = [x; tempx];
  y = [y; tempy];
  tempx -= 0.1;
end

plot(x, y);