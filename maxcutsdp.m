ops = sdpsettings('solver','sedumi');
W = Graph_to_w('maxcut_20_04_3_instance_01.txt');
% W = [0 4 1 2; 4 0 0 1; 1 0 0 2; 2 1 2 0]; % Toy example
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