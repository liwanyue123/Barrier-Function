% ����
mu = 10;    % ����>=0
delta = 0.0000001; %  x���ϰ��߽�
l_b=-2;
u_b=4;

% �Ա��� x
x_values = linspace(-10, 10, 100); % ������Χ

[b_l,db_l,ddb_l]=RelaxedBarrierPenalty(x_values-l_b,mu, delta);
[b_u,db_u,ddb_u]=RelaxedBarrierPenalty(u_b-x_values,mu, delta);
b=b_l+b_u;
db=db_l+db_u;
ddb=ddb_l+ddb_u;

% ������һ��������
figure;
% b(x)
subplot(3, 1, 1);
plot(x_values, b, 'LineWidth', 2);
% ��һ����ɫ������
xline(l_b, '--r', 'LineWidth', 2, 'Label', '$l_b $', 'Interpreter', 'latex', 'FontSize', 17);
xline(u_b, '--r', 'LineWidth', 2, 'Label', '$u_b$', 'Interpreter', 'latex', 'FontSize', 17);
title('$b(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$b$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \dot{b}(x)
subplot(3, 1, 2);
plot(x_values, db, 'LineWidth', 2);
% ��һ����ɫ������
xline(l_b, '--r', 'LineWidth', 2, 'Label', '$l_b $', 'Interpreter', 'latex', 'FontSize', 17);
xline(u_b, '--r', 'LineWidth', 2, 'Label', '$u_b$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\dot{b}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\dot{b}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;

% \ddot{b}(x)
subplot(3, 1, 3);
plot(x_values, ddb, 'LineWidth', 2);
% ��һ����ɫ������
xline(l_b, '--r', 'LineWidth', 2, 'Label', '$l_b $', 'Interpreter', 'latex', 'FontSize', 17);
xline(u_b, '--r', 'LineWidth', 2, 'Label', '$u_b$', 'Interpreter', 'latex', 'FontSize', 17);
title('$\ddot{b}(x)$', 'Interpreter', 'latex', 'FontSize', 17);
xlabel('$x$', 'Interpreter', 'latex', 'FontSize', 17);
ylabel('$\ddot{b}$', 'Interpreter', 'latex', 'FontSize', 17);
grid on;
