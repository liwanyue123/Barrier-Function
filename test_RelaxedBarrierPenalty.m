% ����
mu = 10;    % ����>=0
delta = 0.0000001; %  x���ϰ��߽�
% �Ա��� x
x_values = linspace(-2, 2, 100); % ������Χ

[b,db,ddb]=RelaxedBarrierPenalty(x_values,mu, delta);

% ������һ��������
figure;
% b(x)
subplot(3, 1, 1);
plot(x_values, b, 'LineWidth', 2);
% �� x=delta ����һ����ɫ������
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$p(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$p$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \dot{p}(x)
subplot(3, 1, 2);
plot(x_values, db, 'LineWidth', 2);
% �� x=delta ����һ����ɫ������
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\dot{p}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\dot{p}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \ddot{p}(x)
subplot(3, 1, 3);
plot(x_values, ddb, 'LineWidth', 2);
% �� x=delta ����һ����ɫ������
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\ddot{p}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\ddot{p}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;
