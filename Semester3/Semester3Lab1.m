%[text] ## EXAMPLE 1
clc;
clf;
f = @(x) x.^2 + 54/x; 
a = 0;
b = 5;
n = 10;
delta_x = (b - a) / n;
x1 = a; 
x2 = x1 + delta_x; 
x3 = x2 + delta_x;
while x3 <= b
    f1 = f(x1); 
    f2 = f(x2); 
    f3 = f(x3);
    if f1 >= f2 && f2 <= f3
        break; 
    else
        x1 = x2; 
        x2 = x3; 
        x3 = x3 + delta_x; 
    end 
end
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', x1, x3); %[output:0e807dec]
fprintf('Function value at lower bound (x1): %.3f\n', f1); %[output:3f813ec2]
fprintf('Function value at minimum (x2): %.3f\n', f2); %[output:33b69f48]
fprintf('Function value at upper bound (x3): %.3f\n', f3); %[output:7fa58ae9]
%%
%[text] ## EXAMPLE 2
clc;
clf;
f = @(x) x.^2 + 54./x; 
x0 = 0.6;
delta = 0.5;
k = 0; 
f0 = f(x0); 
f1= f(x0 + delta); 
f2=f(x0-delta);
if  (f2>=f0 && f0>=f1)  %[output:group:72d67b36]
    disp("delta is positive")  %[output:3790f23c]
elseif (f2<=f0 && f0<=f1) 
        disp("delta is negative") 
    delta = -delta;
else 
    delta=delta/2; 
end %[output:group:72d67b36]
xk = x0; 
xk_next = xk + (2^k) * delta; 
while f(xk_next) < f(xk)
    xk = xk_next; 
    k = k + 1; 
    xk_next = xk + (2^k) * delta;
end 
x_lower = xk - (2^(k-1)) * delta;    
x_upper = xk_next;
f_lower_bound = f(x_lower); 
f_upper_bound = f(x_upper); 
f_minimum = f(xk);
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', min(x_lower, x_upper), max(x_lower, x_upper));  %[output:8b1ee78a]
fprintf('Function value at lower bound: %.3f\n', f_lower_bound);  %[output:7b6e58d1]
fprintf('Function value at upper bound: %.3f\n', f_upper_bound);  %[output:6f2245a3]
fprintf('Function value at the minimum: %.3f\n', f_minimum); %[output:74e9d1c6]
%%
%[text] ## EXAMPLE 3
clc;
clf;
f = @(x) x.^2 + 54./x;
a = 0; 
b = 5; 
L = b - a; 
count=0;
while L > 0.4  %[output:group:228d9ee1]
    xm = (a + b) / 2; 
    x1 = a + L / 4; 
    x2 = b - L / 4; 
    count=count+1; 
    f_x1 = f(x1); 
    f_x2 = f(x2); 
    f_xm = f(xm);
    if f_x1 < f_xm 
        b = xm; 
        xm = x1; 
    elseif f_xm > f_x2 
        a = xm; 
        b=b; 
    elseif f_x2 < f_xm 
        a = xm; 
        xm = x2; 
    elseif ((f_x1>f_xm)&&(f_xm<f_x2)) 
        a = x1; 
        b = x2; 
    end
    L = b - a; 
    fprintf('\n The minimum lies in (%.3f, %.3f) after the iteration number %d\n', a, b, count);  %[output:7da7259c]
end %[output:group:228d9ee1]
fprintf('\n Solution after the %dth iteration is: \n', count);  %[output:71a1e38c]
fprintf('\nThe minimum lies in (%.3f, %.3f)\n', a, b);  %[output:21f0c021]
fprintf('Minimum value is %.3f\n', f_xm); %[output:0a5c7563]
%%
%[text] ## Q1
clc;
clf;
f = @(x) (-4*x.^3)+100+exp(x); 
a = 3;
b = 8;
n = 9;
delta_x = (b - a) / (n+1);
x1 = a; 
x2 = x1 + delta_x; 
x3 = x2 + delta_x;
while x3 <= b
    f1 = f(x1); 
    f2 = f(x2); 
    f3 = f(x3);
    if f1 >= f2 && f2 <= f3
        break; 
    else
        x1 = x2; 
        x2 = x3; 
        x3 = x3 + delta_x; 
    end 
end
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', x1, x3); %[output:9d420c6a]
fprintf('Function value at lower bound (x1): %.3f\n', f1); %[output:6ced3cd7]
fprintf('Function value at minimum (x2): %.3f\n', f2); %[output:36a1f041]
fprintf('Function value at upper bound (x3): %.3f\n', f3); %[output:2127106c]
%%
%[text] ## Q2
clc;
clf;
f = @(x) (((x.^2)+1).^(1/2))-2; 
a = -2.5;
b = 1;
n = 20;
delta_x = (b - a) / n;
x1 = a; 
x2 = x1 + delta_x; 
x3 = x2 + delta_x;
while x3 <= b
    f1 = f(x1); 
    f2 = f(x2); 
    f3 = f(x3);
    if f1 >= f2 && f2 <= f3
        break; 
    else
        x1 = x2; 
        x2 = x3; 
        x3 = x3 + delta_x; 
    end 
end
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', x1, x3); %[output:48d00c2b]
fprintf('Function value at lower bound (x1): %.3f\n', f1); %[output:4b1c7315]
fprintf('Function value at minimum (x2): %.3f\n', f2); %[output:47d22d9c]
fprintf('Function value at upper bound (x3): %.3f\n', f3); %[output:73358d30]
%%
%[text] ## Q3
clc;
clf;
f = @(x) ((1-x).^4)-(((2*x)+10).^2); 
x0 = 2;
delta = 0.6;
k = 0; 
f0 = f(x0); 
f1= f(x0 + delta); 
f2=f(x0-delta);
if  (f2>=f0 && f0>=f1)  %[output:group:40649147]
    disp("delta is positive")  %[output:320a6d3f]
elseif (f2<=f0 && f0<=f1) 
        disp("delta is negative") 
    delta = -delta;
else 
    delta=delta/2; 
end %[output:group:40649147]
xk = x0; 
xk_next = xk + (2^k) * delta; 
while f(xk_next) < f(xk)
    xk = xk_next; 
    k = k + 1; 
    xk_next = xk + (2^k) * delta;
end 
x_lower = xk - (2^(k-1)) * delta;    
x_upper = xk_next;
f_lower_bound = f(x_lower); 
f_upper_bound = f(x_upper); 
f_minimum = f(xk);
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', min(x_lower, x_upper), max(x_lower, x_upper));  %[output:0e92202d]
fprintf('Function value at lower bound: %.3f\n', f_lower_bound);  %[output:0bccf243]
fprintf('Function value at upper bound: %.3f\n', f_upper_bound);  %[output:347f098f]
fprintf('Function value at the minimum: %.3f\n', f_minimum); %[output:944a5859]
%%
%[text] ## Q4
clc;
clf;
f = @(x) ((x+2).^4)+(sin(2*x)*cos(2*x)); 
x0 = -2.5;
delta = 0.05;
k = 0; 
f0 = f(x0); 
f1= f(x0 + delta); 
f2=f(x0-delta);
if  (f2>=f0 && f0>=f1)  %[output:group:8c59e51b]
    disp("delta is positive")  %[output:0d3cd3d4]
elseif (f2<=f0 && f0<=f1) 
        disp("delta is negative") 
    delta = -delta;
else 
    delta=delta/2; 
end %[output:group:8c59e51b]
xk = x0; 
xk_next = xk + (2^k) * delta; 
while f(xk_next) < f(xk)
    xk = xk_next; 
    k = k + 1; 
    xk_next = xk + (2^k) * delta;
end 
x_lower = xk - (2^(k-1)) * delta;    
x_upper = xk_next;
f_lower_bound = f(x_lower); 
f_upper_bound = f(x_upper); 
f_minimum = f(xk);
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', min(x_lower, x_upper), max(x_lower, x_upper));  %[output:839b87b2]
fprintf('Function value at lower bound: %.3f\n', f_lower_bound);  %[output:79b479db]
fprintf('Function value at upper bound: %.3f\n', f_upper_bound);  %[output:12db3422]
fprintf('Function value at the minimum: %.3f\n', f_minimum); %[output:74c186fa]
%%
%[text] ## Q5
clc;
clf;
f = @(x) exp(((x-0.2).^2)/2);
a = -5; 
b = 5; 
L = b - a; 
count=0  %[output:8346f0e1]
while L > 0.4  %[output:group:94288582]
    xm = (a + b) / 2; 
    x1 = a + L / 4; 
    x2 = b - L / 4; 
    count=count+1; 
    f_x1 = f(x1); 
    f_x2 = f(x2); 
    f_xm = f(xm);
    if f_x1 < f_xm 
        b = xm; 
        xm = x1; 
    elseif f_xm > f_x2 
        a = xm; 
        b=b; 
    elseif f_x2 < f_xm 
        a = xm; 
        xm = x2; 
    elseif ((f_x1>f_xm)&&(f_xm<f_x2)) 
        a = x1; 
        b = x2; 
    end
    L = b - a; 
    fprintf('\n The minimum lies in (%.3f, %.3f) after the iteration number %d\n', a, b, count);  %[output:279d8534]
end %[output:group:94288582]
fprintf('\n Solution after the %dth iteration is: \n', count);  %[output:76131b78]
fprintf('\nThe minimum lies in (%.3f, %.3f)\n', a, b);  %[output:9fccf6ff]
fprintf('Minimum value is %.3f\n', f_xm); %[output:33f30d58]
%%
%[text] ## Q6
clc;
clf;
f = @(x) (x.^2)*log(x+1) + (1/(x+1));
a = 0.5; 
b = 2.5; 
L = b - a; 
count=0  %[output:0263a36f]
while L > 0.4  %[output:group:1da696b1]
    xm = (a + b) / 2; 
    x1 = a + L / 4; 
    x2 = b - L / 4; 
    count=count+1; 
    f_x1 = f(x1); 
    f_x2 = f(x2); 
    f_xm = f(xm);
    if f_x1 < f_xm 
        b = xm; 
        xm = x1; 
    elseif f_xm > f_x2 
        a = xm; 
        b=b; 
    elseif f_x2 < f_xm 
        a = xm; 
        xm = x2; 
    elseif ((f_x1>f_xm)&&(f_xm<f_x2)) 
        a = x1; 
        b = x2; 
    end
    L = b - a; 
    fprintf('\n The minimum lies in (%.3f, %.3f) after the iteration number %d\n', a, b, count);  %[output:1b96a992]
end %[output:group:1da696b1]
fprintf('\n Solution after the %dth iteration is: \n', count);  %[output:86b6c2fd]
fprintf('\nThe minimum lies in (%.3f, %.3f)\n', a, b);  %[output:14ede09c]
fprintf('Minimum value is %.3f\n', f_xm); %[output:87c0fb13]
%%
%[text] ## Q7
%[text] ## (a)
clc;
clf;
f = @(x) abs(x-2)+3; 
a = -2;
b = 5;
n = 9;
delta_x = (b - a) / (n+1);
x1 = a; 
x2 = x1 + delta_x; 
x3 = x2 + delta_x;
while x3 <= b
    f1 = f(x1); 
    f2 = f(x2); 
    f3 = f(x3);
    if f1 >= f2 && f2 <= f3
        break; 
    else
        x1 = x2; 
        x2 = x3; 
        x3 = x3 + delta_x; 
    end 
end
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', x1, x3); %[output:31db6205]
fprintf('Function value at lower bound (x1): %.3f\n', f1); %[output:72691f8d]
fprintf('Function value at minimum (x2): %.3f\n', f2); %[output:532f0e79]
fprintf('Function value at upper bound (x3): %.3f\n', f3); %[output:788ec369]
%[text] ## (b)
clc;
clf;
f = @(x) abs(x-2)+3; 
x0 = 1;
delta = 0.4;
k = 0; 
f0 = f(x0); 
f1= f(x0 + delta); 
f2=f(x0-delta);
if  (f2>=f0 && f0>=f1)  %[output:group:95c2f82b]
    disp("delta is positive")  %[output:7567a246]
elseif (f2<=f0 && f0<=f1) 
        disp("delta is negative") 
    delta = -delta;
else 
    delta=delta/2; 
end %[output:group:95c2f82b]
xk = x0; 
xk_next = xk + (2^k) * delta; 
while f(xk_next) < f(xk)
    xk = xk_next; 
    k = k + 1; 
    xk_next = xk + (2^k) * delta;
end 
x_lower = xk - (2^(k-1)) * delta;    
x_upper = xk_next;
f_lower_bound = f(x_lower); 
f_upper_bound = f(x_upper); 
f_minimum = f(xk);
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', min(x_lower, x_upper), max(x_lower, x_upper));  %[output:5128a1ae]
fprintf('Function value at lower bound: %.3f\n', f_lower_bound);  %[output:5643e0dd]
fprintf('Function value at upper bound: %.3f\n', f_upper_bound);  %[output:88d0ebef]
fprintf('Function value at the minimum: %.3f\n', f_minimum); %[output:86b21ce9]
%[text] ## (c)
clc;
clf;
f = @(x) abs(x-2)+3;
a = -3; 
b = 4; 
L = b - a; 
count=0  %[output:55209d11]
while L > 0.4  %[output:group:28acd8a9]
    xm = (a + b) / 2; 
    x1 = a + L / 4; 
    x2 = b - L / 4; 
    count=count+1; 
    f_x1 = f(x1); 
    f_x2 = f(x2); 
    f_xm = f(xm);
    if f_x1 < f_xm 
        b = xm; 
        xm = x1; 
    elseif f_xm > f_x2 
        a = xm; 
        b=b; 
    elseif f_x2 < f_xm 
        a = xm; 
        xm = x2; 
    elseif ((f_x1>f_xm)&&(f_xm<f_x2)) 
        a = x1; 
        b = x2; 
    end
    L = b - a; 
    fprintf('\n The minimum lies in (%.3f, %.3f) after the iteration number %d\n', a, b, count);  %[output:2b1a05d2]
end %[output:group:28acd8a9]
fprintf('\n Solution after the %dth iteration is: \n', count);  %[output:7509ba40]
fprintf('\nThe minimum lies in (%.3f, %.3f)\n', a, b);  %[output:09666824]
fprintf('Minimum value is %.3f\n', f_xm); %[output:700e9514]
%%
%[text] ## Q8 (a)
clc;
clf;
f = @(x) cosh(2*x)+(x+1).^3; 
a = -3;
b = 6;
n = 12;
delta_x = (b - a) / n;
x1 = a; 
x2 = x1 + delta_x; 
x3 = x2 + delta_x;
while x3 <= b
    f1 = f(x1); 
    f2 = f(x2); 
    f3 = f(x3);
    if f1 >= f2 && f2 <= f3
        break; 
    else
        x1 = x2; 
        x2 = x3; 
        x3 = x3 + delta_x; 
    end 
end
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', x1, x3); %[output:60d61b64]
fprintf('Function value at lower bound (x1): %.3f\n', f1); %[output:79e586d7]
fprintf('Function value at minimum (x2): %.3f\n', f2); %[output:1a2dd52f]
fprintf('Function value at upper bound (x3): %.3f\n', f3); %[output:61dc7af9]
%[text] ## (b)
clc;
clf;
f = @(x) cosh(2*x)+(x+1).^3; 
x0 = -2;
delta = 0.2;
k = 0; 
f0 = f(x0); 
f1= f(x0 + delta); 
f2=f(x0-delta);
if  (f2>=f0 && f0>=f1)  %[output:group:88b1b920]
    disp("delta is positive")  %[output:526d3338]
elseif (f2<=f0 && f0<=f1) 
        disp("delta is negative") 
    delta = -delta;
else 
    delta=delta/2; 
end %[output:group:88b1b920]
xk = x0; 
xk_next = xk + (2^k) * delta; 
while f(xk_next) < f(xk)
    xk = xk_next; 
    k = k + 1; 
    xk_next = xk + (2^k) * delta;
end 
x_lower = xk - (2^(k-1)) * delta;    
x_upper = xk_next;
f_lower_bound = f(x_lower); 
f_upper_bound = f(x_upper); 
f_minimum = f(xk);
fprintf('\nThe minimum lies in the range (%.3f, %.3f)\n', min(x_lower, x_upper), max(x_lower, x_upper));  %[output:32e1e645]
fprintf('Function value at lower bound: %.3f\n', f_lower_bound);  %[output:4bbab634]
fprintf('Function value at upper bound: %.3f\n', f_upper_bound);  %[output:12f4f0f2]
fprintf('Function value at the minimum: %.3f\n', f_minimum); %[output:406db8bd]
%[text] ## (c)
clc;
clf;
f = @(x) cosh(2*x)+(x+1).^3;
a = -4; 
b = 1; 
L = b - a; 
count=0  %[output:5df6ff88]
while L > 0.4  %[output:group:6437aee4]
    xm = (a + b) / 2; 
    x1 = a + L / 4; 
    x2 = b - L / 4; 
    count=count+1; 
    f_x1 = f(x1); 
    f_x2 = f(x2); 
    f_xm = f(xm);
    if f_x1 < f_xm 
        b = xm; 
        xm = x1; 
    elseif f_xm > f_x2 
        a = xm; 
        b=b; 
    elseif f_x2 < f_xm 
        a = xm; 
        xm = x2; 
    elseif ((f_x1>f_xm)&&(f_xm<f_x2)) 
        a = x1; 
        b = x2; 
    end
    L = b - a; 
    fprintf('\n The minimum lies in (%.3f, %.3f) after the iteration number %d\n', a, b, count);  %[output:208931fe]
end %[output:group:6437aee4]
fprintf('\n Solution after the %dth iteration is: \n', count);  %[output:5f444ae6]
fprintf('\nThe minimum lies in (%.3f, %.3f)\n', a, b);  %[output:15900420]
fprintf('Minimum value is %.3f\n', f_xm); %[output:0632a778]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:0e807dec]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (2.500, 3.500)\n","truncated":false}}
%---
%[output:3f813ec2]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound (x1): 27.850\n","truncated":false}}
%---
%[output:33b69f48]
%   data: {"dataType":"text","outputData":{"text":"Function value at minimum (x2): 27.000\n","truncated":false}}
%---
%[output:7fa58ae9]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound (x3): 27.679\n","truncated":false}}
%---
%[output:3790f23c]
%   data: {"dataType":"text","outputData":{"text":"delta is positive\n","truncated":false}}
%---
%[output:8b1ee78a]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (2.100, 8.100)\n","truncated":false}}
%---
%[output:7b6e58d1]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound: 30.124\n","truncated":false}}
%---
%[output:6f2245a3]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound: 72.277\n","truncated":false}}
%---
%[output:74e9d1c6]
%   data: {"dataType":"text","outputData":{"text":"Function value at the minimum: 29.981\n","truncated":false}}
%---
%[output:7da7259c]
%   data: {"dataType":"text","outputData":{"text":"\n The minimum lies in (1.250, 3.750) after the iteration number 1\n\n The minimum lies in (2.500, 3.750) after the iteration number 2\n\n The minimum lies in (2.812, 3.438) after the iteration number 3\n\n The minimum lies in (2.812, 3.125) after the iteration number 4\n","truncated":false}}
%---
%[output:71a1e38c]
%   data: {"dataType":"text","outputData":{"text":"\n Solution after the 4th iteration is: \n","truncated":false}}
%---
%[output:21f0c021]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in (2.812, 3.125)\n","truncated":false}}
%---
%[output:0a5c7563]
%   data: {"dataType":"text","outputData":{"text":"Minimum value is 27.046\n","truncated":false}}
%---
%[output:9d420c6a]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (5.500, 6.500)\n","truncated":false}}
%---
%[output:6ced3cd7]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound (x1): -320.808\n","truncated":false}}
%---
%[output:36a1f041]
%   data: {"dataType":"text","outputData":{"text":"Function value at minimum (x2): -360.571\n","truncated":false}}
%---
%[output:2127106c]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound (x3): -333.358\n","truncated":false}}
%---
%[output:48d00c2b]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (-0.225, 0.125)\n","truncated":false}}
%---
%[output:4b1c7315]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound (x1): -0.975\n","truncated":false}}
%---
%[output:47d22d9c]
%   data: {"dataType":"text","outputData":{"text":"Function value at minimum (x2): -0.999\n","truncated":false}}
%---
%[output:73358d30]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound (x3): -0.992\n","truncated":false}}
%---
%[output:320a6d3f]
%   data: {"dataType":"text","outputData":{"text":"delta is positive\n","truncated":false}}
%---
%[output:0e92202d]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (2.600, 6.200)\n","truncated":false}}
%---
%[output:0bccf243]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound: -224.486\n","truncated":false}}
%---
%[output:347f098f]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound: 229.402\n","truncated":false}}
%---
%[output:944a5859]
%   data: {"dataType":"text","outputData":{"text":"Function value at the minimum: -248.294\n","truncated":false}}
%---
%[output:0d3cd3d4]
%   data: {"dataType":"text","outputData":{"text":"delta is positive\n","truncated":false}}
%---
%[output:839b87b2]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (-2.350, -1.750)\n","truncated":false}}
%---
%[output:79b479db]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound: 0.003\n","truncated":false}}
%---
%[output:12db3422]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound: -0.325\n","truncated":false}}
%---
%[output:74c186fa]
%   data: {"dataType":"text","outputData":{"text":"Function value at the minimum: -0.367\n","truncated":false}}
%---
%[output:8346f0e1]
%   data: {"dataType":"textualVariable","outputData":{"name":"count","value":"0"}}
%---
%[output:279d8534]
%   data: {"dataType":"text","outputData":{"text":"\n The minimum lies in (-2.500, 2.500) after the iteration number 1\n\n The minimum lies in (-1.250, 1.250) after the iteration number 2\n\n The minimum lies in (-0.625, 0.625) after the iteration number 3\n\n The minimum lies in (0.000, 0.625) after the iteration number 4\n\n The minimum lies in (0.000, 0.312) after the iteration number 5\n","truncated":false}}
%---
%[output:76131b78]
%   data: {"dataType":"text","outputData":{"text":"\n Solution after the 5th iteration is: \n","truncated":false}}
%---
%[output:9fccf6ff]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in (0.000, 0.312)\n","truncated":false}}
%---
%[output:33f30d58]
%   data: {"dataType":"text","outputData":{"text":"Minimum value is 1.006\n","truncated":false}}
%---
%[output:0263a36f]
%   data: {"dataType":"textualVariable","outputData":{"name":"count","value":"0"}}
%---
%[output:1b96a992]
%   data: {"dataType":"text","outputData":{"text":"\n The minimum lies in (0.500, 1.500) after the iteration number 1\n\n The minimum lies in (0.500, 1.000) after the iteration number 2\n\n The minimum lies in (0.500, 0.750) after the iteration number 3\n","truncated":false}}
%---
%[output:86b6c2fd]
%   data: {"dataType":"text","outputData":{"text":"\n Solution after the 3th iteration is: \n","truncated":false}}
%---
%[output:14ede09c]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in (0.500, 0.750)\n","truncated":false}}
%---
%[output:87c0fb13]
%   data: {"dataType":"text","outputData":{"text":"Minimum value is 0.886\n","truncated":false}}
%---
%[output:31db6205]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (1.500, 2.900)\n","truncated":false}}
%---
%[output:72691f8d]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound (x1): 3.500\n","truncated":false}}
%---
%[output:532f0e79]
%   data: {"dataType":"text","outputData":{"text":"Function value at minimum (x2): 3.200\n","truncated":false}}
%---
%[output:788ec369]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound (x3): 3.900\n","truncated":false}}
%---
%[output:7567a246]
%   data: {"dataType":"text","outputData":{"text":"delta is positive\n","truncated":false}}
%---
%[output:5128a1ae]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (1.400, 3.800)\n","truncated":false}}
%---
%[output:5643e0dd]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound: 3.600\n","truncated":false}}
%---
%[output:88d0ebef]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound: 4.800\n","truncated":false}}
%---
%[output:86b21ce9]
%   data: {"dataType":"text","outputData":{"text":"Function value at the minimum: 3.200\n","truncated":false}}
%---
%[output:55209d11]
%   data: {"dataType":"textualVariable","outputData":{"name":"count","value":"0"}}
%---
%[output:2b1a05d2]
%   data: {"dataType":"text","outputData":{"text":"\n The minimum lies in (0.500, 4.000) after the iteration number 1\n\n The minimum lies in (1.375, 3.125) after the iteration number 2\n\n The minimum lies in (1.375, 2.250) after the iteration number 3\n\n The minimum lies in (1.812, 2.250) after the iteration number 4\n\n The minimum lies in (1.922, 2.141) after the iteration number 5\n","truncated":false}}
%---
%[output:7509ba40]
%   data: {"dataType":"text","outputData":{"text":"\n Solution after the 5th iteration is: \n","truncated":false}}
%---
%[output:09666824]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in (1.922, 2.141)\n","truncated":false}}
%---
%[output:700e9514]
%   data: {"dataType":"text","outputData":{"text":"Minimum value is 3.031\n","truncated":false}}
%---
%[output:60d61b64]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (-0.750, 0.750)\n","truncated":false}}
%---
%[output:79e586d7]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound (x1): 2.368\n","truncated":false}}
%---
%[output:1a2dd52f]
%   data: {"dataType":"text","outputData":{"text":"Function value at minimum (x2): 2.000\n","truncated":false}}
%---
%[output:61dc7af9]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound (x3): 7.712\n","truncated":false}}
%---
%[output:526d3338]
%   data: {"dataType":"text","outputData":{"text":"delta is positive\n","truncated":false}}
%---
%[output:32e1e645]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in the range (-1.400, 1.000)\n","truncated":false}}
%---
%[output:4bbab634]
%   data: {"dataType":"text","outputData":{"text":"Function value at lower bound: 8.189\n","truncated":false}}
%---
%[output:12f4f0f2]
%   data: {"dataType":"text","outputData":{"text":"Function value at upper bound: 11.762\n","truncated":false}}
%---
%[output:406db8bd]
%   data: {"dataType":"text","outputData":{"text":"Function value at the minimum: 1.875\n","truncated":false}}
%---
%[output:5df6ff88]
%   data: {"dataType":"textualVariable","outputData":{"name":"count","value":"0"}}
%---
%[output:208931fe]
%   data: {"dataType":"text","outputData":{"text":"\n The minimum lies in (-1.500, 1.000) after the iteration number 1\n\n The minimum lies in (-0.875, 0.375) after the iteration number 2\n\n The minimum lies in (-0.562, 0.062) after the iteration number 3\n\n The minimum lies in (-0.406, -0.094) after the iteration number 4\n","truncated":false}}
%---
%[output:5f444ae6]
%   data: {"dataType":"text","outputData":{"text":"\n Solution after the 4th iteration is: \n","truncated":false}}
%---
%[output:15900420]
%   data: {"dataType":"text","outputData":{"text":"\nThe minimum lies in (-0.406, -0.094)\n","truncated":false}}
%---
%[output:0632a778]
%   data: {"dataType":"text","outputData":{"text":"Minimum value is 1.550\n","truncated":false}}
%---
