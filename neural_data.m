validation = zeros(60000,1);
for i=1:60000
    max = myNetwork3_outputs(1,i);
    for j=2:10
        if myNetwork3_outputs(j,i)> max
            max = myNetwork3_outputs(j,i);
            max_label = j-1;
        end
    end
    validation(i)=max_label;
end
ctr=0;
for i=1:60000
    if training_labels(i,1) == validation(i,1)
        ctr = ctr+1;
    end
end
percentage_correct = (ctr/60000)*100;

        