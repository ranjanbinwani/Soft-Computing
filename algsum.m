function algsum(set1, set2)
    sum = zeros(1, 5);

    for i = 1 : length(set1)
        sum(i) = set1(i) + set2(i) - set1(i).*set2(i);
    end

    disp(sum);
end
