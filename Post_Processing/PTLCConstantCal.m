%PT or LC Calibration Constant Calculator
%Written by Faheem Chunara and Arpad Kovesdy

%This script file was written to calculate the calibration constant of any
%load cell or pressure transducer in post processing. The user needs to
%provide 5 data points to generate a graph of voltage v Pressure or Thrust
%and the calibration constant.

%enter in 5 thrust or pressure data points
x = [0, 1500, 3000, 1500, 0]; 

%enter in corresponding voltage values as determined from testing via "Static Fire.VI" program
y = [0.007, 2.499, 4.997, 2.501, 0.008]; 

%sets axis bounds based on max and min pressure/thrust and voltage values
axis([.01 1 0 1500]) 

%graphs voltage v. thrust or pressure
plot(x,y);

%graphs individual data points
hold on
plot(x,y, 'o'); 

%sets axis labels
xlabel('Thrust (lb)')
ylabel('Voltage (V)')

%calculates coefficents of best fit line of two variables
p = polyfit(y,x,1);

%pulls calibration constant from p array
p(1);

%output calibration constant
fprintf('The calibration constant for your transducer is: %0.4f\n', p(1));