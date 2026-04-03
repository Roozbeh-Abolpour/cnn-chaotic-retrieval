function h = subplottight1(n,m,i)
    [c,r] = ind2sub([m n], i);        
    x=(c-1)/m;
    y=1-(r)/n;
    ax = subplot('Position', [x+.1, y, .7/m, .7/n]);
    if(nargout > 0)
      h = ax;
    end
end 