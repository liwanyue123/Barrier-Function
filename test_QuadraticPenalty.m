% 参数
mu = 10;    % 调参>=0
delta = 0.0000001; %  x的障碍边界

% 自变量 x
x_values = linspace(-2, 2, 100); % 调整范围

% 障碍函数 b(x)
b = mu/2*x_values.^2;
% 障碍函数导数 \dot{L}(x)
db = mu*x_values;
% 障碍函数二阶导数 \ddot{L}(x)
ddb = mu*ones(length(x_values),1);
% 绘制在一个窗口中
figure;
% b(x)
subplot(3, 1, 1);
plot(x_values, b, 'LineWidth', 2);
% 在 x=delta 处画一条红色的虚线
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$L(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$L$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \dot{L}(x)
subplot(3, 1, 2);
plot(x_values, db, 'LineWidth', 2);
% 在 x=delta 处画一条红色的虚线
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\dot{L}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\dot{L}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \ddot{L}(x)
subplot(3, 1, 3);
plot(x_values, ddb, 'LineWidth', 2);
% 在 x=delta 处画一条红色的虚线
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\ddot{L}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\ddot{L}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;
