function [b,db,ddb]=SmoothAbsolutePenalty(x_values, mu, delta)
% �ϰ����� b(x)
b = mu*sqrt(x_values.^2+delta^2);
% �ϰ��������� \dot{b}(x)
db = mu*x_values./sqrt(x_values.^2+delta^2);
% �ϰ��������׵��� \ddot{b}(x)
ddb = mu*delta^2./(x_values.^2+delta^2).^1.5;
end