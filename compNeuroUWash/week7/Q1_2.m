
Q = [0.2, 0.1; 0.1, 0.3];

e = eig(Q);

for t=1:100
    e = eig(Q);
    change = [Q(1,1)/e(1,1), Q(1,2)/e(2,1)];
    Q(1,:) = change;
end
