close all
clear
clc

N=4;
ps=cell(1,N);
for i=1:N
    ps{i}=decodepic(sprintf('pic%d.jpg',i));
end

figure
for k=1:N
    subplottight(2,2,k);
    showpattern(ps{k},sprintf(''));
end


nn=length(ps{1});
a=2*ones(nn,1);
eps=0.02;ap=10;kf=0.2;kr=0.95;

C0=5;C1=-6;C2=1;
b=0.97;k=0.05;



for t=1:N
    cnn=initialcnn(kf,kr,a,ap,eps,nn);
    cnn=learnpatterns(cnn,ps);
    x0=addnoise(ps{t},0.1);
    cnn=setinitialstate(cnn,x0);

    Xs=cell(1,20);
    for i=1:20
        x=getcnnstate(cnn);
        Xs{i}=x;
        cnn=cnnmystep(cnn,C0,C1,C2,b,k);
    end

    figure
    subplottight(4,11,1);
    showpattern(x0,sprintf('t=%d',0));
    for k=1:10
        subplottight(4,11,11+k);
        showpattern(Xs{k},sprintf('t=%d',k));
    end
    for k=1:10
        subplottight(4,11,22+k);
        showpattern(Xs{10+k},sprintf('t=%d',10+k));
    end
end



