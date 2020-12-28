function r=calcSampCorr(data1,data2)
% This function calculates sample correlation coefficients for two data
% arrays.
% data1 and data2 must have same number of elements only in one column.

    a=NaN(numel(data1),1);
    b=NaN(numel(data2),1);
    c=[];
    d=[];
    Sx=[];
    Sxx=[];
    Syy=[];
    r=[];
for n=1:numel(data1)
    a(n,1)=data1(n)-nanmean(data1);
    b(n,1)=data2(n)-nanmean(data2);
    c(n,1)=a(n,1)^2;
    d(n,1)=b(n,1)^2;
end
    Sx=sum(a.*b,'omitnan');
    Sxx=sum(c,'omitnan');
    Syy=sum(d,'omitnan');
    r=Sx/sqrt(Sxx*Syy);
end

