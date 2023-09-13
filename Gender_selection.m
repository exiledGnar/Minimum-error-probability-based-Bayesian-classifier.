%part2 逻辑索引，选择第一个元素为1的所有行为男性，元素为0的所有行为女性，并展示
man = data(data(:, 1) == 1, :);
woman =  data(data(:, 1) == 0, :);
% 显示拼接后的行
disp(man);
disp(woman);