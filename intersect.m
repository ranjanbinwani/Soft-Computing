function intersect(set1, set2)
    intersection = zeros(1, 5);

    for i = 1 : length(set1)
        intersection(i) = min(set1(i), set2(i));
    end

    disp(intersection);
end
