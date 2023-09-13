% part5.1假设有两个类别，每个类别有多个样本向量
class1 = persons(persons(:, 1) == 1, :); %男生样本向量
class1 = [class1(:,2),class1(:,3)];%取身高和体重
class2 = persons(persons(:, 1) == 0, :);% 女生样本向量
class2 = [class2(:,2),class2(:,3)];

% 计算每个类别的先验概率
prior_class1 = size(class1, 1) / (size(class1, 1) + size(class2, 1));
prior_class2 = size(class2, 1) / (size(class1, 1) + size(class2, 1));

% 要分类的向量,先用字符串的形式存储
user_input = input('请输入一个向量（使用空格或逗号分隔元素）：', 's');
% 将用户输入的字符串转换为向量
test_vector = str2num(user_input);
% 显示存储的向量
disp(test_vector);

% 计算每个类别的条件概率密度函数（多元高斯分布）
mu_class1 = mean(class1);
sigma_class1 = cov(class1);
pdf_class1 = mvnpdf(test_vector, mu_class1, sigma_class1);

mu_class2 = mean(class2);
sigma_class2 = cov(class2);
pdf_class2 = mvnpdf(test_vector, mu_class2, sigma_class2);

% 计算后验概率
posterior_class1 = pdf_class1 * prior_class1;
posterior_class2 = pdf_class2 * prior_class2;

% 判断向量的类别
if posterior_class1 > posterior_class2
    disp('向量属于类别男生');
else
    disp('向量属于类别女生');
end