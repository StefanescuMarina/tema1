function [ y ] = fi( t, T )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y=zeros(size(t));

y(mod(t,T)<T/2) = 1;



end

