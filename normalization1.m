%part4将去除异常数据之后的数据集拼接起来
persons = vertcat(man, woman);

%按列归一化
% 指定要归一化的列范围
% 指定要归一化的列
cols_to_normalize = [2, 3]; % 例如，归一化第2列和第3列
% 按列归一化指定列的矩阵 
per_nor = persons;
for col = cols_to_normalize
    per_nor(:, col) = normalize(persons(:, col), 'range', [0, 1]);
end

% 显示归一化后的矩阵
disp(per_nor);
