function [b, db, ddb] = SquaredHingePenalty(x_values, mu, delta)
    % Squared Hinge Penalty Function
    % Inputs:
    %   - x_values: Input values
    %   - mu: Tuning parameter (>= 0)
    %   - delta: Barrier boundary for x (>= 0)

    % Squared Hinge Penalty Function
    b = (x_values < delta) .* 0.5 * mu .* (x_values - delta).^2 + (x_values >= delta) * 0;

    % First Derivative of the Squared Hinge Penalty Function
    db = (x_values < delta) .* mu .* (x_values - delta) + (x_values >= delta) * 0;

    % Second Derivative of the Squared Hinge Penalty Function
    ddb = (x_values < delta) .* mu + (x_values >= delta) * 0;
end
