
subplot(1,3,1);
hc = histcounts(y_train);
hc = hc(hc>0);
b = bar(hc);
% percent of total for each bar
s = compose('%.1f%%', hc / sum(hc) * 100);
yOffset = sum(hc)*0.01; % tweat, as necessary
xticklabels({'-1','1'});
text(b.XData, b.YEndPoints + yOffset,s);
title('Train');
ylabel('Number of Yolo Objects');
xlabel('new\_label');
grid on

subplot(1,3,2);
hc = histcounts(y_val);
hc = hc(hc>0);
b = bar(hc);
% percent of total for each bar
s = compose('%.1f%%', hc / sum(hc) * 100);
yOffset = sum(hc)*0.01; % tweat, as necessary
xticklabels({'-1','1'});
text(b.XData, b.YEndPoints + yOffset,s);
title('Val');
ylabel('Number of Yolo Objects');
xlabel('new\_label');
grid on

subplot(1,3,3);
hc = histcounts(y_test);
hc = hc(hc>0);
b = bar(hc);
% percent of total for each bar
s = compose('%.1f%%', hc / sum(hc) * 100);
yOffset = sum(hc)*0.01; % tweat, as necessary
xticklabels({'-1','1'});
text(b.XData, b.YEndPoints + yOffset,s);
title('Test');
ylabel('Number of Yolo Objects');
xlabel('new\_label');
grid on