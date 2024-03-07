function [b,db,ddb]=RelaxedBarrierPenalty(x_values, mu, delta)
% �ϰ����� b(x)
b = (x_values > delta) .* (-mu * log(x_values)) + (x_values <= delta) .* (0.5 * mu * (((x_values - 2.0 * delta) / delta).^2 - 1.0) - mu * log(delta));

% �ϰ��������� \dot{b}(x)
db = (x_values > delta) .* (-mu ./ x_values) + (x_values <= delta) .* (mu * (x_values - 2.0 * delta) / delta^2);

% �ϰ��������׵��� \ddot{b}(x)
ddb = (x_values > delta) .* (mu ./ x_values.^2) + (x_values <= delta) .* (mu / delta^2);
end