function accuracy = accuracy(trueOutputs, preditedOutputs)
    confusion_matrix = confusionMatrix(trueOutputs, preditedOutputs);
    accuracy = (confusion_matrix(1) + confusion_matrix(2)) / (confusion_matrix(1)+confusion_matrix(2)+confusion_matrix(3)+confusion_matrix(4));
end