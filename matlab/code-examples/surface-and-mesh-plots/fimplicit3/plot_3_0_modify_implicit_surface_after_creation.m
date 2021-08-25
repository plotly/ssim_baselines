f = @(x,y,z) 1./x.^2 - 1./y.^2 + 1./z.^2;
fs = fimplicit3(f);
