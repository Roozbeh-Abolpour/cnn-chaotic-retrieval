function cnnn=cnnadaptivestep(cnn,fis)
kf=cnn.params.kf;kr=cnn.params.kr;
ap=cnn.params.ap;a=cnn.params.a;
eps=cnn.params.eps;M=cnn.neuronsnumber;
W=cnn.W;

eta=cnn.fistates;
zeta=cnn.ristates;
x=cnn.states;

S=@(h) 1/(1+exp(-h/eps));

u=1/M*sum(abs(eta));
eta=kf*eta+W*x;
zeta=kr*zeta-ap*x+a;
u=u/10;
u(u>1)=1;
z=max(abs(zeta));
if z>10
    z=log10(z);
else
    z=z/10;
end
z(z>1)=1;
em=evalfis([u,z],fis);
em=1e1*em;
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