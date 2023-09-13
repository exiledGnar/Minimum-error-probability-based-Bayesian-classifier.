%part3.1针对男性去除异常身高体重值
condition = (200>data1)&(data1>155);
data1 = data1(condition);
%针对女性去除异常身高体重值
condition = (data2<180)&(data2>150);
data2 = data2(condition);
figure(1)
hold on; % 保持图形不清空
histogram(data1);
histogram(data2);
% 添加图例和标签
legend('man', 'woman');
xlabel('身高');
ylabel('频次');