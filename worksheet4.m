% Part#1 Introduction to Netlab?s KNN System.
tr_in = [0 0;
         2 2;
         4 0;
         3 3];
tr_targets = [1 0;
              0 1;
              1 0;
              0 1];
points_to_predict_1 = [0 1];
points_to_predict_2 = [1 0];
% NET = knn(NIN, NOUT, K, TR_IN, TR_TARGETS) 
% NIN-> Dimensions of input {x, y}
% NOUT->Number of classes {0, 1}

% Creating knn model with k value equal to 1 and 3 respectively.
model_with_k_one = knn(2, 2, 1, tr_in, tr_targets);
model_with_k_three = knn(2, 2, 3, tr_in, tr_targets);

% Predictions for the points using the model prepared.
[Y, L] = knnfwd(model_with_k_one, tr_targets);
[Y3, L3] = knnfwd(model_with_k_three, tr_targets);

% So, the classes return are 1 and 2. We will subtract 1 from it.
L = L-1;
L3 = L3-1;

% Part#2 KNN Analysis of the Sparrow Data. 
load 'sparrows.dat';
load 'sparrows_labels.dat';
logical_arr = logical(sparrows_labels);
% Take not of the sparrow_labels to create one hot matrix
not_sparrows_labels = not(sparrows_labels); 

% Created one-hot matrix
one_hot_matrix = [sparrows_labels not_sparrows_labels sparrows_labels not_sparrows_labels sparrows_labels];

% Creating knn model with k value equal to 1 and 3 respectively.
sparrows_knn_model_one = knn(5, 5, 1, sparrows, one_hot_matrix);
sparrows_knn_model_three = knn(5, 5, 3, sparrows,one_hot_matrix);

% Predictions for the points using the model prepared.
[YS, LS] = knnfwd(sparrows_knn_model_one, one_hot_matrix);
[YS3, LS3] = knnfwd(sparrows_knn_model_three, one_hot_matrix);

% LS = LS-1;
% LS3 = LS3-1;

% Part#3 Computing the Elements of a Confusion Matrix.
trueOutputs = [1 0 0 0 1 1 1 1];
preditedOutputs = [1 1 0 1 1 0 1 1];

confusion_reponse = confusionMatrix(trueOutputs, preditedOutputs);



