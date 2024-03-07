function [b,db,ddb]=RelaxedBarrierPenalty(x_values, mu, delta)
% 障碍函数 b(x)
b = (x_values > delta) .* (-mu * log(x_values)) + (x_values <= delta) .* (0.5 * mu * (((x_values - 2.0 * delta) / delta).^2 - 1.0) - mu * log(delta));

% 障碍函数导数 \dot{b}(x)
db = (x_values > delta) .* (-mu ./ x_values) + (x_values <= delta) .* (mu * (x_values - 2.0 * delta) / delta^2);

% 障碍函数二阶导数 \ddot{b}(x)
ddb = (x_values > delta) .* (mu ./ x_values.^2) + (x_values <= delta) .* (mu / delta^2);
end