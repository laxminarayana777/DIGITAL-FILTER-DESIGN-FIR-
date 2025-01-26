clc;
clear all;
%LOW PASS FIR FILTER
num=[1 1];
den=[2 0];
s=freqz(num,den,100);
d=impz(num,den);
subplot(2,2,1)
plot(abs(s))
title('LOW PASS FIR FILTER')
%HIGH PASS  FIR FILTER
num=[1 -1];
den=[2 0];
s=freqz(num,den,100);
d=impz(num,den);
subplot(2,2,2)
plot(abs(s))
title('HIGH PASS FIR FILTER')
%BAND PASS FIR FILTER
num=[1 0 -1];
den=[2 0];
s=freqz(num,den,100);
d=impz(num,den);
subplot(2,2,3)
plot(abs(s))
title('BAND PASS FIR FILTER')
%BAND STOP FILTER
num=[1 0 1];
den=[2 0 0];
s=freqz(num,den,100);
d=impz(num,den);
subplot(2,2,4)
plot(abs(s))
title('BAND STOP FIR FILTER')
