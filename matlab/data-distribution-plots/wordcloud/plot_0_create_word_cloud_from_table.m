load sonnetsTable
head(tbl);
figure
wordcloud(tbl,'Word','Count');
title("Sonnets Word Cloud");
