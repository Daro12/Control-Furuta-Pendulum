
view(135,20)                    %Starting view
AL = 5;                         %Define graph axis limits

grid on

L1=3;  %Rotatary arm length
L2=2;  %Pendulum length

Xh=[0 ; L1]';
Yh=[0 ; 0]';
Zh=[0 ; 0]';

Xv=[Xh(2) ; L1]';
Yv=[Yh(2) ; 0]';
Zv=[Zh(2) ; -L2]';

hold on
Harm  = fill3(Xh,Yh,Zh,'b'); 
Varm  = fill3(Xv,Yv,Zv,'g'); 

s=8;
M=scatter3(Xv(2),Yv(2),Zv(2),s,'filled','MarkerFaceColor','b','MarkerEdgeColor','k')


axis([-AL AL -AL AL -AL AL]);

theta00=0;
theta11=0;
c = [0 0 0];

TXT=title('Time: ')

for tt=1:20:size(theta0,1)
    TXT2=sprintf('Time:%.2f',t(tt));
    set(TXT,'String',TXT2);
    
    theta11=theta1(tt);
    theta00 =-theta0(tt);
    
    Xh(2)= L1*cos(theta11);
    Yh(2)=L1*sin(theta11);
    
    Xva = 0;                
    Yva = L2*sin(theta00);    
    Zva = -L2*cos(theta00);   
    
    Xvb = Xva*cos(theta11)-Yva*sin(theta11)+L1*cos(theta11);
    Yvb = Xva*sin(theta11)+Yva*cos(theta11) + L1*sin(theta11);
    Zvb = Zva;
        
    
    Xv=[Xh(2);Xvb]';
    Yv=[Yh(2);Yvb]';
    Zv=[ 0   ;Zvb]';
    
    set(Harm,'XData',Xh);
    set(Harm,'YData',Yh);
    set(Harm,'ZData',Zh);
    %set(Harm,'FaceVertexCData',C);
    
    set(Varm,'XData',Xv);
    set(Varm,'YData',Yv);
    set(Varm,'ZData',Zv);
    %set(Varm,'FaceVertexCData',C);
    rem(tt,30)
    


     %scatter3(Xv(2),Yv(2),Zv(2),s,'filled','MarkerFaceColor',c,'MarkerEdgeColor','k');
          
          
       
       
    
    set(M,'XData',Xv(2));
    set(M,'YData',Yv(2));
    set(M,'ZData',Zv(2));
    
    drawnow;

%     pause(0.0005); 
end
