function x=getcnnstate(cnn)
x=cnn.states;
x(x<.5)=0;
x(x>=.5)=1;
end