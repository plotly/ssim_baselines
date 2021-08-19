fcontour(@(x,y) x.*sin(y) - y.*cos(x), [-2*pi 2*pi], 'LineWidth', 2);
grid on
title({'xsin(y) - ycos(x)','-2\pi < x < 2\pi and -2\pi < y < 2\pi'})
xlabel('x')
ylabel('y');
