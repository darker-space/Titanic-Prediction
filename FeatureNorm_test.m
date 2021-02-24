function X=FeatureNorm_test(X,mean1,sigma)

n=size(X,2);

index=[3 6 7 8];
%index=[];

for i=1:size(index,2)
    ii=index(i);
    X(:,ii)=(X(:,ii)-mean1(i))./sigma(i);
end;
