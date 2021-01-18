
% Analysis of Stochastic Processes

% Exercise 1

clc;
clear all;
close all;

% Task 1 : Linear Dependence

%load data
data=load ("Exercise1-1.txt");

% Define values(segment) for x
x = data (401:801 ,1);

% Define value(segment) for y1-y3
y1 = data (401:801 ,2);
y2 = data (401:801 ,3);
y3 = data (401:801 ,4);

% Plot the three series
hold on
figure(1);
plot(x,y1);
plot(x,y2);
plot(x,y3);
title("The three Series of Measurements");
xlabel("Time in seconds");
ylabel("Displacements in meters");
hold off

% Mean Values
x_bar  = sum(x)/length(x);
y1_bar = sum(y1)/length(y1);
y2_bar = sum(y2)/length(y2);
y3_bar = sum(y3)/length(y3);

% Calculate Covariances
cov_xy_1 = sum((x-x_bar).*(y1-y1_bar));
cov_xy_2 = sum((x-x_bar).*(y2-y2_bar));
cov_xy_3 = sum((x-x_bar).*(y3-y3_bar));

% Calculate Std. Deviations
std_x  = sum((x-x_bar).^2);
std_y1 = sum((y1-y1_bar).^2);
std_y2 = sum((y2-y2_bar).^2);
std_y3 = sum((y3-y3_bar).^2);

% Calculate Pearson's Correlations Coefficient
r1 = cov_xy_1/sqrt(std_x .* std_y1);
r2 = cov_xy_2/sqrt(std_x .* std_y2);
r3 = cov_xy_3/sqrt(std_x .* std_y3);



% Task 2: Stationary

% Load data
data_sta_2 = load("Exercise1-2.txt");
data_sta_3 = load("Exercise1-3.txt");

% Define values for x
sta_2 = data_sta_2(401:801,1);
sta_3 = data_sta_3(401:801,1);

% Plot Stationary Series 2
figure(2);
subplot(2,1,1);
plot(sta_2);
title("Stationary Series 1")
xlabel("Number of Measurements");
ylabel("Displacements in meters");

% Plot Stationary Series 3
figure(3);
subplot(2,1,2);
plot(sta_3);
title("Stationary Series 2")
xlabel("Number of Measurements");
ylabel("Displacements in meters");

% Mean Values
x_sta_2_bar = sum(sta_2)/length(st2);
x_sta_3_bar = sum(sta_3)/length(st3);

% Calculate Standard Deviations
std_sta_2 = sum(sqrt((sta_2-x_sta_2_bar).^2));
std_sta_3 = sum(sqrt((sta_3-x_sta_3_bar).^2));

