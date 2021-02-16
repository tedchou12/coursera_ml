function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% disp('#');
% disp(size(theta));
theta_reduced = theta;
theta_reduced([1],:) = [];
theta_reduced_2 = theta;
theta_reduced_2(1) = 0;
% disp(size(theta_reduced));
% disp('$');

z = sigmoid(X * theta);
temp = sum((-y .* log(z)) - ((1 - y) .* log(1 - z)));

temp1 = theta_reduced .^ 2;

J = temp / m + ((lambda / (2 * m)) * sum(temp1));

grad = sum((z - y) .* X) / m;

for iter = 2:size(grad)(2)
  grad(iter) = grad(iter) + (lambda / m) * theta(iter);
end


% disp(grad);



% =============================================================

end
