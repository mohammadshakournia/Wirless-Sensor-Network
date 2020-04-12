function fig1=Visualization(M,N,new_population,x_s,y_s,X,Y)
fig1 = figure;
fig1=gcf;
fig1.Units='normalized';
fig1.OuterPosition=[0 0 1 1];
axis equal
xlim([0 200]);
ylim([0 200]);
pause(.3)
hold on;
i=0;
for i=1:M
    if(new_population(1,i)==1)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0,0,1],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==2)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0,1,0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==3)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[1,0,0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==4)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[1,1,0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==5)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[1,0,1],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==6)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0,1,1],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==7)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[1,1,1],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==8)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.75,0,0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==9)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0,0.75,0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==10)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0,0,0.75],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==11)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0,0.75,0.75],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==12)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.75,0,0.75],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==13)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.75,0.75,0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==14)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.75,0.75,0.75],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==15)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0, 0.5, 0],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==16)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.8500, 0.3250, 0.0980],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==17)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',	[0.3010, 0.7450, 0.9330],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==18)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.9290, 0.6940, 0.1250],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==19)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',	[0.4940, 0.1840, 0.5560],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);
    elseif(new_population(1,i)==20)
        plot(x_s(i),y_s(i),'ko','MarkerFaceColor',[0.4660, 0.6740, 0.1880],'MarkerSize',8);
        t=num2str(new_population(1,i));
        text(x_s(i), y_s(i), t);

    end
    
end
for i=1:N
    if(i==1)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0,0,1],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==2)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0,1,0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==3)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[1,0,0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==4)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[1,1,0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==5)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[1,0,1],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==6)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0,1,1],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==7)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[1,1,1],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==8)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.75,0,0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==9)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0,0.75,0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==10)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0,0,0.75],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==11)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0,0.75,0.75],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==12)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.75,0,0.75],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==13)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.75,0.75,0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==14)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.75,0.75,0.75],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==15)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0, 0.5, 0],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==16)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.8500, 0.3250, 0.0980],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==17)
        plot(X(i),Y(i),'kp','MarkerFaceColor',	[0.3010, 0.7450, 0.9330],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==18)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.9290, 0.6940, 0.1250],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==19)
        plot(X(i),Y(i),'kp','MarkerFaceColor',	[0.4940, 0.1840, 0.5560],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);
    elseif(i==20)
        plot(X(i),Y(i),'kp','MarkerFaceColor',[0.4660, 0.6740, 0.1880],'MarkerSize',20);
        b=num2str(i);
        text(X(i), Y(i), b);

    end
    
end
r = 50;
i=0;
for i=1:N
    theta = linspace(0,2*pi);
    x_c = r*cos(theta) + X(i);
    y_c = r*sin(theta) + Y(i);
    plot(x_c,y_c,'k')
    pause(.3)
    hold on;
end

title('Final Configuration of WSN')
end