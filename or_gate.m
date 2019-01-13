X_mat = [0 0;
     0 1;
     1 0;
     1 1];
Y_mat = [0;
     1;
     1;
     1];
 
W = [1 1];

B = -1;
for j = 1:2 
for i = 1:4
    X = X_mat(i,:);
    Y = Y_mat(i,:);
    N = hardlim(X*W' + B);
    error = Y - N
    W = W + X*error;
    B = B + error;
end
end