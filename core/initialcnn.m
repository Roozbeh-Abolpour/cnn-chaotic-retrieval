function cnn=initialcnn(kf,kr,a,ap,eps,nn)
cnn.params.kf=kf;
cnn.params.kr=kr;
cnn.params.a=a;
cnn.params.ap=ap;
cnn.params.eps=eps;
cnn.neuronsnumber=nn;
cnn.W=zeros(nn);
cnn.fistates=1-2*rand(nn,1);
cnn.ristates=5-10*rand(nn,1);
cnn.states=zeros(nn,1);
end