function [ y ] = fc( t, T )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y=ones(size(t))*(-1);;

y(mod(t,T)<T/2) = 1;



end

