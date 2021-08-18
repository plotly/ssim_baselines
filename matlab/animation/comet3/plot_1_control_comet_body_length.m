[xmat,ymat,zmat] = peaks(100); 
xvec = xmat(:);
yvec = ymat(:);
zvec = zmat(:);
p = 0.5;
comet3(xvec,yvec,zvec,p);
