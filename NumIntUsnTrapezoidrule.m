% Prompt user for function to be integrated
% hint: write f(x) = x^2 as f = @(x) x.^2;
f = input('Enter the function to be integrated: ');

% Prompt user for integration bounds
a = input('Enter the lower bound of integration: ');
b = input('Enter the upper bound of integration: ');

% Prompt user for number of intervals
n = input('Enter the number of intervals: ');

% Calculate width of each interval
h = (b - a) / n;

% Initialize approximation
approximation = 0;

% Compute and store value of f(x) at midpoints
x_values = linspace(a, b, n+1);
f_values = f(x_values);

% Evaluate function at each endpoint and each midpoint of interval
for i = 1:n
    approximation = approximation + f_values(i) + f_values(i+1);
end

% Multiply approximation by width of each interval and divide by 2 to get result
result = h * approximation / 2;

% Plot the function and the approximation
x = linspace(a, b, 1000);
y = f(x);

figure;
plot(x, y, 'b', 'LineWidth', 2);
hold on;
plot(x_values, f_values, 'ro', 'MarkerSize', 8);
hold off;
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'Approximation');

% Display result
fprintf('The approximate integral of f(x) from %g to %g using the trapezoidal rule with %d intervals is %g.\n', a, b, n, result);
