[m, n] = size(V);
approx = 0
ub = double(-h)

while approx < 0.878
    r = randn(n,1);
    r = r/norm(r);

    K = V*r;

    S = ones(n,1);
    for i = 1:n
        if K(i) < 0
            S(i) = -1;
        end
    end

    w = 0;
    for i=1:n
        for j=i:n
            w = w + W(i,j) * (1 - S(i)*S(j)) / 2;
        end
    end
    
    approx = w/ub
end