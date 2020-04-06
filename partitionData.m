function partitionData = partitionData(dim_of_train_set, input_matrix, corrosponding_matrix_one_encoded)
     trainIn = [];
     trainOut = [];
     testIn = [];
     testOut = [];
     
     disp(input_matrix(1))
     
     input_middle = length(input_matrix)/2;
     input_end = length(input_matrix);
     one_encoding_middle = length(corrosponding_matrix_one_encoded)/2;
     one_encoding_end = length(corrosponding_matrix_one_encoded);
     
    for i = 1 : input_middle
%         trainIn(end+1) =  input_matrix(i);
    end
    for i = middle : input_end
%         testIn(end+1) = input_matrix(i);
    end
    for i = 1:one_encoding_middle
%         trainOut(end+1) =  corrosponding_matrix_one_encoded(i);
    end
    for i = one_encoding_middle : one_encoding_end
%         testOut(end+1) = corrosponding_matrix_one_encoded(i);
    end
      partitionData = trainIn;
end