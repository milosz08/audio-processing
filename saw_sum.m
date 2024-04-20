function sS=saw_sum(f,t,A) 
    sS=0;
    for i=1:length(f)
        T=1/f(i);
        sS=A*(-2*abs(mod(t,T)/T-1)+1)+sS;
    end
end