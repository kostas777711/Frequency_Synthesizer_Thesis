function [ y ] = DSP_Function( x )

%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

persistent A;
[r,c]=size(A);
if (~(r==1 && c==3))
    A=zeros(1,3);
end

A(1)=x;
A(2)=A(1);
A(3)=A(2);

y(2)=abs(A(2));

a=A(1)+A(3);
p=2*A(2);
if p==0 
    y(1)=0;
else
    r=a/p;
    if r>1 
        y(1)=0;
    elseif r<-1
        y(1)=0;
    else
        y(1)=acos(r)/(2*pi);
    end

end

