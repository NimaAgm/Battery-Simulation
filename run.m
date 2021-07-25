clc
clear all
close all
%% Run Simulinkement
A1=5;
A2=5;
A3=5;
simOut=sim('UKFSIM2013.slx','SrcWorkspace','current');

%%
figure(1)
f(1)=plot(simOut.SOC_Model.signals.values,'linewidth',1.5);
hold on
f(2)=plot(simOut.SOC_EST.signals.values,'--','linewidth',1.5);
title('MODEL vs Estimation - SOC','FontSize',14,'FontWeight','bold')
ylabel('SOC ','FontSize',14);
legend('Model','Est')
%%
%% Save Plots
saveas(figure(1),'SOC.tif');
