function w = lms(w, x, d, eta)
% Morgan Bauer
                                %{
  input 'w' is a column vector
  x is a column vector
  d is a scalar value
  eta is learning rate.
                                %}
x = [1;x];
error = d - w'*x;
w = w + eta*x*error;