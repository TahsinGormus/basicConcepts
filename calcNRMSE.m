function nrmse=calcNRMSE(mod,obs)
% This function calculates normalized root mean square error for modelling
% and observation data
% mod and obs must have same number of elements only in one column.
    a=NaN(numel(mod),1);
    b=NaN(numel(mod),1);
for n=1:numel(mod)
    a(n,1)=(obs(n)-mod(n))^2;
    b(n,1)=obs(n)^2;
end
    nrmse=sqrt(sum(a,'omitnan')/sum(b,'omitnan'));
end

