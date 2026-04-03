function N=getperiod(ps)
N=1;
for i=1:length(ps)
    for j=N+i:length(ps)-N
        if norm(ps{i}-ps{j})~=0
            N=j-i;            
        else
            break
        end
    end
end
end