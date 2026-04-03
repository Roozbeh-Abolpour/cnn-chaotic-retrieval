function cnnn=cnncontrolledstep(cnn,C0,C1,C2)
kf=cnn.params.kf;kr=cnn.params.kr;
ap=cnn.params.ap;a=cnn.params.a;
eps=cnn.params.eps;M=cnn.neuronsnumber;
W=cnn.W;

eta=cnn.fistates;
zeta=cnn.ristates;
x=cnn.states;

S=@(h) 1/(1+exp(-h/eps));
g=@(u) C0+exp(C1+C2*u);

u=1/M*sum(abs(eta));
eta=kf*eta+W*x;
zeta=kr*zeta-ap*x+a;
em=g(u);
for i=1:M
    if zeta(i)>em
        zeta(i)=em;
    elseif zeta(i)<-em
        zeta(i)=-em;
    end
end


x=zeros(M,1);
for i=1:M
    x(i)=S(zeta(i)+eta(i));
end


cnn.fistates=eta;
cnn.ristates=zeta;
cnn.states=x;
cnnn=cnn;
end