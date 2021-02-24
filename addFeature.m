function X_new=addFeature(X,degree)

[m,n]=size(X);
X_new=X;
tt=n^degree-n;

for i=1:tt
  temp=ones(m,1);
    for j=1:n
        if(bitand(i,bitsll(1,(j - 1))))
            temp=temp.*X(:,j);
        end;
    end
    X_new=[X_new,temp];
end
