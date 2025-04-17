function [V, H] = arnoldi_extend(A, V, H)

w1 = A*V(:,end);
h1 = V'*w1; %contiene tutti i prodotti scalari con i vettori vi
w1 = w1-V*h1; %ortogonalizzo
vnew = w1/norm(w1); %normalizzo

H = [H h1; zeros(1,size(H,2)) norm(w1)];
V = [V w1/norm(w1)];
