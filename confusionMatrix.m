function confusionMatrix = confusionMatrix(trueOutputs, preditedOutputs)
    tp = 0;
    fp = 0;
    fn = 0;
    tn = 0;
    for i = 1:length(trueOutputs)
        for j = 0: length(preditedOutputs)
            if trueOutputs(i) == 1 && trueOutputs(i) == preditedOutputs(j)
              tp = tp + 1;
            elseif trueOutputs(i) == 0 && trueOutputs(i) == preditedOutputs(j)
              tn = tn + 1;
            elseif trueOutputs(i) == 1 && trueOutputs(i) ~= preditedOutputs(j)
              fp = fp + 1;
            elseif trueOutputs(i) == 0 && trueOutputs(i) ~= preditedOutputs(j)
              fn = fn + 1;
            end
        end
    end
    confusionMatrix = [tp, tn, fp, fn];
end
