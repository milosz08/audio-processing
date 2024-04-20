function yS=sine_sum(f,t,A)
    yS=0;
    for i=1:length(f)
        yS=A*sin(2*pi*f(i)*t)+yS;
    end
end

