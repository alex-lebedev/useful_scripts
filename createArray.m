clear all


cd /Users/alebedev/Desktop/FirstLevel/
slist = dir('/Users/alebedev/Desktop/FirstLevel/');
slist = slist(3:numel(slist)) % subject list;

OMAT = cell(size(slist,1),2);


for i = 1:size(slist,1)
    load([slist(i,1).name '/' 'SPM.mat'], 'SPM')
    A = [(SPM.Sess.U(1,1).ons), (SPM.Sess.U(1,2).ons), ...
        (SPM.Sess.U(1,3).ons), (SPM.Sess.U(1,4).ons)];
    A = array2table(A, 'VariableNames', ...
        {SPM.Sess.U(1,1).name{1}, SPM.Sess.U(1,2).name{1}, ...
        SPM.Sess.U(1,3).name{1}, SPM.Sess.U(1,4).name{1}});    
    OMAT{i,1} = slist(i,1).name;
    OMAT{i,2} = A;
end


save('~/Desktop/ANAIS_extinction_OMAT.mat', 'OMAT')
