% Smart Electricity Bill Estimator & Analyzer
clc; clear all; close all;

disp('==========================================');
disp('   SMART ELECTRICITY BILL ESTIMATOR & ANALYZER');
disp('==========================================');
disp(' ');

% Gather customer information
name = input('Enter Customer Name: ', 's');
type = input('Enter Connection Type (D = Domestic / C = Commercial): ', 's');
units = input('Enter Units Consumed This Month: ');

% Gather historical usage
disp(' ');
disp('Enter last 6 months usage (in units):');
month_names = {'January','February','March','April','May','June'};
monthly = zeros(1,6);

for i = 1:6
    monthly(i) = input(['  ' month_names{i} ': ']);
end

disp(' ');
disp('------------------------------------------');

% Calculate bill based on connection type
if strcmpi(type, 'D')
    connection = 'Domestic';
    limit = 500; % Safe limit for domestic

    if units <= 100
        bill = units * 3.50;
    elseif units <= 300
        bill = (100 * 3.50) + ((units - 100) * 5.00);
    elseif units <= 500
        bill = (100 * 3.50) + (200 * 5.00) + ((units - 300) * 6.50);
    else
        bill = (100 * 3.50) + (200 * 5.00) + (200 * 6.50) + ((units - 500) * 8.00);
    end
else
    connection = 'Commercial';
    limit = 400; % Safe limit for commercial

    if units <= 200
        bill = units * 6.00;
    elseif units <= 500
        bill = (200 * 6.00) + ((units - 200) * 8.00);
    else
        bill = (200 * 6.00) + (300 * 8.00) + ((units - 500) * 10.00);
    end
end

% Apply standard fees
fixed_charge = 50;
tax = bill * 0.09;
total_bill = bill + fixed_charge + tax;

% Display the final receipt
disp('==========================================');
disp('         ELECTRICITY BILL RECEIPT         ');
disp('==========================================');
fprintf('Customer Name    : %s\n', name);
fprintf('Connection Type  : %s\n', connection);
fprintf('Units Consumed   : %d units\n', units);
disp('------------------------------------------');
fprintf('Energy Charges   : Rs %.2f\n', bill);
fprintf('Fixed Charges    : Rs %.2f\n', fixed_charge);
fprintf('Tax (9%%)         : Rs %.2f\n', tax);
disp('------------------------------------------');
fprintf('TOTAL BILL       : Rs %.2f\n', total_bill);
disp('==========================================');

% Check against usage limits
disp(' ');
if units > limit
    disp('!! WARNING: Usage exceeds the safe limit !!');
    fprintf('   You used %d units. Limit is %d units.\n', units, limit);
    fprintf('   Excess units: %d\n', units - limit);
    disp('   Please reduce your electricity consumption!');
else
    fprintf('Usage is within safe limit. Good job %s!\n', name);
end
disp(' ');

% Visualize the usage data

% Plot 1: Cost Curve
figure(1);
unit_range = 0:10:700;
cost_range = zeros(size(unit_range));

for k = 1:length(unit_range)
    u = unit_range(k);
    if strcmpi(type, 'D')
        if u <= 100
            cost_range(k) = u * 3.50;
        elseif u <= 300
            cost_range(k) = (100*3.50) + ((u-100)*5.00);
        elseif u <= 500
            cost_range(k) = (100*3.50) + (200*5.00) + ((u-300)*6.50);
        else
            cost_range(k) = (100*3.50) + (200*5.00) + (200*6.50) + ((u-500)*8.00);
        end
    else
        if u <= 200
            cost_range(k) = u * 6.00;
        elseif u <= 500
            cost_range(k) = (200*6.00) + ((u-200)*8.00);
        else
            cost_range(k) = (200*6.00) + (300*8.00) + ((u-500)*10.00);
        end
    end
end

plot(unit_range, cost_range, 'b-', 'LineWidth', 2);
hold on;
plot(units, bill, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
xlabel('Units Consumed');
ylabel('Cost (Rs)');
title('Units Consumed vs Electricity Cost');
legend('Cost Curve', 'Your Usage');
grid on;
hold off;

% Plot 2: Monthly Comparison
figure(2);
bar(monthly, 'FaceColor', [0.2 0.6 0.8]);
hold on;
plot([0.5 6.5], [limit limit], 'r--', 'LineWidth', 2);
set(gca, 'XTickLabel', month_names);
xlabel('Month');
ylabel('Units Consumed');
title('Monthly Electricity Usage Comparison');
legend('Monthly Usage', 'Safe Limit');
grid on;
hold off;

% Plot 3: Bill Breakdown
figure(3);
pie_values = [bill, fixed_charge, tax];
pie_labels = {'Energy Charges', 'Fixed Charges', 'Tax (9%)'};
pie(pie_values, pie_labels);
title('Bill Breakdown');

disp('Graphs plotted successfully!');
disp('==========================================');