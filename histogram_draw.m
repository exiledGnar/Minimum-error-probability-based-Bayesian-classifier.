%part3.2载入数据,第二列为身高数据
data1=man(:,3);
data2=woman(:,3);
% 绘制直方图（两者比较的直方图）
figure(1)
hold on; % 保持图形不清空
histogram(data1);
histogram(data2);
% 添加图例和标签
legend('man', 'woman');
xlabel('身高');
ylabel('频次');
hold on;
%单独的直方图
figure(2)
histogram(data1);
legend('man');
xlabel('身高');
ylabel('频次');
hold on;
figure(3)
histogram(data2);
legend('woman');
xlabel('身高');
ylabel('频次');
