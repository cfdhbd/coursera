close all; clear all; clc;
load('c1p8.mat');

% Fill in these values
sampling_period = 2; % in ms
num_timesteps = 150;
prior = 0;

for n = 1:150
val = rho(n,1);
prior = prior + val;
end

num_obv_spikes = sum(rho) - prior;

[sta,spike_times,window] = compute_sta(stim, rho, num_timesteps, num_obv_spikes);

time = -sampling_period*(num_timesteps-1):sampling_period:0; % in ms
%spikes = count(1,time);
figure(1);
plot(time, sta);
xlabel('Time (ms)');
ylabel('Stimulus');
title('Spike-Triggered Average');