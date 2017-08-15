%Q7/8
load('tuning.mat')


avg1 = mean(neuron1);
avg2 = mean(neuron2);
avg3 = mean(neuron3);
avg4 = mean(neuron4);
%plot(stim,avg1,stim,avg2,stim,avg3,stim,avg4);

%Q9
load('pop_coding.mat')

rmax1 = max(avg1); rmax2 = max(avg2); rmax3 = max(avg3); rmax4 = max(avg4);
avg_r = (r1(6) + r2(6) + r3(6) + r4(6))/4;
popvector = r1./rmax1 + r2./rmax2 + r3./rmax3 + r4./rmax4;
avg_popvector = mean(popvector);
max_popvector = max(popvector);

angle = acosd(max_popvector/avg_r);