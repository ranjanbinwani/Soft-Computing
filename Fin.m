disp('Start')
H = [1 1 0.3]
S = [0.8 1 0.6]
He = H
H=H.';
rel = zeros(3,3);
for i=1:3
    for j=1:3
        for k=1:1
            num = min(H(i,k), S(k,j))
            rel(i,j) = max(rel(i,j), num);
        end
    end
end

VH = He.*He;
result = zeros(3,3);
for i=1:1
    for j=1:3
        for k=1:1
            nums = min(VH(i,k), rel(k,j))
            rel(i,j) = max(rel(i,j), nums);
        end
    end
end

High = [0, 0, 0.1, 0.2, 0.4, 0.6, 0.8, 1]
disp('Intensively High')
IH = High.*High
