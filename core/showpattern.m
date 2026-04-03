function showpattern(x,str)
hold on
x(x<.5)=0;
x(x>=.5)=1;
X=reshape(x,10,10)';
plot([0 1 1 0 0],[0 0 1 1 0],'k');
set(gca,'xtick',[]);
set(gca,'ytick',[]);
for i=1:10
    for j=1:10
        if X(i,j)==1
            x1=(i-1)/10;x2=(i)/10;
            y1=(j-1)/10;y2=j/10;
            fill([x1 x2 x2 x1 x1],[y1 y1 y2 y2 y1],'k');
        else
            han=plot((i-1)/10+.05,(j-1)/10+.05,'ok');
            set(han,'markersize',.1*get(han,'markersize'));
            set(han,'markerfacecolor','k')
        end
    end
end
xlabel(str)
set(gca,'fontsize',10)
end