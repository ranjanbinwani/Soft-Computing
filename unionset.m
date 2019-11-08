function unionset(set1, set2)
    union = zeros(1, 5);

    for i = 1 : length(set1)
        union(i) = max(set1(i), set2(i));
    end

    disp(union);
end
