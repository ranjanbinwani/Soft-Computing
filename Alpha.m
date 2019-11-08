%R = [0.2 0.7 0.8 1; 1 0.9 0.3 0.1; 0 0.8 1 0.6; 0 0.4 1 0.3];

R = input('Enter the relation: ');
[m,n] = size(R);
alpha = input('Enter the alpha value: ');

alphacut = zeros(m,n);
strong = zeros(m,n);

for i=1:m
    for j=1:n
        if R(i,j)>=alpha
            alphacut(i,j) = 1;
        else
            alphacut(i,j) = 0;
        end
    end
end

for i=1:m
    for j=1:n
        if R(i,j)>alpha
            strong(i,j) = 1;
        else
            strong(i,j) = 0;
        end
    end
end
disp('Alpha Cut : ');
disp(alphacut);
disp('Strong Alpha Cut : ');
disp(strong);

