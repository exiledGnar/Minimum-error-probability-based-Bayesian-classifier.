%part3针对男性去除异常身高体重值(限制身高在155cm到200cm，体重在40kg到100kg)
top = 200;
bottom = 155;
% 判断特定元素所在列的逻辑索引
index1 = ((man(:, 2) > top)|(man(:,2)<bottom));
% 使用索引删除相应的行
man(index1, :) = [];
top = 100;
bottom = 40;
index2 = ((man(:,3)>top)|(man(:,3)<bottom));
man(index2,:)=[];

%针对女性去除异常身高体重值(限制身高在150cm到180cm，体重在40kg到100kg)
top = 180;
bottom = 150;
% 判断特定元素所在列的逻辑索引
index1 = ((woman(:, 2) > top)|(woman(:,2)<bottom));
% 使用索引删除相应的行
woman(index1, :) = [];
top = 100;
bottom = 40;
index2 = ((woman(:,3)>top)|(woman(:,3)<bottom));
woman(index2,:)=[];





