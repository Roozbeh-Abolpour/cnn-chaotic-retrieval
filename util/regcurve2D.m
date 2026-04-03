function ys=regcurve2D(xs,M)
ys=xs;
for i=M/2+1:size(xs,1)-M/2
    for j=M/2+1:size(xs,2)-M/2
        ys(i,j)=mean(mean(xs(i-M/2:i+M/2,j-M/2:j+M/2)));
    end
end
end