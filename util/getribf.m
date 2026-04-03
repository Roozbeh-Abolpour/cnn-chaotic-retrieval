function [r,i]=getribf(ps,N,p)
r=0;i=0;
for j=1:N
    if norm(ps{j}-p)==0
        r=r+1;
    end
    q=ps{j};q=1-q;
    if norm(q-p)==0
        i=i+1;
    end
end
end