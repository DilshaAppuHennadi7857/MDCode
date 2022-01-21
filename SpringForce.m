function SpringForce()
%SpringForce Calculate spring force.
%   Pass in global vars x Fx and nAtoms and global const C. Iterate
%   through array x and subtract the initial x value from the current x
%   value to determine the "separation" distance. Spring const, k, stored
%   in struct C is then used to calculate the spring force Fx. This is a 1D
%   simulation so y is ignored.

global x Fx nAtoms C

for i = 1:nAtoms
    
    Fx(i) = 0;
    
    dx = x(i) - x(1);
    
    Fx(i) = Fx(i) + C.k*(dx)^2;
    
end
end

