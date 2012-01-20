function w = mse(X, d, lambda)
% morgan bauer
X = [ones(1,size(X,2)); X]';

if (lambda == 0)
  w = pinv(X'*d)';
else 
  w = inv(X'*X+(lambda*eye(size(d,2))))*X'*d;
end
