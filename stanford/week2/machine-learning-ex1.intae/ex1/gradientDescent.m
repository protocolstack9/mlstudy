function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    J_history(iter) = computeCost(X, y, theta); 
    theta = theta - alpha * X'*(X*theta - y) / m;
%    sigma = zeros(2);
%    for i = 1:m
%        sigma(1) = sigma(1) + (X(i,:)*theta - y(i)) /m * X(i,1);
%        sigma(2) = sigma(2) + (X(i,:)*theta - y(i)) /m * X(i,2);
%    end;
%    theta(1) = theta(1) - alpha * sigma(1);        
%    theta(2) = theta(2) - alpha * sigma(2);
end;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter+1) = computeCost(X, y, theta);
end
