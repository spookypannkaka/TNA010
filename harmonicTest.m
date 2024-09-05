clear
n = 1e15;
g = 0.5772156649;
Hn = log(n) + g;
% Hn is an approximation of the partial sum:
% 1+1/2+1/3 + ... + 1/n

format long
a = Hn
b = Hn + 1/(n+1)
format hex
a
b
format 
% The binary represenation of a and b are the same! 
% Thus we have reached an n such that adding
% the next term 1/(n+1) does not contribute to the 
% partial sum. 
% Hn is an approximation to the partial sum 
% but the situation would be the same for the 
% exakt partial sum. 

% A natural question arises, what is the smallest n, 
% so that the next term 1/(n+1) does not contribute to 
% the floating point representation of the partial sum
% 1+1/2+1/3 + ... + 1/n
% 
% This n is (likely) between 1e14 and 1e15 because if 
% you change to n = 1e14 (in the code above), 
% the result of Hn and Hn+1/(n+1) will not 
% be the same, try it! 
% 
% So to have a loop that goes to 1e15 will take some time. 
% I tried the following on my computer:

s = 0;
tic
for i = 1:1e10
    s = s+1/i;
end
toc

% i.e., n = 1e10. It took about 9 sek. To compute the partial sum 
% for first 1e15 terms would take about ten days.

% In previous discussions, my intution was that the n 
% when the next term does not contribute would
% be much smaller than 1e15. Then again the partial sum 
% grows like the logarithmic function, 
% which grows extremely slowly. Hn is only in the
% thirties for n = 1e15.




