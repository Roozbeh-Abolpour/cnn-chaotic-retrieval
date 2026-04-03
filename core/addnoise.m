function y=addnoise(x,d)
y=x;
M=length(x);
m=floor(d*M);
inds=ceil(M*rand(1,m));
inds=unique(inds);
y(inds)=1-y(inds);
end