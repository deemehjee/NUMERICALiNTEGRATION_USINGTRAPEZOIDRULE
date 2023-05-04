% Prompt user for function to be integrated
f = input('Enter the function to be integrated: ');

% Prompt user for integration bounds
a = input('Enter the lower bound of integration: ');
b = input('Enter the upper bound of integration: ');

% Prompt user for number of intervals
n = input('Enter the number of intervals: ');

% Calculate width of each interval
h = (b - a) / n;

% Initialize sum
sum = 0;

% Evaluate function at each endpoint and each midpoint of interval
for i = 0:n
    x = a + i*h;
    if i == 0 || i == n
        sum = sum + f(x);
    else
        sum = sum + 2*f(x);
    end
end

% Multiply sum by width of each interval and divide by 2 to get result
result = h * sum / 2;

% Display result
disp(['The approximate integral of f(x) from ' num2str(a) ' to ' num2str(b) ' using the trapezoidal rule with ' num2str(n) ' intervals is ' num2str(result)])

% Prompt user to clear results and variables
clear_choice = input('Do you want to clear the results and variables? (y/n): ', 's');

% If user wants to clear results and variables, clear them
if strcmpi(clear_choice, 'y')
    clear result f a b n h sum x clear_choice;
end
