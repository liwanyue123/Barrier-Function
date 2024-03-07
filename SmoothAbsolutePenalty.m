function [b,db,ddb]=SmoothAbsolutePenalty(x_values, mu, delta)
% 障碍函数 b(x)
b = mu*sqrt(x_values.^2+delta^2);
% 障碍函数导数 \dot{b}(x)
db = mu*x_values./sqrt(x_values.^2+delta^2);
% 障碍函数二阶导数 \ddot{b}(x)
ddb = mu*delta^2./(x_values.^2+delta^2).^1.5;
end