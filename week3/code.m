PS1('>> ');

options = optimset('GradObj', 'on', 'MaxIter', '100');
initialTheta = zeros(2,1)

[optTheta, functionVal, exitFlag] ...
     = fminunc(@costFunction, initialTheta, options)

% Output
% optTheta =
%   5.0000
%   5.0000
%
%functionVal =    7.8886e-31
%exitFlag =  1
