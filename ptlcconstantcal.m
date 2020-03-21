%PT or LC Calibration Constant Calculator
%Written by Faheem Chunara and Arpad Kovesdy

%This script file was written to calculate the calibration constant of any
%load cell or pressure transducer in post processing. The user needs to
%provide 5 data points to generate a graph of voltage v Pressure or Thrust
%and the calibration constant.

x = [0, 1500, 3000, 1500, 0]; %enter in 5 thrust or pressure data points
y = [0.007, 2.499, 4.997, 2.501, 0.008]; %enter in corresponding voltage values as determined from testing via "Static Fire.VI" program

axis([.01 1 0 1500]) %sets axis bounds based on max and min pressure/thrust and voltage values
plot(x,y); %graphs voltage v. thrust or pressure

p = polyfit(y,x,1);%calculates coefficents of best fit line of two variables
p(1) %outputs calibration constant
