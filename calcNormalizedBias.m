function nmb=calcNormalizedBias(mod,obs)
% This function calculates normalized bias for modelling and observation
% data
% mod and obs must have same number of elements only in one column.
    a=NaN(numel(mod),1);
for n=1:numel(mod)
    a(n,1)=mod(n)-obs(n);
end
    nmb=sum(a,'omitnan')/sum(obs,'omitnan');
end

