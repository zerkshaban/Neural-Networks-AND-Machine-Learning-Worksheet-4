function confusionMatrix = confusionMatrix(trueOutputs, preditedOutputs)
    tp = 0;
    fp = 0;
    fn = 0;
    tn = 0;
    for i = 1:length(trueOutputs)
        if trueOutputs(i) == 1 && trueOutputs(i) == preditedOutputs(i)
          tp = tp + 1;
        elseif trueOutputs(i) == 0 && trueOutputs(i) == preditedOutputs(i)
          tn = tn + 1;
        elseif trueOutputs(i) == 1 && trueOutputs(i) ~= preditedOutputs(i)
          fp = fp + 1;
        elseif trueOutputs(i) == 0 && trueOutputs(i) ~= preditedOutputs(i)
          fn = fn + 1;
        end
    end
    confusionMatrix = [tp, tn, fp, fn];
end