mu1 = 5;
sig1 = 0.5;

mu2 = 7;
sig2 = 1;

%x = [5.667,5.978,5.830,2.69];
x = linspace(0,12);
y1 = normpdf(x,mu1,sig1);
y2 = normpdf(x,mu2,sig2);

plot(x,y1,x,y2);
%plot(x,y2);
%P = InterX([x;y1],[x,y2]);
