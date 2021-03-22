function si=calcScatterIndex(mod,obs)
% This function calculates scatter index for modelling and observation
% data
% mod and obs must have same number of elements only in one column.
    a=NaN(numel(mod),1);
    b=NaN(numel(mod),1);
    mmod=nanmean(mod);
    mobs=nanmean(obs);
for n=1:numel(mod)
    a(n,1)=((mod(n)-mmod)*(obs(n)-mobs))^2;
    b(n,1)=obs(n)^2;
end
    si=sqrt(sum(a,'omitnan')/sum(b,'omitnan'));
end

