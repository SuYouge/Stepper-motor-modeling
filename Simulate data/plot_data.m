clear;
load 'Te'
load 'current'
load 'current_ideal'
load 'standard_output'
load 'theta_output'
load 'Voltage'
load 'displacement'
LineWidth = 2;
%%
%���������ѹͼ��
figure(1);
plot(ua_a,ua_b,'LineWidth',LineWidth);
hold on;
plot(ub_a,ub_b,'LineWidth',LineWidth);
xlabel('Time/s'); ylabel('Voltage/V');title('Driver output');axis([0 0.05 -25 25]);
legend('Va','Vb');
%%
%����ת�Ǳ仯���
figure(2);
plot(standard_output_a,standard_output_b,'LineWidth',LineWidth);
hold on;
plot(theta_output_a,theta_output_b,'LineWidth',LineWidth);
xlabel('Time/s'); ylabel('Motor shaft Angle/deg');title('Motor output Angle');axis([0 0.55 -0.1 inf]);
legend('output ideal','output withload');
%%
%�����������ʱ�ĵ����仯
%������ʱ�ĵ����仯
figure(3);
subplot(2,1,1);
plot(current_ideal_a,current_ideal_b(:,1),'LineWidth',LineWidth);
hold on;
plot(current_ideal_a,current_ideal_b(:,2),'LineWidth',LineWidth);
xlabel('Time/s'); ylabel('Phase Current/A');title('Phase Current without load');axis([0 0.55 -inf,inf]);
legend('A Phase current','B Phase current');

subplot(2,1,2);
plot(current_a,current_b(:,1),'LineWidth',LineWidth);
hold on;
plot(current_a,current_b(:,2),'LineWidth',LineWidth);
xlabel('Time/s'); ylabel('Phase Current/A');title('Phase Current');axis([0 0.55 -inf,inf]);
legend('A Phase current','B Phase current');
%%
%���Ť�ر仯���
figure(4);
plot(Te_a,Te_b,'LineWidth',LineWidth);
xlabel('Time/s'); ylabel('Torque/Nm');title('Torque output');axis([0 0.55 -inf,inf]);
%%
figure(5);
plot(displacement_a,displacement_b,'LineWidth',LineWidth);
xlabel('Time/s'); ylabel('Displacement/m');title('Z axis displacement');axis([0 0.55 -inf,inf]);