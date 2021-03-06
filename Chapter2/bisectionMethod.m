function [x,it] = bisectionMethod(fun, xa, xb, itMax, eps)
%   Implementation of the bisection Method to find roots
%   
%   Input:
%           fun          : function that we want to find a root
%           xa           : left end of interval
%           xb           : right end of interval
%           itMax        : maximal number of iterations
%           eps          : tolerance
%
%   Output:
%           x            : found root
%           it           : number of performed iterations

   %% Initialisation
    m = (xa + xb)./ 2; % calculate new mid
    y = fun(m);
    it = 1;
    % check, we might are lucky
    if abs(y - 0) < eps
        return
    end
    %% Procedure
    while (it < itMax) && (abs(y - 1e-12) > eps)
        % value of left end * found mid > 0 -> new left side xa := m
        if (y * fun(xa)) > 0
            xa = m;
            m = (xa + xb)./ 2;
            y = fun(m);
        end
         % value of left end * found mid < 0 -> new right side xb := m
        if (y * fun(xa)) < 0
            xb = m;
            m = (xa + xb)./ 2;
            y = fun(m);
        end
        it = it + 1;
    end
    x = m;
end

  