str = extractFileText("sonnets.txt");
extractBefore(str,"II");
figure
wordcloud(str);
