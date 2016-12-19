function [ x ] = sm( t )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x=sin(t);
for i=1:length(x)
    if x(i) <0
        x(i)=0;
    end
end

end

