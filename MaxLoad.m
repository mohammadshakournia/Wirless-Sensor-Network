function [Load,max_load_gateway,maxload]=MaxLoad(newPopulation,N,C)
d=2;% default load of each sensor
c = unique(newPopulation);
count=zeros(N,C);
c = unique(newPopulation);
for f=1:C
    for i = 1:length(c)
        count(i,f) = sum(newPopulation(f,:)==c(i));
    end
end
for f=1:C
    for i = 1:N
        Load(i,f) = count(i,f)*d;
    end
end
%maximum of each chromosome
maxload=max(Load);
for j=1:C
    for i = 1:N
        if(Load(i,j)==maxload(j))
            max_load_gateway(j,1)=i;
        end
    end
end

% fprintf('%d',max_load_gateway);
end