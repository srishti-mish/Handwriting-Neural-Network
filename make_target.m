t_img=loadMNISTImages('train-images.idx3-ubyte');
t_label=loadMNISTLabels('train-labels.idx1-ubyte');
test_img=loadMNISTImages('t10k-images.idx3-ubyte');
test_label=loadMNISTLabels('t10k-labels.idx1-ubyte');
t_label=t_label';
test_label=test_label';
for i=1:60000
    for j=1:10
        if(t_label(1,i)==j-1)
            t_label10(j,i)=1;
        else
            t_label10(j,i)=0;
        end
    end
end
for i=1:10000
    for j=1:10
        if(test_label(1,i)==j-1)
            test_label10(j,i)=1;
        else
            test_label10(j,i)=0;
        end
    end
end
%concat maadi
t_img=[t_img,test_img];
t_label10=[t_label10,test_label10];
%show maadi
a=vec2mat(t_img(:,1),28);
a=a';
imshow(a)