function c = accuracy10(theta)
load('feature_test.mat');
load('label10_test.mat');
y=label10_test;
feature_test=normalize(feature_test);
s=size(feature_test,1);
x=[ones(s,1),feature_test];
k=[];
k=x*theta;

t=k>0;

c=sum(y==t);
c/size(feature_test,1)