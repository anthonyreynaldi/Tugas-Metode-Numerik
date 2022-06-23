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

hold off