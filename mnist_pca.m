target = zeros(10,60000);
for j=1:60000
    if training_label(j,1)== 0
        target(1,j) = 1;
        
    end
    if training_label(j,1)== 1
        target(2,j) = 1;
       
    end
    if training_label(j,1)== 2
        target(3,j) = 1;
       
    end
    if training_label(j,1)== 3
        target(4,j) = 1;
       
    end
    if training_label(j,1)== 4
        target(5,j) = 1;
        %break;
    end
    if training_label(j,1)== 5
        target(6,j) = 1;
        %break;
    end
    if training_label(j,1)== 6
        target(7,j) = 1;
        
    end
    if training_label(j,1)== 7
        target(8,j) = 1;
       
    end
    if training_label(j,1)== 8
        target(9,j) = 1;
       
    end
    if training_label(j,1)== 9
        target(10,j) = 1;
       
    end
end

%pca
mean_matrix = zeros(size(training_image,1),1);
for i=1:size(training_image,1)
    sum=0;
    for j=1:size(training_image,2)
        sum = sum + training_image(i,j);
    end
    mean_matrix(i)=sum/j;
end
            
for i=1:size(training_image,1)
    for j=1:size(training_image,2)
        training_image(i,j)= training_image(i,j)-mean_matrix(i);
    end
end
%covariance matrix
%cov = zeros(size(training_image,2),size(training_image,2));
cov = training_image*training_image';

[eig_vec,eig_val] = eig(cov);
%Eig_vec = eig_vec'*training_image;

%weight_vector = zeros(2500,size(img_vectors,2));
weight_vector = eig_vec'*training_image;

%mapping 1st three eigen faces to original dimension
%pca=zeros(size(training_image,1),3);