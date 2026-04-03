function x=decodepic(name)
A=imread(name);
A=imresize(A,[100 100]);
A=rgb2gray(A);
A=double(A);
A=A/max(max(A));
A(A<.96)=0;
A(A>=.96)=1;
X=zeros(10,10);
for i=1:10
    for j=1:10
        C=A((i-1)*10+1:i*10,(j-1)*10+1:j*10);
        c=mean(mean(C));
        if c>.5
            X(j,i)=0;
        else
            X(j,i)=1;
        end
    end
end
X=X(:,end:-1:1);
X=X';
x=X(:);
end