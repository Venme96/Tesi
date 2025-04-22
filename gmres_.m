function [xl] = gmres_(A, b, k)

[V, H] = arnoldi_start(A, b);
for i=1:k-1
    [V, H] = arnoldi_extend(A, V, H);
end
e1 = zeros(size(H, 1), 1);
e1(1) = 1;   
yl=H\(norm(b)*e1);
xl=V(:,1:end-1)*yl;
