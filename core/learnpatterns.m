function cnnn=learnpatterns(cnn,ps)
W=cnn.W;
M=cnn.neuronsnumber;
Wp=zeros(M);
I=eye(M);o=ones(M,1);
for i=1:length(ps)
    p=ps{i};    
    Wp=Wp+(2*p-o)*(2*p-o)'-I;
end
W=W+Wp/length(ps);
cnn.W=W;
cnnn=cnn;
end