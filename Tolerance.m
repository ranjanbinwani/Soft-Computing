%R = [1,1,0,0,0; 1,1,0,0,0; 0,0,1,0,0; 0,0,0,1,1; 0,0,0,1,1];

R = input('Enter the relation: ');
[m,n] = size(R);
f=1;
sym=1;
cur = R(1,1);

for i = 1:m
    for j=1:n
        if i==j && R(i,j) ~= cur
            f=0;
            break;
        end
        if R(i,j) ~= R(j,i)
            sym=0;
            break;
        end
    end
    if(f==0 || sym==0)
        break
    end
end

if(f==1 && sym==1)
    disp('Relation is Tolerance');
else
    disp('Relation is Not Tolerance');
end

