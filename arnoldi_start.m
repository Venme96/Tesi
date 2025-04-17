function [V, H] = arnoldi_start(A, b)
V = b/norm(b); %la prima colonna di V
w = A*V;       %il primo w
H = V'*w;       %(H)1,1=v'*A*v
w = w-V*H;      
H = [H; norm(w)];
V = [V w/H(2,1)];
