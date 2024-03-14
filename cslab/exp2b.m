n=10000;
ds=randi([1,2],n,1);
sv=sum(ds,2);
no=2*1;
probd=histcounts(sv,2:no+1)/n;

bar(2:no,probd);
title('Central Limit Theorem: N=1 Coin');
xlabel('Possible Outcomes');
ylabel('Probability');

n=10000;
ds=randi([1,6],n,10);
sv=sum(ds,10);
no=6*10;
probd=histcounts(sv,2:no+1)/n;

bar(2:no,probd);
title('Central Limit Theorem: N=10 Dice');
xlabel('Possible Outcomes');
ylabel('Probability');