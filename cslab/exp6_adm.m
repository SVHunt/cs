clc
close all
clear all

td=0.002;
t=[0:td:1];
xsig=sin(2*pi*t)-sin(6*pi*t);
ts=0.2;
delta=0.2;
Lsig=length(xsig);
if(rem(ts/td,1)==0)
    nfac=round(ts/td);
    p_zoh=ones(1,nfac);
    s_down=downsample(xsig,nfac);
    Num_it=length(s_down);
    s_DMout(1)=delta/2;
    for k=2:Num_it
        xvar=s_DMout(k-1);
        s_DMout(k)=xvar+delta*sign(s_down(k-1)-xvar);
    end
    S_DMout=kron(s_DMout,p_zoh);
else
    S_DMout=[];
end

figure(1);
sfig1=plot(t,xsig,'k',t,S_DMout(1:Lsig),'b');
set(sfig1,'LineWidth',2);
        
  
    