

format long

x = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0];

sinx = sin(x);
cosx = cos(x);
sum = sinx.^2 + cosx.^2;

sinx
cosx
sum - 1


x = 1.0001;

% expanded form
x2= x*x;
x3= x2*x;
x4= x3*x;
x5= x4*x;

p_expanded= x5 - 5*x4 + 10*x3 - 10*x2 + 5*x -1;


% nested form
y= x-1;
y= y*y*y*y*y;

p_expanded
y




p_exact=(x-1)^5;