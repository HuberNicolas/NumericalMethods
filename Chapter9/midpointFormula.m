function [I] = midpointFormula(fun,a,b)
%   Description:
%   
%   Input:
%           fun      : to be integrated function
%           a        : lower x value of the integral
%           b        : upper x value of the intergral
%
%   Output:
%           I        : value of the integral of f(x) between a and b
%
    
    %% Initialisation
    m = (a+b)./2; % midpoint
    
    %% Computation
    I = (b-a).* fun(m);
end  

    
