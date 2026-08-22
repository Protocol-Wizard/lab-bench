%[text] ## Example 1
clc;
clf;

f = @(x) x.^2 + 54./x;
a = 0; 
b = 5;
m = 5;

F(1) = 1;
F(2) = 1;

for i = 3:m+1  %[output:group:5837f48c]
    F(i) = F(i-1) + F(i-2);
    fprintf('F(%d) = %.0f\n', i-1, F(i)); %[output:72181681]
end %[output:group:5837f48c]

L = b - a;
fprintf('Initial Interval = [%.4f , %.4f]\n\n',a,b); %[output:24c89daa]
k = 2;
Lk = (F(m-k+1)/F(m+1))*L;
x1 = a + Lk;
x2 = b - Lk;
f1 = f(x1);
f2 = f(x2);
fprintf('Iteration %d\n',k-1); %[output:3dab94a5]
fprintf('a = %.4f   b = %.4f\n',a,b); %[output:50104913]
fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:22860f20]
fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:989080f9]

while k < m %[output:group:1797d6f1]
    if f1 > f2
        a = x1;
        x1 = x2;
        f1 = f2;
        Lk = (F(m-k)/F(m+1))*L;
        x2 = b - Lk;
        f2 = f(x2);
    else
        b = x2;
        x2 = x1;
        f2 = f1;
        Lk = (F(m-k)/F(m+1))*L;
        x1 = a + Lk;
        f1 = f(x1);
    end
    fprintf('Iteration %d\n',k); %[output:34a62785] %[output:8f72391a] %[output:9ed7b77f]
    fprintf('a = %.4f   b = %.4f\n',a,b); %[output:174408aa] %[output:4ebccc33] %[output:90d6232a]
    fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:00ad6c9e] %[output:807f4ea2] %[output:86ebb2cb]
    fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:457bcfc1] %[output:99410ee5] %[output:0f53d20b]
    k = k + 1;
end %[output:group:1797d6f1]

fprintf('Final Interval = [%.4f , %.4f]\n',a,b); %[output:17874806]
fprintf('\n')
%%
%[text] ## Example 2
clc;
clf;

g = @(t) 25*t.^2 + 10.8./t;

a = 0;
b = 1;

eps = 1e-4;

phi = (sqrt(5)-1)/2;

t1 = b - phi*(b-a);
t2 = a + phi*(b-a);

g1 = g(t1);
g2 = g(t2);

iter = 0;

while (b-a) > eps
    iter = iter + 1;
    if g1 < g2
        b = t2;
        t2 = t1;
        g2 = g1;
        t1 = b - phi*(b-a);
        g1 = g(t1);
    else
        a = t1;
        t1 = t2;
        g1 = g2;
        t2 = a + phi*(b-a);
        g2 = g(t2);
    end
end

t_opt = (a+b)/2;

x_opt = 5*t_opt;

fprintf('Termination parameter = %e\n', eps); %[output:49072814]
fprintf('Number of iterations = %d\n', iter); %[output:736e9641]
fprintf('Optimal t = %.6f\n', t_opt); %[output:6346e7a2]
fprintf('Approximate minimum x = %.6f\n', x_opt); %[output:470321ab]
fprintf('Minimum function value = %.6f\n', x_opt^2 + 54/x_opt); %[output:32baf4ab]
fprintf('Final interval in t = (%.6f, %.6f)\n', a, b); %[output:9b60e7dc]
fprintf('Final interval in x = (%.6f, %.6f)\n', 5*a, 5*b); %[output:6d58a4b4]
fprintf('\n')
%%
%[text] ## Example 3
clc;
clf;

g = @(t) 25*t.^2 + 10.8./t;

a = 0;
b = 1;

phi = (sqrt(5)-1)/2;

t1 = b - (b-a)*phi;
t2 = a + (b-a)*phi;

g1 = g(t1);
g2 = g(t2);

N = 5;

for i = 1:N
    if g1 < g2
        b = t2;
        t2 = t1;
        g2 = g1;
        t1 = b - (b-a)*phi;
        g1 = g(t1);
    else
        a = t1;
        t1 = t2;
        g1 = g2;
        t2 = a + (b-a)*phi;
        g2 = g(t2);
    end
end

t = (a+b)/2;
x = 5*t;

fprintf('Number of iterations = %d\n',N); %[output:5511af02]
fprintf('Minimum in transformed variable t = %f\n',t); %[output:95378727]
fprintf('Approximate minimum x = %f\n',x); %[output:23112a92]
fprintf('Function value = %f\n',x^2 + 54/x); %[output:84cd6d0d]
fprintf('Final interval in t = (%f,%f)\n',a,b); %[output:61825b2f]
fprintf('Final interval in x = (%f,%f)\n',5*a,5*b) %[output:270f195a]
fprintf('\n')
%%
%[text] ## Q1
clc;
clf;

f = @(x) x.^2 + 54./x;
a = 4.5; 
b = 10;
m = 9;

F(1) = 1;
F(2) = 1;

for i = 3:m+1  %[output:group:4ff0b394]
    F(i) = F(i-1) + F(i-2);
    fprintf('F(%d) = %.0f\n', i-1, F(i)); %[output:8745d7c3]
end %[output:group:4ff0b394]

L = b - a;
fprintf('Initial Interval = [%.4f , %.4f]\n\n',a,b); %[output:7f9fe7b3]
k = 2;
Lk = (F(m-k+1)/F(m+1))*L;
x1 = a + Lk;
x2 = b - Lk;
f1 = f(x1);
f2 = f(x2);
fprintf('Iteration %d\n',k-1); %[output:808a607f]
fprintf('a = %.4f   b = %.4f\n',a,b); %[output:68b6c9ee]
fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:37b0f93a]
fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:5612b2e8]

while k < m %[output:group:3e135440]
    if f1 > f2
        a = x1;
        x1 = x2;
        f1 = f2;
        Lk = (F(m-k)/F(m+1))*L;
        x2 = b - Lk;
        f2 = f(x2);
    else
        b = x2;
        x2 = x1;
        f2 = f1;
        Lk = (F(m-k)/F(m+1))*L;
        x1 = a + Lk;
        f1 = f(x1);
    end
    fprintf('Iteration %d\n',k); %[output:41fac1f0] %[output:9fe4e4b4] %[output:3e84dae5] %[output:4e5d6411] %[output:94c3ce24] %[output:94b42a59] %[output:70c434ae]
    fprintf('a = %.4f   b = %.4f\n',a,b); %[output:7922d56c] %[output:1f66e7db] %[output:17ce4354] %[output:3476fbbd] %[output:86a5eefc] %[output:761528b6] %[output:1c662cfc]
    fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:745090a5] %[output:89da6242] %[output:840cf762] %[output:044c2fb3] %[output:012c8e60] %[output:1554ebbe] %[output:9d94a297]
    fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:796ba104] %[output:53ecd884] %[output:49bc98c0] %[output:8c152a16] %[output:1735b47c] %[output:0c488cf3] %[output:333fc71b]
    k = k + 1;
end %[output:group:3e135440]

fprintf('Final Interval = [%.4f , %.4f]\n',a,b); %[output:87239b7e]
fprintf('\n')
%%
%[text] ## Q2
clc;
clf;

f = @(x) x.^4  - (5*(x.^3)) + (2*exp(x)) - (5*cos(3*x));
a = 1; 
b = 4;
m = 4;

F(1) = 1;
F(2) = 1;

for i = 3:m+1  %[output:group:66c3ec4f]
    F(i) = F(i-1) + F(i-2);
    fprintf('F(%d) = %.0f\n', i-1, F(i)); %[output:6717f227]
end %[output:group:66c3ec4f]

L = b - a;
fprintf('Initial Interval = [%.4f , %.4f]\n\n',a,b); %[output:3ff2b469]
k = 2;
Lk = (F(m-k+1)/F(m+1))*L;
x1 = a + Lk;
x2 = b - Lk;
f1 = f(x1);
f2 = f(x2);
fprintf('Iteration %d\n',k-1); %[output:66fa6b36]
fprintf('a = %.4f   b = %.4f\n',a,b); %[output:8c7a7c60]
fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:325025c6]
fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:6ed86d66]

while k < m %[output:group:66570447]
    if f1 > f2
        a = x1;
        x1 = x2;
        f1 = f2;
        Lk = (F(m-k)/F(m+1))*L;
        x2 = b - Lk;
        f2 = f(x2);
    else
        b = x2;
        x2 = x1;
        f2 = f1;
        Lk = (F(m-k)/F(m+1))*L;
        x1 = a + Lk;
        f1 = f(x1);
    end
    fprintf('Iteration %d\n',k); %[output:0cd1daf2] %[output:81e207c6]
    fprintf('a = %.4f   b = %.4f\n',a,b); %[output:19ace738] %[output:4fca857a]
    fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:4508133a] %[output:81a1598a]
    fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:384ee14e] %[output:8509d86e]
    k = k + 1;
end %[output:group:66570447]

fprintf('Final Interval = [%.4f , %.4f]\n',a,b); %[output:33ce153f]
fprintf('\n')
%%
%[text] ## Q3
clc;
clf;

f = @(x) x.^3 - (12*x);
a = 0; 
b = 3.9;
m = 6;

F(1) = 1;
F(2) = 1;
    
for i = 3:m+1  %[output:group:9a23ddaf]
    F(i) = F(i-1) + F(i-2);
    fprintf('F(%d) = %.0f\n', i-1, F(i)); %[output:02742140]
end %[output:group:9a23ddaf]

L = b - a;
fprintf('Initial Interval = [%.4f , %.4f]\n\n',a,b); %[output:4016cc13]
k = 2;
Lk = (F(m-k+1)/F(m+1))*L;
x1 = a + Lk;
x2 = b - Lk;
f1 = f(x1);
f2 = f(x2);
fprintf('Iteration %d\n',k-1); %[output:5738095d]
fprintf('a = %.4f   b = %.4f\n',a,b); %[output:3288d143]
fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:5508525e]
fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:7e594108]

while k < m %[output:group:208a63b1]
    if f1 > f2
        a = x1;
        x1 = x2;
        f1 = f2;
        Lk = (F(m-k)/F(m+1))*L;
        x2 = b - Lk;
        f2 = f(x2);
    else
        b = x2;
        x2 = x1;
        f2 = f1;
        Lk = (F(m-k)/F(m+1))*L;
        x1 = a + Lk;
        f1 = f(x1);
    end
    fprintf('Iteration %d\n',k); %[output:2fd8d833] %[output:252a5428] %[output:4081f74f] %[output:58cf4e97]
    fprintf('a = %.4f   b = %.4f\n',a,b); %[output:3f9b5dfc] %[output:7d8bc45a] %[output:325a6da3] %[output:4312086f]
    fprintf('x1 = %.4f   f(x1)=%.4f\n',x1,f1); %[output:9780ecce] %[output:1e4babf0] %[output:9d7b2ec8] %[output:0b634931]
    fprintf('x2 = %.4f   f(x2)=%.4f\n\n',x2,f2); %[output:63cce2b5] %[output:26131ea3] %[output:0ad771a1] %[output:0fcdaa9a]
    k = k + 1;
end %[output:group:208a63b1]

fprintf('Final Interval = [%.4f , %.4f]\n',a,b); %[output:9e5de459]
fprintf('\n')
%%
%[text] ## Q4
clc;
clf;

g = @(t) (3*t+1).^4 - 5*(3*t+1).^3 + 2*exp(3*t+1) - 5*cos(3*(3*t+1));

a = 0;

b = 1;

phi = (sqrt(5)-1)/2;
t1 = b - (b-a)*phi;
t2 = a + (b-a)*phi;

g1 = g(t1);
g2 = g(t2);

N = 2;

for i = 1:N
    if g1 < g2
        b = t2;
        t2 = t1;
        g2 = g1;
        t1 = b - (b-a)*phi;
        g1 = g(t1);
    else
        a = t1;
        t1 = t2;
        g1 = g2;
        t2 = a + (b-a)*phi;
        g2 = g(t2);
    end
end

t = (a+b)/2;
x = 3*t+1;

fprintf('Number of iterations = %d\n',N); %[output:09982746]
fprintf('Minimum in transformed variable t = %f\n',t); %[output:7356d9ec]
fprintf('Approximate minimum x = %f\n',x); %[output:478da9e1]
fprintf('Function value = %f\n',(x).^4 - 5*(x).^3 + 2*exp(x) - 5*cos(3*(x))); %[output:74ad0c9c]
fprintf('Final interval in t = (%f,%f)\n',a,b); %[output:56fc730b]
fprintf('Final interval in x = (%f,%f)\n',3*a+1,3*b+1) %[output:2b90f23b]
fprintf('\n')
%%
%[text] ## Q5
clc;
clf;

g = @(t) (10*t-5).^2 - 3*(10*t-5) - 20;
a = 0;
b = 1;

eps = .2;

phi = (sqrt(5)-1)/2;

t1 = b - phi*(b-a);
t2 = a + phi*(b-a);

g1 = g(t1);
g2 = g(t2);

iter = 0;

while (b-a) > eps
    iter = iter + 1;
    if g1 < g2
        b = t2;
        t2 = t1;
        g2 = g1;
        t1 = b - phi*(b-a);
        g1 = g(t1);
    else
        a = t1;
        t1 = t2;
        g1 = g2;
        t2 = a + phi*(b-a);
        g2 = g(t2);
    end
end

t_opt = (a+b)/2;

x_opt = (10*t_opt)-5;

fprintf('Termination parameter = %e\n', eps); %[output:57c5a2de]
fprintf('Number of iterations = %d\n', iter); %[output:5771b57b]
fprintf('Optimal t = %.6f\n', t_opt); %[output:1426bb8c]
fprintf('Approximate minimum x = %.6f\n', x_opt); %[output:74c9f4dd]
fprintf('Minimum function value = %.6f\n', (x_opt).^2 - 3*(x_opt) - 20); %[output:8535062a]
fprintf('Final interval in t = (%.6f, %.6f)\n', a, b); %[output:553066c6]
fprintf('Final interval in x = (%.6f, %.6f)\n', 10*a-5, 10*b-5); %[output:533bc8ed]
fprintf('\n')
%%
%[text] ## Q6
clc;
clf;

g = @(t) exp((32*(t.^2))-(17.6*(t))+2.42);

a = 0;

b = 1;

phi = (sqrt(5)-1)/2;

t1 = b - (b-a)*phi;
t2 = a + (b-a)*phi;

g1 = g(t1);
g2 = g(t2);

N = 3;

for i = 1:N
    if g1 < g2
        b = t2;
        t2 = t1;
        g2 = g1;
        t1 = b - (b-a)*phi;
        g1 = g(t1);
    else
        a = t1;
        t1 = t2;
        g1 = g2;
        t2 = a + (b-a)*phi;
        g2 = g(t2);
    end
end

t = (a+b)/2;
x = 8*t-2;

fprintf('Number of iterations = %d\n',N); %[output:2d8a460c]
fprintf('Minimum in transformed variable t = %f\n',t); %[output:693fa306]
fprintf('Approximate minimum x = %f\n',x); %[output:361ca672]
fprintf('Function value = %f\n',exp(((x-0.2).^2)/2)); %[output:85e620e9]
fprintf('Final interval in t = (%f,%f)\n',a,b); %[output:2c9f7bf6]
fprintf('Final interval in x = (%f,%f)\n',8*a-2,8*b-2) %[output:7afec492]
fprintf('\n')
%%
%[text] ## Q7
clc;
clf;

g = @(t) 0.65 - (0.75/(1+(9*(t).^2))) - 0.65*atan(1/(3*t));

a = 0;

b = 1;

phi = (sqrt(5)-1)/2;

t1 = b - (b-a)*phi;
t2 = a + (b-a)*phi;

g1 = g(t1);
g2 = g(t2);

N = 2;

for i = 1:N
    if g1 < g2
        b = t2;
        t2 = t1;
        g2 = g1;
        t1 = b - (b-a)*phi;
        g1 = g(t1);
    else
        a = t1;
        t1 = t2;
        g1 = g2;
        t2 = a + (b-a)*phi;
        g2 = g(t2);
    end
end

t = (a+b)/2;
x = 3*t;

fprintf('Number of iterations = %d\n',N); %[output:6e56278d]
fprintf('Minimum in transformed variable t = %f\n',t); %[output:75b58c3b]
fprintf('Approximate minimum x = %f\n',x); %[output:90b7cb91]
fprintf('Function value = %f\n',0.65 - (0.75/(1+(x.^2))) - 0.65*atan(1/x)); %[output:2e2f1135]
fprintf('Final interval in t = (%f,%f)\n',a,b); %[output:42355aa0]
fprintf('Final interval in x = (%f,%f)\n',3*a,3*b) %[output:77ed2126]
fprintf('\n')

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:72181681]
%   data: {"dataType":"text","outputData":{"text":"F(2) = 2\nF(3) = 3\nF(4) = 5\nF(5) = 8\n","truncated":false}}
%---
%[output:24c89daa]
%   data: {"dataType":"text","outputData":{"text":"Initial Interval = [0.0000 , 5.0000]\n\n","truncated":false}}
%---
%[output:3dab94a5]
%   data: {"dataType":"text","outputData":{"text":"Iteration 1\n","truncated":false}}
%---
%[output:50104913]
%   data: {"dataType":"text","outputData":{"text":"a = 0.0000   b = 5.0000\n","truncated":false}}
%---
%[output:22860f20]
%   data: {"dataType":"text","outputData":{"text":"x1 = 1.8750   f(x1)=32.3156\n","truncated":false}}
%---
%[output:989080f9]
%   data: {"dataType":"text","outputData":{"text":"x2 = 3.1250   f(x2)=27.0456\n\n","truncated":false}}
%---
%[output:34a62785]
%   data: {"dataType":"text","outputData":{"text":"Iteration 2\n","truncated":false}}
%---
%[output:174408aa]
%   data: {"dataType":"text","outputData":{"text":"a = 1.8750   b = 5.0000\n","truncated":false}}
%---
%[output:00ad6c9e]
%   data: {"dataType":"text","outputData":{"text":"x1 = 3.1250   f(x1)=27.0456\n","truncated":false}}
%---
%[output:457bcfc1]
%   data: {"dataType":"text","outputData":{"text":"x2 = 3.7500   f(x2)=28.4625\n\n","truncated":false}}
%---
%[output:8f72391a]
%   data: {"dataType":"text","outputData":{"text":"Iteration 3\n","truncated":false}}
%---
%[output:9ed7b77f]
%   data: {"dataType":"text","outputData":{"text":"Iteration 4\n","truncated":false}}
%---
%[output:4ebccc33]
%   data: {"dataType":"text","outputData":{"text":"a = 1.8750   b = 3.7500\n","truncated":false}}
%---
%[output:99410ee5]
%   data: {"dataType":"text","outputData":{"text":"x2 = 3.1250   f(x2)=27.0456\n\n","truncated":false}}
%---
%[output:807f4ea2]
%   data: {"dataType":"text","outputData":{"text":"x1 = 2.5000   f(x1)=27.8500\n","truncated":false}}
%---
%[output:90d6232a]
%   data: {"dataType":"text","outputData":{"text":"a = 2.5000   b = 3.7500\n","truncated":false}}
%---
%[output:86ebb2cb]
%   data: {"dataType":"text","outputData":{"text":"x1 = 3.1250   f(x1)=27.0456\n","truncated":false}}
%---
%[output:0f53d20b]
%   data: {"dataType":"text","outputData":{"text":"x2 = 3.1250   f(x2)=27.0456\n\n","truncated":false}}
%---
%[output:17874806]
%   data: {"dataType":"text","outputData":{"text":"Final Interval = [2.5000 , 3.7500]\n","truncated":false}}
%---
%[output:49072814]
%   data: {"dataType":"text","outputData":{"text":"Termination parameter = 1.000000e-04\n","truncated":false}}
%---
%[output:736e9641]
%   data: {"dataType":"text","outputData":{"text":"Number of iterations = 20\n","truncated":false}}
%---
%[output:6346e7a2]
%   data: {"dataType":"text","outputData":{"text":"Optimal t = 0.599993\n","truncated":false}}
%---
%[output:470321ab]
%   data: {"dataType":"text","outputData":{"text":"Approximate minimum x = 2.999967\n","truncated":false}}
%---
%[output:32baf4ab]
%   data: {"dataType":"text","outputData":{"text":"Minimum function value = 27.000000\n","truncated":false}}
%---
%[output:9b60e7dc]
%   data: {"dataType":"text","outputData":{"text":"Final interval in t = (0.599960, 0.600026)\n","truncated":false}}
%---
%[output:6d58a4b4]
%   data: {"dataType":"text","outputData":{"text":"Final interval in x = (2.999802, 3.000132)\n","truncated":false}}
%---
%[output:5511af02]
%   data: {"dataType":"text","outputData":{"text":"Number of iterations = 5\n","truncated":false}}
%---
%[output:95378727]
%   data: {"dataType":"text","outputData":{"text":"Minimum in transformed variable t = 0.572949\n","truncated":false}}
%---
%[output:23112a92]
%   data: {"dataType":"text","outputData":{"text":"Approximate minimum x = 2.864745\n","truncated":false}}
%---
%[output:84cd6d0d]
%   data: {"dataType":"text","outputData":{"text":"Function value = 27.056609\n","truncated":false}}
%---
%[output:61825b2f]
%   data: {"dataType":"text","outputData":{"text":"Final interval in t = (0.527864,0.618034)\n","truncated":false}}
%---
%[output:270f195a]
%   data: {"dataType":"text","outputData":{"text":"Final interval in x = (2.639320,3.090170)\n","truncated":false}}
%---
%[output:8745d7c3]
%   data: {"dataType":"text","outputData":{"text":"F(2) = 2\nF(3) = 3\nF(4) = 5\nF(5) = 8\nF(6) = 13\nF(7) = 21\nF(8) = 34\nF(9) = 55\n","truncated":false}}
%---
%[output:7f9fe7b3]
%   data: {"dataType":"text","outputData":{"text":"Initial Interval = [4.5000 , 10.0000]\n\n","truncated":false}}
%---
%[output:808a607f]
%   data: {"dataType":"text","outputData":{"text":"Iteration 1\n","truncated":false}}
%---
%[output:68b6c9ee]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 10.0000\n","truncated":false}}
%---
%[output:37b0f93a]
%   data: {"dataType":"text","outputData":{"text":"x1 = 6.6000   f(x1)=51.7418\n","truncated":false}}
%---
%[output:5612b2e8]
%   data: {"dataType":"text","outputData":{"text":"x2 = 7.9000   f(x2)=69.2454\n\n","truncated":false}}
%---
%[output:41fac1f0]
%   data: {"dataType":"text","outputData":{"text":"Iteration 2\n","truncated":false}}
%---
%[output:7922d56c]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 7.9000\n","truncated":false}}
%---
%[output:745090a5]
%   data: {"dataType":"text","outputData":{"text":"x1 = 5.8000   f(x1)=42.9503\n","truncated":false}}
%---
%[output:796ba104]
%   data: {"dataType":"text","outputData":{"text":"x2 = 6.6000   f(x2)=51.7418\n\n","truncated":false}}
%---
%[output:9fe4e4b4]
%   data: {"dataType":"text","outputData":{"text":"Iteration 3\n","truncated":false}}
%---
%[output:3e84dae5]
%   data: {"dataType":"text","outputData":{"text":"Iteration 4\n","truncated":false}}
%---
%[output:4e5d6411]
%   data: {"dataType":"text","outputData":{"text":"Iteration 5\n","truncated":false}}
%---
%[output:53ecd884]
%   data: {"dataType":"text","outputData":{"text":"x2 = 5.8000   f(x2)=42.9503\n\n","truncated":false}}
%---
%[output:89da6242]
%   data: {"dataType":"text","outputData":{"text":"x1 = 5.3000   f(x1)=38.2787\n","truncated":false}}
%---
%[output:1f66e7db]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 6.6000\n","truncated":false}}
%---
%[output:94c3ce24]
%   data: {"dataType":"text","outputData":{"text":"Iteration 6\n","truncated":false}}
%---
%[output:49bc98c0]
%   data: {"dataType":"text","outputData":{"text":"x2 = 5.3000   f(x2)=38.2787\n\n","truncated":false}}
%---
%[output:94b42a59]
%   data: {"dataType":"text","outputData":{"text":"Iteration 7\n","truncated":false}}
%---
%[output:840cf762]
%   data: {"dataType":"text","outputData":{"text":"x1 = 5.0000   f(x1)=35.8000\n","truncated":false}}
%---
%[output:70c434ae]
%   data: {"dataType":"text","outputData":{"text":"Iteration 8\n","truncated":false}}
%---
%[output:8c152a16]
%   data: {"dataType":"text","outputData":{"text":"x2 = 5.0000   f(x2)=35.8000\n\n","truncated":false}}
%---
%[output:17ce4354]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 5.8000\n","truncated":false}}
%---
%[output:3476fbbd]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 5.3000\n","truncated":false}}
%---
%[output:044c2fb3]
%   data: {"dataType":"text","outputData":{"text":"x1 = 4.8000   f(x1)=34.2900\n","truncated":false}}
%---
%[output:1735b47c]
%   data: {"dataType":"text","outputData":{"text":"x2 = 4.8000   f(x2)=34.2900\n\n","truncated":false}}
%---
%[output:86a5eefc]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 5.0000\n","truncated":false}}
%---
%[output:761528b6]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 4.8000\n","truncated":false}}
%---
%[output:1c662cfc]
%   data: {"dataType":"text","outputData":{"text":"a = 4.5000   b = 4.7000\n","truncated":false}}
%---
%[output:0c488cf3]
%   data: {"dataType":"text","outputData":{"text":"x2 = 4.7000   f(x2)=33.5794\n\n","truncated":false}}
%---
%[output:012c8e60]
%   data: {"dataType":"text","outputData":{"text":"x1 = 4.7000   f(x1)=33.5794\n","truncated":false}}
%---
%[output:1554ebbe]
%   data: {"dataType":"text","outputData":{"text":"x1 = 4.6000   f(x1)=32.8991\n","truncated":false}}
%---
%[output:9d94a297]
%   data: {"dataType":"text","outputData":{"text":"x1 = 4.6000   f(x1)=32.8991\n","truncated":false}}
%---
%[output:333fc71b]
%   data: {"dataType":"text","outputData":{"text":"x2 = 4.6000   f(x2)=32.8991\n\n","truncated":false}}
%---
%[output:87239b7e]
%   data: {"dataType":"text","outputData":{"text":"Final Interval = [4.5000 , 4.7000]\n","truncated":false}}
%---
%[output:6717f227]
%   data: {"dataType":"text","outputData":{"text":"F(2) = 2\nF(3) = 3\nF(4) = 5\n","truncated":false}}
%---
%[output:3ff2b469]
%   data: {"dataType":"text","outputData":{"text":"Initial Interval = [1.0000 , 4.0000]\n\n","truncated":false}}
%---
%[output:66fa6b36]
%   data: {"dataType":"text","outputData":{"text":"Iteration 1\n","truncated":false}}
%---
%[output:8c7a7c60]
%   data: {"dataType":"text","outputData":{"text":"a = 1.0000   b = 4.0000\n","truncated":false}}
%---
%[output:325025c6]
%   data: {"dataType":"text","outputData":{"text":"x1 = 2.2000   f(x1)=-16.5155\n","truncated":false}}
%---
%[output:6ed86d66]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.8000   f(x2)=-12.8087\n\n","truncated":false}}
%---
%[output:0cd1daf2]
%   data: {"dataType":"text","outputData":{"text":"Iteration 2\n","truncated":false}}
%---
%[output:19ace738]
%   data: {"dataType":"text","outputData":{"text":"a = 1.0000   b = 2.8000\n","truncated":false}}
%---
%[output:4508133a]
%   data: {"dataType":"text","outputData":{"text":"x1 = 1.6000   f(x1)=-4.4578\n","truncated":false}}
%---
%[output:384ee14e]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.2000   f(x2)=-16.5155\n\n","truncated":false}}
%---
%[output:81e207c6]
%   data: {"dataType":"text","outputData":{"text":"Iteration 3\n","truncated":false}}
%---
%[output:4fca857a]
%   data: {"dataType":"text","outputData":{"text":"a = 1.6000   b = 2.8000\n","truncated":false}}
%---
%[output:81a1598a]
%   data: {"dataType":"text","outputData":{"text":"x1 = 2.2000   f(x1)=-16.5155\n","truncated":false}}
%---
%[output:8509d86e]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.2000   f(x2)=-16.5155\n\n","truncated":false}}
%---
%[output:33ce153f]
%   data: {"dataType":"text","outputData":{"text":"Final Interval = [1.6000 , 2.8000]\n","truncated":false}}
%---
%[output:02742140]
%   data: {"dataType":"text","outputData":{"text":"F(2) = 2\nF(3) = 3\nF(4) = 5\nF(5) = 8\nF(6) = 13\n","truncated":false}}
%---
%[output:4016cc13]
%   data: {"dataType":"text","outputData":{"text":"Initial Interval = [0.0000 , 3.9000]\n\n","truncated":false}}
%---
%[output:5738095d]
%   data: {"dataType":"text","outputData":{"text":"Iteration 1\n","truncated":false}}
%---
%[output:3288d143]
%   data: {"dataType":"text","outputData":{"text":"a = 0.0000   b = 3.9000\n","truncated":false}}
%---
%[output:5508525e]
%   data: {"dataType":"text","outputData":{"text":"x1 = 1.5000   f(x1)=-14.6250\n","truncated":false}}
%---
%[output:7e594108]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.4000   f(x2)=-14.9760\n\n","truncated":false}}
%---
%[output:2fd8d833]
%   data: {"dataType":"text","outputData":{"text":"Iteration 2\n","truncated":false}}
%---
%[output:3f9b5dfc]
%   data: {"dataType":"text","outputData":{"text":"a = 1.5000   b = 3.9000\n","truncated":false}}
%---
%[output:9780ecce]
%   data: {"dataType":"text","outputData":{"text":"x1 = 2.4000   f(x1)=-14.9760\n","truncated":false}}
%---
%[output:63cce2b5]
%   data: {"dataType":"text","outputData":{"text":"x2 = 3.0000   f(x2)=-9.0000\n\n","truncated":false}}
%---
%[output:252a5428]
%   data: {"dataType":"text","outputData":{"text":"Iteration 3\n","truncated":false}}
%---
%[output:4081f74f]
%   data: {"dataType":"text","outputData":{"text":"Iteration 4\n","truncated":false}}
%---
%[output:58cf4e97]
%   data: {"dataType":"text","outputData":{"text":"Iteration 5\n","truncated":false}}
%---
%[output:26131ea3]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.4000   f(x2)=-14.9760\n\n","truncated":false}}
%---
%[output:1e4babf0]
%   data: {"dataType":"text","outputData":{"text":"x1 = 2.1000   f(x1)=-15.9390\n","truncated":false}}
%---
%[output:7d8bc45a]
%   data: {"dataType":"text","outputData":{"text":"a = 1.5000   b = 3.0000\n","truncated":false}}
%---
%[output:325a6da3]
%   data: {"dataType":"text","outputData":{"text":"a = 1.5000   b = 2.4000\n","truncated":false}}
%---
%[output:0ad771a1]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.1000   f(x2)=-15.9390\n\n","truncated":false}}
%---
%[output:4312086f]
%   data: {"dataType":"text","outputData":{"text":"a = 1.8000   b = 2.4000\n","truncated":false}}
%---
%[output:9d7b2ec8]
%   data: {"dataType":"text","outputData":{"text":"x1 = 1.8000   f(x1)=-15.7680\n","truncated":false}}
%---
%[output:0b634931]
%   data: {"dataType":"text","outputData":{"text":"x1 = 2.1000   f(x1)=-15.9390\n","truncated":false}}
%---
%[output:0fcdaa9a]
%   data: {"dataType":"text","outputData":{"text":"x2 = 2.1000   f(x2)=-15.9390\n\n","truncated":false}}
%---
%[output:9e5de459]
%   data: {"dataType":"text","outputData":{"text":"Final Interval = [1.8000 , 2.4000]\n","truncated":false}}
%---
%[output:09982746]
%   data: {"dataType":"text","outputData":{"text":"Number of iterations = 2\n","truncated":false}}
%---
%[output:7356d9ec]
%   data: {"dataType":"text","outputData":{"text":"Minimum in transformed variable t = 0.427051\n","truncated":false}}
%---
%[output:478da9e1]
%   data: {"dataType":"text","outputData":{"text":"Approximate minimum x = 2.281153\n","truncated":false}}
%---
%[output:74ad0c9c]
%   data: {"dataType":"text","outputData":{"text":"Function value = -16.933274\n","truncated":false}}
%---
%[output:56fc730b]
%   data: {"dataType":"text","outputData":{"text":"Final interval in t = (0.236068,0.618034)\n","truncated":false}}
%---
%[output:2b90f23b]
%   data: {"dataType":"text","outputData":{"text":"Final interval in x = (1.708204,2.854102)\n","truncated":false}}
%---
%[output:57c5a2de]
%   data: {"dataType":"text","outputData":{"text":"Termination parameter = 2.000000e-01\n","truncated":false}}
%---
%[output:5771b57b]
%   data: {"dataType":"text","outputData":{"text":"Number of iterations = 4\n","truncated":false}}
%---
%[output:1426bb8c]
%   data: {"dataType":"text","outputData":{"text":"Optimal t = 0.690983\n","truncated":false}}
%---
%[output:74c9f4dd]
%   data: {"dataType":"text","outputData":{"text":"Approximate minimum x = 1.909830\n","truncated":false}}
%---
%[output:8535062a]
%   data: {"dataType":"text","outputData":{"text":"Minimum function value = -22.082039\n","truncated":false}}
%---
%[output:553066c6]
%   data: {"dataType":"text","outputData":{"text":"Final interval in t = (0.618034, 0.763932)\n","truncated":false}}
%---
%[output:533bc8ed]
%   data: {"dataType":"text","outputData":{"text":"Final interval in x = (1.180340, 2.639320)\n","truncated":false}}
%---
%[output:2d8a460c]
%   data: {"dataType":"text","outputData":{"text":"Number of iterations = 3\n","truncated":false}}
%---
%[output:693fa306]
%   data: {"dataType":"text","outputData":{"text":"Minimum in transformed variable t = 0.263932\n","truncated":false}}
%---
%[output:361ca672]
%   data: {"dataType":"text","outputData":{"text":"Approximate minimum x = 0.111456\n","truncated":false}}
%---
%[output:85e620e9]
%   data: {"dataType":"text","outputData":{"text":"Function value = 1.003928\n","truncated":false}}
%---
%[output:2c9f7bf6]
%   data: {"dataType":"text","outputData":{"text":"Final interval in t = (0.145898,0.381966)\n","truncated":false}}
%---
%[output:7afec492]
%   data: {"dataType":"text","outputData":{"text":"Final interval in x = (-0.832816,1.055728)\n","truncated":false}}
%---
%[output:6e56278d]
%   data: {"dataType":"text","outputData":{"text":"Number of iterations = 2\n","truncated":false}}
%---
%[output:75b58c3b]
%   data: {"dataType":"text","outputData":{"text":"Minimum in transformed variable t = 0.190983\n","truncated":false}}
%---
%[output:90b7cb91]
%   data: {"dataType":"text","outputData":{"text":"Approximate minimum x = 0.572949\n","truncated":false}}
%---
%[output:2e2f1135]
%   data: {"dataType":"text","outputData":{"text":"Function value = -0.597472\n","truncated":false}}
%---
%[output:42355aa0]
%   data: {"dataType":"text","outputData":{"text":"Final interval in t = (0.000000,0.381966)\n","truncated":false}}
%---
%[output:77ed2126]
%   data: {"dataType":"text","outputData":{"text":"Final interval in x = (0.000000,1.145898)\n","truncated":false}}
%---
