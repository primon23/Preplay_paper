function sampleind = distsample(numsamples,distribution)
%sampleind = distsample(numsamples,distribution)
% Samples from a discrete distribution. The function outputs
% NUMSAMPLES of indeces, where the probability of any index
% being picked is given by the distribution vector;


cumdist = cumsum(distribution)/sum(distribution);
% a = rand(numsamples,1);
a = randi([0, 1e7], numsamples,1) ./ 1e7;

sampleind = lookup(a,cumdist,1);