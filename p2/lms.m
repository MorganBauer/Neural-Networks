function w = lms(w, x, d, eta)
  %% Morgan Bauer
  %% Least mean squares
  %%{
  input 'w' is a column vector, weights, to be updated
  x is a column vector, is a feature vector
  d is a scalar value, reperesenting the class of x. +1 or -1
  eta is learning rate.
  %%}

  x = [1;x];
  error = d - w'*x;
  w = w + eta*x*error;