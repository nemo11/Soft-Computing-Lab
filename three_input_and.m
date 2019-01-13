X_mat = [-1 -1 -1;
     -1 -1 1;
     -1 1 -1;
     -1 1 1;
     1 -1 -1;
     1 -1 1;
     1 1 -1;
     1 1 1];
Y_mat = [-1;
     -1;
     -1;
     -1;
     -1;
     -1;
     -1;
     1];
 
W = [1 1 1];

B = -1;
for j = 1:500 
for i = 1:8
    X = X_mat(i,:);
    Y = Y_mat(i,:);
    N = sign(X*W' + B);
    error = Y - N
    W = W + X*error;
    B = B + error; 
end
end
x1 = X_mat(:,1);
x2 = X_mat(:,2);
x3 = X_mat(:,3);
%  plot(x2(1) , x1(1) ,'x','linewidth' , 2);
%  hold on
%  plot(x2(2) , x1(2) ,'x','linewidth' , 2);
%  plot(x2(3) , x1(3) ,'x','linewidth' , 2);
%  plot(x2(4) , x1(4) ,'x','linewidth' , 2);
%  plot([0,-(B/W(1))],[-(B/W(2)),0],'linewidth' , 2)
scatter3(x1,x2,x3)

hold on;
axis([-2 2 -2 2 -2 2])
z = -1/W(3)*(W(1)*x1 + W(2)*x2 + B); % Solve for z vertices data
plotpc(W,B);
%patch(x1, x2, z);