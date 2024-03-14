echo on
t=0:0.01:10;
a=sin(t);
[sqnr8,aquan8,code8] = u_pcm(a,8);
[sqnr16,aquan16,code16] = u_pcm(a,16);
display(sqnr8);
display(sqnr16);
plot(t,a,'-',t,aquan8,'-.',t,aquan16,'-',t,zeros(1,length(t)));
legend('Original Signal','8 Level Quantized Signal','16 Level Quantized Signal');