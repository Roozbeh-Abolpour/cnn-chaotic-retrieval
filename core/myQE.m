function q=myQE(x,W,a)
M=length(x);
q=0;
for i=1:M
    for j=1:M
        if i==j
            continue
        end
        q=q-.5*W(i,j)*x(i)*x(j);
    end
end
for i=1:M
    q=q-a(i)*x(i);
end
end