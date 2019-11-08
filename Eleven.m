X = [1,2,3,4,5,6];
Y = [1,2,3,4,5,6,7,8,9,10];

good = [0.5 1.0 0.5];
slow = [0.33 0.67 1.0 0.67 0.33];
vgood = zeros(1,3);

for i=1:3
    vgood(i) = good(i)*good(i);
end

vslow = zeros(1,5);

for i=1:5
    vslow(i) = slow(i)*slow(i);
end

gt = good.';
R = zeros(3,5);

for i=1:3
    for j=1:5
        %R(i,j)=0;
        %R(i,j) = R(i,j) + gt(i,1)*slow(1,j);
        R(i,j) = min(gt(i,1),slow(1,j));
    end
end
%disp(R);  

comp = zeros(1,5);
for j=1:5
    comp(1,j)=0;
    for k=1:3
    comp(1,j) = max(comp(1,j),min(vgood(1,k),R(k,j)));
    end
end

R = R.';
comp_slow = zeros(1,3);
for j=1:3
    comp_slow(1,j)=0;
    for k=1:5
    comp_slow(1,j) = max(comp_slow(1,j),min(vslow(1,k),R(k,j)));
    end
end
