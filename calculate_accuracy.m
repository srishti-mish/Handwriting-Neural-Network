numcorr=0;
for i=60001:70000
    [x j]=max(network1_outputs(:,i));
    if(j-1==test_label(i-60000))
        numcorr=numcorr+1;
    end
end
numcorr/10000*100