function imagesc_2()
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
clims = [4 18];
imagesc(C,clims)
colorbar;
thumbnail_generator(gcf, 'images', 'imagesc', false);

end