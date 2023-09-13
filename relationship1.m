%计算男生体重和身高的相关性
C = corrcoef(man(:,2), man(:,3));
disp(['男生相关系数：', num2str(C(1, 2))]);

%计算女生体重和身高的相关性
C = corrcoef(woman(:,2), woman(:,3));
disp(['女生相关系数：', num2str(C(1, 2))]);
