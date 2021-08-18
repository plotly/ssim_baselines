load sonnetsTable
head(tbl);
numWords = size(tbl,1);
colors = rand(numWords,3);
figure
wordcloud(tbl,'Word','Count','Color',colors);
title("Sonnets Word Cloud");
