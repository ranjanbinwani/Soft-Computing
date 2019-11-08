%A=[0.3, 0.7, 1];
%B = [0.4, 0.9];

A = input('Enter the 1st relation: ');
B = input('Enter the 2nd relation: ');

[x,y] = size(A);
[p,q] = size(B);

result = zeros(y,q);

for i=1:y
    for j=1:q
        result(i,j) = min(A(1,i), B(1,j));
    end
end

disp(result);
