function mutated_offspring=mutation(child1,possible_g,N,M)
j=0;

for i = 1:N
    counts(i,1) = sum(child1==i);
end
maxl=max(counts);
[~,j]=max(counts);

w=0;
i=0;
for i=1:M
    if(child1(1,i)==j)
        w=w+1;
        most_duplicated_value(w,1)=i;
        
    end
end
w=numel(most_duplicated_value);
random_select=randi([1 w]);
select_mutation=most_duplicated_value(random_select);
rn=0;
z=sum(possible_g(select_mutation,:)~=0);
for l=1:w
    rn=randsample(possible_g(select_mutation,:),1);
    if(z>1)
        if(rn~=j&&rn~=0)
            break;
        end
    else
        random_select=randi([1 w]);
        select_mutation=most_duplicated_value(random_select);
        continue;
    end
    
end
mutated_offspring(1,:)=child1(1,:);
mutated_offspring(1,select_mutation)=rn;

fprintf('New gene: %d\n',rn);
fprintf('Selected gene to mutate: %d\n',select_mutation);

end
