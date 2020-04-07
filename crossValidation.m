function [trainIn, trainOut, testIn, testOut] = crossValidation(tr_in_size, tr_in, tr_out)
     trainIn = tr_in(1:floor(length(tr_in)/2),:);
     testIn = tr_in(floor((length(tr_in)/2))+1: length(tr_in),:);

     trainOut = tr_out(1:floor(length(tr_out)/2),:);
     testOut = tr_out(floor((length(tr_out)/2))+1: length(tr_out),:);
     
end