data = load('-ascii', 'c10p1.mat');
%scatter(c10p1(:,1), c10p1(:,2));


n = 2;
alpha = 1;
dt = 0.01;

%plot(data(:,1),data(:,2));

% update rule: Wi+1 = Wi + dt*n*(v*u-alpha*v^2*w);
% where v = w*u
iter = 100;
w = zeros(2,iter); %2x1
w(:,1) = [0.2;0.2];

 for i = 2:iter
     v = w(:,i-1)*data(i,:); %2x1 * 1x2 = 2x2 * 1x2
     w(:,i) = w(i-1) + dt*n*(v*transpose(data(i,:))-alpha*v^.2*w(:,i-1));
                         % 2x2*2x1 = 2x1 - (2x2*2x1) = 2x1...
 end
  