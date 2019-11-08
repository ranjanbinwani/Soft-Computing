x = 0:0.1:10;
y1 = trimf(x, [5,6,7]);
y2 = trapmf(x, [2 4 8 10]);
y3 = gaussmf(x, [2 4]);
figure(1), plot(x,y1);
figure(2), plot(x,y2);
figure(3), plot(x,y3);
