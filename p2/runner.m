function runner()
m = 2;
w = [zeros(m+1,1)]; % initial m+1 weights as zero
moon_distance = 1;

trainpoints = 2000; %1000

%generate training points
[train_X, train_d] = generate_moons(moon_distance,10,6,trainpoints);
% permute them to present randomly, this involves:
train_perm = randperm(trainpoints*2); % creating a permutation
train_X = train_X(train_perm,:); % using it to permute the pairs, and
train_d = train_d(train_perm,:); % to permute the identities in the same way

lmsX = train_X';
for sample = 1 : size(train_X,1)
  w = lms(w, lmsX(:,sample), train_d(sample), 10^-3);
end

hold on;
graph_output(train_X(:,1),train_X(:,2),train_d,w,'lms');

w = [zeros(m+1,1)]; % reset w for second run
w = mse(train_X', train_d, 6)

hold on;
graph_output(train_X(:,1),train_X(:,2),train_d,w,'mse');
