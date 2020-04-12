function fitness_value=fitness_function(M,C,d,N,Load)
fitness_value=zeros(1,C);
sum_load=0;

for i=1:M
    sum_load=sum_load+d;
end
mean_load=sum_load/M;
a=0;
 %standard deviation
for i=1:C
    for j=1:N
        a=a+((mean_load-Load(j,i))*(mean_load-Load(j,i)));
        sigma=sqrt(a/M);
    end
    fitness=1/sigma;
    fitness_value(1,i)=fitness;
    
end