clc;
clear all;
close all;
%% Initialize parameters
D=200;
%N=randi([15 30]);    %N is number of gateway
%M=randi([100 400]); %M is number of sensors
N=20; %number of gateways
M=200; %number of sensors
C=100; % number of initial population
d=2; % load of each sensor
iteration=200;
X=zeros(1,N);   %X of gateway
Y=zeros(1,N);   %Y of gateway
x_s=zeros(1,M);   %x of sensors
y_s=zeros(1,M);   %y of sensors
x_s=randi([1 D],[1,M]);
y_s=randi([1 D],[1,M]);
X=randi([1,D],[1,N]);
Y=randi([1,D],[1,N]);
counter=1;
k=0;
%% Distribute gateways with distance threshold
while(counter)
    counter=0;
    for i=1:N
        for j=i+1:N
            if (sqrt(((X(i)-X(j))^2)+((Y(i)-Y(j))^2))<25)
                counter=1;
                k=k+1;
                X=randi([1,D],[1,N]);
                Y=randi([1,D],[1,N]);
            end
        end
    end
end
%% Make a figure
fig = figure;
fig=gcf;
fig.Units='normalized';
fig.OuterPosition=[0 0 1 1];
axis equal
xlim([0 200]);
ylim([0 200]);
pause(.3)
title('Scatter the Sensors and Gateways')
hold on;

%% Draw sensors
for i=1:M
    p1=plot(x_s(i),y_s(i),'ko','MarkerFaceColor','b','MarkerSize',8);
    pause(.01)
    hold on;
end
%% Draw Gateways
for i=1:N
    p2=plot(X(i),Y(i),'kp','MarkerFaceColor','r','MarkerSize',20);
    b=num2str(i);
    text(X(i), Y(i), b);
    xlim([0 D]);
    ylim([0 D]);
    pause(.3)
    hold on;
end
legend([p2 p1],{'Gateway','Sensor'})

%% Store possible gatway of a sensor
Possible_gateway=zeros(M,N);
for i=1:N
    for j=1:M
        if (sqrt(((x_s(j)-X(i))^2)+((y_s(j)-Y(i))^2))<50)
            Possible_gateway(j,i)=i;
        end
    end
end
%% show communication range of each gateway
r = 50;
for i=1:N
    theta = linspace(0,2*pi);
    x = r*cos(theta) + X(i);
    y = r*sin(theta) + Y(i);
    plot(x,y,'k')
    pause(.3)
    hold on;
end
%% Assign randomly sendors to each gateway (Initial population)
initial_population=zeros(C,M);
for f=1:C
    for i=1:M
        random=randi([1 N]);
        if(Possible_gateway(i,random)~=0)
            initial_population(f,i)=Possible_gateway(i,random);
        end
    end
end
for f=1:C
    for j=1:M
        for i=1:M
            random=randi([1 N]);
            if(initial_population(f,i)==0)%first subject
                l=i;
                if(Possible_gateway(i,random)~=0)
                    initial_population(f,l)=Possible_gateway(i,random);
                end
                
            end
        end
    end
end
%% Fitness of initial population
[Load,max_load_gateway_index_initial,maxload_initial]=MaxLoad(initial_population,N,C);
i=0;
for i=1:C
    fitness_value(1,i)=fitness_function(M,1,d,N,Load(:,i));
end
%% Tournoment Selection with crossover rate 0.8
k=C/4; % tournament size

best_chromosome(1,1)=0;
best_chromosome(1,2)=0;
best_parent=zeros(2,M);

best_fitness_value=zeros(iteration,1);
f,j,it=0;
new_population1=initial_population;
fitness_value=fitness_value';
for it=1:iteration
    z=0;
    for j=1:C*0.8/2
        while(1)
            for f=1:2
                number_population=numel(fitness_value);
                S(:,f)=randsample(number_population,k);
                spop(:,f)=fitness_value(S(:,f),:);
                scosts(:,f)=[spop(:,f)];
                [~,best_fitness_index(1,f)]=max(scosts(:,f));
                best_chromosome(1,f)=S(best_fitness_index(1,f),f);
                best_parent(f,:)=new_population1(best_chromosome(1,f),:);
                
            end
            if(best_chromosome(1,1)~=best_chromosome(1,2))
                break;
            end
        end
%% crossover  
        x1=best_parent(1,:);
        x2=best_parent(2,:);
        nVar=numel(x1);
        
        crossover_point=randi([1 nVar-1]);
        
        child1=[x1(1:crossover_point) x2(crossover_point+1:end)];
        child2=[x2(1:crossover_point) x1(crossover_point+1:end)];
        
        z=z+1;
        crossovered_population(z,:)=child1;
        crossovered_population(z+1,:)=child2;
%% mutation        
        fprintf('New gene and selected gene to mutate (for offspring 1): \n');
        mutated_offspring1=mutation(child1,Possible_gateway,N,M);
        fprintf('New gene and selected gene to mutate (for offspring 2): \n');
        mutated_offspring2=mutation(child1,Possible_gateway,N,M);
        
        mutated_population(z,:)=mutated_offspring1;
        mutated_population(z+1,:)=mutated_offspring2;
        
        z=z+1;
    end
%% new population  
    new_population=vertcat(new_population1,mutated_population);
    [np_Load,np_max_load_gateway_index_initial,np_maxload_initial]=MaxLoad(new_population,N,size(new_population,1));
    
    i=0;
    np_fitness_value=zeros(size(new_population,1),1);
    for i=1:size(new_population,1)
        np_fitness_value(i,1)=fitness_function(M,1,d,N,np_Load(:,i));
    end
    new_population2 = [np_fitness_value(:,1) new_population(:,1:end)];
    new_population3 = sortrows(new_population2,-1);
    new_population4 = new_population3(1:C,:);
    best_fitness_value(it,1)= max(new_population4(:,1));
    new_population4(:,1)=[];
    new_population5=new_population4;
    new_population1=new_population4;
end
%% Visualization
figure;plot(best_fitness_value,'LineWidth',3)
title('Fitness Value vs Iteration')
Ultimate_figure=Visualization(M,N,new_population1,x_s,y_s,X,Y)

