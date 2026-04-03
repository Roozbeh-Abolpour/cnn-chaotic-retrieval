function ys=regcurve(xs,M)
ys=xs;
for i=M/2+1:length(xs)-M/2
    ys(i)=mean(xs(i-M/2:i+M/2));
end
end