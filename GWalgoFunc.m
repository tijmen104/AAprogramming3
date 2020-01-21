function [solution,approx] = GWalgoFunc( V,h,W )

[m, n] = size(V);
approx = zeros(100,1);
solution = zeros(100,1);
ub = double(-h);

for trial=1:100
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
        for j=i:n % Only consider upper (or lower)triangular part of matrix
            w = w + W(i,j) * (1 - S(i)*S(j)) / 2;
        end
    end
    solution(trial) = w;
    approx(trial) = w/ub;
end

end

