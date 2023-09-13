%part1 指定完整的文件路径
filename = 'D:\orign_data.xls';%确保后缀正确
sheet = 'Sheet1';
% 指定要读取的行范围
startRow = 2;  % 起始行
endRow = 774;  % 结束行
% 指定要读取的列范围
% 指定要跳过的列
skipColumn = 2;  % 要跳过的列索引（如果有需要）
% 读取Excel数据
data = xlsread(filename, sheet, 'B2:F774');
% 删除跳过的列
data(:, skipColumn) = [];
% 显示读取的数据
disp(data);
% 拼接数据成矩阵
matrix = reshape(data, endRow - startRow + 1, []);
% 显示拼接后的矩阵
disp(matrix);