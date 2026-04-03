function myshow(ps,i,j)
L=j-i+1;
c=10;
r=1+floor(L/10);
figure
subplottight(r+1,c,1);
showpattern(ps{i},'initial state');    
for k=i+1:j
    subplottight(r+1,c,c+k-i);
    showpattern(ps{k},sprintf('t=%d',k-i));    
end
end