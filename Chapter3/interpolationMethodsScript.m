%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
x = [-1;0;1;3];
y = [1;3;-7;3];

% values from lecture
%x = [-9;-4;-1;7]
%y = [5;2;-2;9]

%xeval = [1;2;3;4]
xeval = [0.5;0.6];
lagrangianInterpolation(x,y,xeval)

%% Computation

%% Plotting