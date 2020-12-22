% This function evaluates 2nd degree polynomial values that fits to the
% given input daya of data_x and data_y. The polynomial values are
% evaluated at the x values of data_eval and given with both 95% confidence
% intervals.

function [p_main, p_low, p_high]=polyarrays(data_x,data_y,data_eval)
% Condition: All input must be one column data
% data_x: x values of the data
% data_y: y values of the data
% data_eval: x values that polynomial values wanted to be evaluated
% Output values are the main polynomial fit array as p_main,..
% lower 95% CI array as p_low and higher 95% CI array as p_high.
% Fits are second degree polynomial fits.

    H_f=fit(data_x,data_y,'poly2');
    a=confint(H_f);
    H_f1=H_f;
    H_f2=H_f;
    H_f1.p1=a(1,1);
    H_f1.p2=a(1,2);
    H_f1.p3=a(1,3);
    H_f2.p1=a(2,1);
    H_f2.p2=a(2,2);
    H_f2.p3=a(2,3);
    
    b=1;
    p_main=NaN(numel(data_eval),1);
    p_low=NaN(numel(data_eval),1);
    p_high=NaN(numel(data_eval),1);
    for yy=1:numel(data_eval)
        p_main(b,1)=H_f.p1*(data_eval(yy)^2)+H_f.p2*data_eval(yy)+H_f.p3;
        p_low(b,1)=H_f1.p1*(data_eval(yy)^2)+H_f1.p2*data_eval(yy)+H_f1.p3;
        p_high(b,1)=H_f2.p1*(data_eval(yy)^2)+H_f2.p2*data_eval(yy)+H_f2.p3;
        b=b+1;
    end
    
end

