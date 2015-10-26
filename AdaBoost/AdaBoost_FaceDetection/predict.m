%%
% @author Shushan Chen
% Predict the label by the weak classifier
% @Input:
%   classifier: weak classifier, 3*1 vector
%   data_set:  Input data set
% @Output:
%   pred: prediction labels
%%
function [pred] = predict(classifier, data_set)
    sel_dim = classifier{1};
    dec_boundary = classifier{2};
    left_lab = classifier{3};

    pred_dim = train_set(:, sel_dim);
    pred = ones(size(pred_dim))*left_lab*(-1);
    pred(pred_dim < dec_boundary) = left_lab;

end
