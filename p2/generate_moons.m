function [X, d] = generate_moons(dist, r ,w, N)

angles = pi*rand(N,1);
% angles contains the angles of the N points in RADIANS
rmod = r + (w*rand(N,1) - (1/2 * w));
% rmod is offset distances
firstMoon = [rmod.*cos(angles),rmod.*sin(angles)];

angles = pi*rand(N,1);
% angles contains the angles of the N points in RADIANS
rmod = r + (w*rand(N,1) - (1/2 * w));
% rmod is offset distances
secondMoon = [rmod.*cos(angles),rmod.*sin(angles)];

secondMoon(:,2) = secondMoon(:,2).*-1 ;
secondMoon(:,2) = secondMoon(:,2)- dist;
secondMoon(:,1) = secondMoon(:,1)+r ; 

X = vertcat(firstMoon,secondMoon);

dtop = ones(N,1);
dbottom = -1.*ones(N,1);
d = vertcat(dtop,dbottom);

