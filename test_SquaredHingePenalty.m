% ����
mu = 10;    % ����>=0
delta = 6; %  x���ϰ��߽�
% �Ա��� x
x_values = linspace(-10, 10, 100); % ������Χ

[b,db,ddb]=SquaredHingePenalty(x_values,mu, delta);

% ������һ��������
figure;
% b(x)
subplot(3, 1, 1);
plot(x_values, b, 'LineWidth', 2);
% �� x=delta ����һ����ɫ������
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$L(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$L$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \dot{L}(x)
subplot(3, 1, 2);
plot(x_values, db, 'LineWidth', 2);
% �� x=delta ����һ����ɫ������
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\dot{L}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\dot{L}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \ddot{L}(x)
subplot(3, 1, 3);
plot(x_values, ddb, 'LineWidth', 2);
% �� x=delta ����һ����ɫ������
xline(delta, '--r', 'LineWidth', 2, 'Label', '$x = \delta$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\ddot{L}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\ddot{L}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;
