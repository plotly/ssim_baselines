x = [zeros(1,500) ones(1,500)];
y = randi(4,1,1000);
z = randn(1,1000).^2;
s = swarmchart3(x,y,z);
xlabel('X')
ylabel('Y');
s.XJitter = 'rand';
s.XJitterWidth = 0.5;
s.YJitter = 'randn';
s.YJitterWidth = 0.1;
