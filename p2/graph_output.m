function graph_output(Xs, Ys, d,w,titlestr)
hold on;
vectorSize = size(d,1);
title(titlestr);
for sample = 1 : vectorSize % d is same size as x
    x = Xs(sample);
    y = Ys(sample);
    if(d(sample) > 0)
        plot(x,y,'+b');
    else
        plot(x,y,'.r');
    end
end

maxX = max(Xs);
maxY = max(Ys);
minX = min(Xs);
minY = min(Ys);

X = linspace(minX,maxX);
Y = -w(2)/w(3) * X - w(1)/w(3);

plot(X,Y)

figure;


%{
  plot(linspace(0,length(mse),length(mse)),mse)
    figure;
  %}
