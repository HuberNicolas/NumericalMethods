%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Skript to investiagte the piecewiese interpolation method.
    (polynomial, spline (quadratic & qubic))
    TO-DO:  - Piecewise constant interpolation

%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
x = [3;4.5;7;9];    % dataset
y = [2.5;1;2.5;0.5];    % dataset
% secure
xeval      = [6,9,5,7,3]; % where to evaluate
xevalQuick = [3;5;6;7;9]; % where to evaualte for interp1q 


%% Computation
% linear piecewise interpolation
yevall = linearPiecewiseInterpolation(x,y,xeval);
yeval2 = interp1(x,y,xeval); % integrated Matlab solution
yeval3 = interp1q(x,y,xevalQuick); % integrated Matlab solution, faster

% quadratic Spline interpolation
S1 = quadraticSplineInterpolation(x,y);
S2 = quadraticSplineInterpolation2(x,y);
%yeval5 = quadraticSplineInterpolationQuarteroni(x,y,xeval) % Copyright by QUARTERONI


clc; clear all; close all;

% qubic Spline interpolation
f = @(x) x.*cos(x)-(x-2).^2 -1;
a = 0;
b = 5;
m = 50; % change this
x = linspace(a,b,m);
x = x';
y = f(x);
coeff1 = qubicSplineInterpolation(x,y)
coeff2 = naturalspline(x,y) % solution, not 100% clear
pp = mkpp(x,coeff1);
xq = x(1):0.01:x(end);   
plot(xq,ppval(pp,xq),x,y,'X');
figure()

% qubic Spline interpolation (Matlab)
zsp = [x(1):0.01:x(end)];
s = spline(x,y,zsp);
plot(x,y,'o',zsp,s)


