function [solution, approx] = MaxCutFunc( filename )

ops = sdpsettings('solver','sedumi');
W = Graph_to_w(filename);

[m,n] = size(W);

A = sdpvar(m,n);
h = -sum(sum(W.*(ones(m,n) - A)))/4;
c = [diag(A) == ones(n,1), A >= 0];
sol = solvesdp(c, h, ops);
sol.solvertime

Y = double(A);
[Q, D] = eig(value(Y));
B = Q*sqrt(D);
V = real(double(B'));
[solution, approx] = GWalgoFunc(V,h,W);

end

