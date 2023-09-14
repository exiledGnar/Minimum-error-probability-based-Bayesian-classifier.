% 定义男生均值和协方差矩阵
mu1 = [mean(man_nor(:,1)) mean(man_nor(:,2))];% 均值
S_man=S1;% 协方差矩阵

% 生成 x 和 y 的坐标
x1 = linspace(0, 1, 100);
y1 = linspace(0, 1, 100);
[X1, Y1] = meshgrid(x1, y1);

% 计算二维正态分布的概率密度函数值
Z1 = mvnpdf([X1(:) Y1(:)], mu1, S_man);
Z1 = reshape(Z1, size(X1));

% 定义女生均值和协方差矩阵
mu2 = [mean(woman_nor(:,1)) mean(woman_nor(:,2))];% 均值
S_woman=S2;% 协方差矩阵

% 生成 x 和 y 的坐标
x2 = linspace(0, 1, 100);
y2 = linspace(0, 1, 100);
[X2, Y2] = meshgrid(x2, y2);

% 计算二维正态分布的概率密度函数值
Z2 = mvnpdf([X2(:) Y2(:)], mu2, S_woman);
Z2 = reshape(Z2, size(X2));

% 绘制二维正态分布图形
figure(1);
surf(X1, Y1, Z1);
xlabel('X');
ylabel('Y');
zlabel('Probability Density');
hold on
surf(X2, Y2, Z2);

