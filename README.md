Neural Networks & Machine Learning: Worksheet 4
Aim
This worksheet introduces supervised learning. As a result of completing the tasks below, you will
• firm up your understanding of performance measures for supervised learning models by writing code to
compute these,
• gain practical experience in running and interpreting k Nearest Neighbour analyses,
• get experience of rearranging data as required by the functions you intend to use,
• practice the use of very simple toy data for developing code and for testing it, before applying it to process
more complex data.
For best learning outcomes please continue to frequently use the Matlab documentation and the help function. If
you have questions about any aspect of Matlab you may ask these during “ask me anything” sessions in lectures.
You are also welcome to submit them by email.
Please remember to develop your work in files (scripts and functions), and make sure you save these where you
can access them in the future.
This worksheet is not marked and no submission is required.
Tasks
The key overall goal of the tasks below is to use apply K Nearest Neighbour (KNN) on the sparrows dataset, and
to investigate its predictive performance. This requires some tools, and some tasks below guide you to developing
these. Please follow the specifications in the tasks precisely, as that will ensure that the functions you develop
will enable you to smoothly and flexibly explore KNN and its performance in the final task. Specifically, use the
portions of code given as part of tasks exactly as they are provided, without making changes. If you do not fully
understand any piece of the provided code, please ask.
This work requires a working Netlab installation and the sparrows dataset. Please refer to worksheets 2 for installing Netlab and and worksheet 3 for the sparrows dataset. As a brief recap, you need to tell Matlab where to
search for the files containing libraries (toolboxes) and data using the addpath command. If you write a small
script, containing the relevant addpath statements, you can run that at the start of a new Matlab session to quickly
and reproducibly set up your working environment.
1. Introduction to Netlab’s KNN System. Read the documentation of the knn function for constructing KNN
models, and the knnfwd function for using such models to predict outputs (i.e. classes) for new inputs.
Use the knn function to construct KNN models for the following toy dataset:
x y class
0 0 0
2 2 1
4 0 0
3 3 1
The input matrix (tr_in) is comprised of the first two columns of the table above. The outputs (tr_targets)
need to be provided in the following matrix form:
toy_targets =
1 0
0 1
1 0
0 1

This is the “One-Hot” encoding of categorical variables (called “1 of N” in the Netlab documentation). It is
defined as a matrix with one column for each class and one row for each data item. In each row, exactly one
element is 1 while all others are 0. The column containing the 1 corresponds to the class that the data item
belongs to. The toy dataset has two classes, 0 and 1, and the first column in the matrix above corresponds to
class 0, and the second column corresponds to class 1.
The other parameters are k, the (eponymous) number of nearest neighbours to consider, nin, the dimension
of the inputs (2, as the toy dataset has two input columns, x and y), and nout, the number of classes (2, as
the toy dataset has two classes, 0 and 1)
Construct models with k = 1 and k = 3, respectively. Then, use the knnfwd function to predict the class for
points p1 = (0,1) and p2 = (1,0) using both models. Notice that knnfwd returns the classes as 1 and 2, so
you need to subtract 1 from the values returned in l.
Do both models predict the same class for these points? Also, predict the class for the input data. Which
model predicts all inputs correctly? Do you think the model predicting all inputs correctly is necessarily the
better one?
2. KNN Analysis of the Sparrow Data. Use the methods introduced above to construct models for the sparrows dataset. You will need to build a “One-Hot” matrix from the single column in sparrows_labels.
Recall or review the Matlab functions not (or, equivalently, the unary operator ~) and logial which are
useful for this purpose. Also remember that the nin parameter must be set to the input dimension, i.e. the
number of columns in the sparrows matrix. Check the number of correct predictions with k = 1 and k = 3,
and reflect on the results, by discussing them with other participants in the lab if you like.
3. Computing the Elements of a Confusion Matrix. Write a function that takes the true outputs and the
predicted outputs as parameters, and returns the numbers of true positives (TP), true negatives (TN), false
positives (FP) and false negatives (FN).
funtion [tp, tn, fp, fn℄ = onfusionAnalysis(trueOutputs, preditedOutputs)
% insert ode here to plae the orret values in the
% output variables tp, tn, fp and fn.
end
4. Accuracy. Write a function that computes accuracy given true and predicted outputs. You should use your
onfusionAnalysis as follows:
funtion a = auray(trueOutputs, preditedOutputs)
% use onfusionAnalysis to get numbers of true positives,
% true negatives, false positives and false negatives.
[tp, tn, fp, fn℄ = onfusionAnalysis(trueOutput, preditedOutputs);
% use these numbers to assign the auray value to the
% variable a below.
end
5. Test Your Functions for Characterising Performance. Create two variables holding the following true
and predicted labels:
yTrue = [1, 0, 0, 1, 0, 1, 0, 1, 1, 1℄;
yPredited = [1, 0, 1, 1, 1, 1, 0, 1, 1, 0℄;
Use paper and pen to find the confusion matrix, by counting the numbers of true positives, true negatives,
false positives and false negatives, and calculate the accuracy based on these counts. Check that the functions
that you wrote produce the correct values.
6. Training and Test Sets. Write a function partitionData to randomly partition supervised learning data
into a training set and a test set. The function should take the size of the training set, the input matrix and the
corresponding matrix of “One-Hot” encodings as parameters. Matlab’s randperm function is highly useful
to create a random partition. The function should return four values, a matrix of training data, a “One-Hot”

encoding of the corresponding outputs for the training data, a matrix of test data, and a “One-Hot” encoding
of the corresponding test outputs.
funtion [trainIn, trainOut, testIn, testOut℄ = partitionData(trainSize, allIn, allOut)
% insert ode here to plae the orret values in the
% output variables trainIn, trainOut, testIn and testOut
% use the randperm funtion to generate indies, and use
% these to reate the required matries.
end
Use the toy data from the KNN introduction task to test your partitionData function. Run the function
several times and check that the partitions returned are different, and that the outputs for the training and test
sets correctly match their respective inputs.
7. Performance Assessments. Use your partitionData function to split the sparrows data into a training
and a test set. Construct KNN models for k = 1,3,5,7,9,11,13,15 (use a loop for this). For each k, use your
auray function to determine the accuracy of the model on the training set and on the test set.
For which model do you find the biggest discrepancy between performance on the training and the test data?
How do you explain that?
