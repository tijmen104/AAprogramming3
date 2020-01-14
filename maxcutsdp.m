ops = sdpsettings('solver','sedumi');
A = sdpvar(4,4);
% W = rand(4,4);
h = -sum(sum(W.*(ones(4,4) - A)))/4;
% h = -(1/4) * (15 + A(4,1) - A(4,3) + A(1,3));
c = [diag(A) == ones(4,1), A >= 0];
double(A)
sol = solvesdp(c, h, ops);
double(A)
double(W)
double(-h)
sol.solvertime

Y = double(A);
% V = ichol(Y);
[Q, D] = eig(value(Y));
B = Q*sqrt(D);
V = real(double(B'))