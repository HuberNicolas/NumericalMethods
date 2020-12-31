function [x,it] = secantMethod(fun, x0,xm1, itMax, eps)
%   Implementation of the secant Method to find roots
%   
%   Input:
%           fun          : function that we want to find a root
%           fprime       : first derivative of fun
%           x0           : initial guess
%           itMax        : maximal number of iterations
%           eps          : |x^(k+1) - x(k)| stopping criterion
%
%   Output:
%           x            : found root
%           it           : number of performed iterations

   %% Initialisation
    % check, we might are lucky
    xvect(1) = xm1;
    xvect(2) = x0;
    it = 2;
    %% Procedure
    while true
        xvect(it+1) = xvect(it)-fun(xvect(it))*((xvect(it)-xvect(it-1))/(fun(xvect(it))-fun(xvect(it-1))));
        % Stopping Criterion: reached max iteraion or 2 consecutive
        % calculated x values have reached the eps
        if (it > itMax) || (abs(xvect(it)-xvect(it-1)) < eps)
            break;
        end
        it = it+1;
    end
    it = it - 2;
    x = xvect(end);
end