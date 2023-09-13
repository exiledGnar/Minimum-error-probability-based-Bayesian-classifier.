%%part5
%改进版本，考虑身高体重相关性 
%假设有两个类别，每个类别有多个样本向量
persons = vertcat(man, woman);
persons = persons(:, 2:3);
man_nor = per_nor(1:613, 2:3);%归一化数据中，前613个样本为男生
woman_nor = per_nor(614:end, 2:3);%剩下的是女生
% 计算每个类别的先验概率
prior_man = size(man_nor, 1) / (size(man_nor, 1) + size(woman_nor, 1));
prior_woman = size(woman_nor, 1) / (size(man_nor, 1) + size(woman_nor, 1));

% 要分类的向量,先用字符串的形式存储
user_input = input('请输入一个向量（使用空格或逗号分隔元素）：', 's');
% 将用户输入的字符串转换为向量
test_vector = str2num(user_input);
% 显示存储的向量
disp(test_vector);
%对输入向量归一化
%将去除异常数据之后的数据集拼接起来
persons1 = vertcat(persons, test_vector);

%按列归一化
% 指定要归一化的列范围
% 指定要归一化的列
cols_to_normalize = [1, 2]; % 例如，归一化第1列和第2列
% 按列归一化指定列的矩阵 
per_nor1 = persons1;
for col = cols_to_normalize
    per_nor1(:, col) = normalize(persons1(:, col), 'range', [0, 1]);
end

output_vector = per_nor1(end, :);

%%
%正式开始计算
%采用ln形式作为判别函数
%定义协方差矩阵
%男生协方差矩阵
S11=var(man_nor(:,1));
S12=(1/length(man_nor(:,1)))*(man_nor(:,1)'*man_nor(:,2))-...
mean(man_nor(:,1))*mean(man_nor(:,2));%协方差
S22=var(man_nor(:,2));
S1=[S11,S12;S12,S22];

%女生协方差矩阵
S11=var(woman_nor(:,1));
S12=(1/length(woman_nor(:,1)))*(woman_nor(:,1)'*woman_nor(:,2))-...
mean(woman_nor(:,1))*mean(woman_nor(:,2));%协方差
S22=var(woman_nor(:,2));
S2=[S11,S12;S12,S22];

%男生判决函数
g1=log(prior_class1)-0.5*log(det(S1))-mahal(output_vector, man_nor);%mahal为计算向量与向量组之间马氏距离的函数
%女生判决函数
g2=log(prior_class2)-0.5*log(det(S2))-mahal(output_vector, woman_nor);
if g1>g2
    disp('判断为男生');
else
    disp('判断为女生');
end
    






