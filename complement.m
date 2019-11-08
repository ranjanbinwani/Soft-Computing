function complement(set1)

    for i = 1 : length(set1)
        set1(i) = 1 - set1(i);
    end

    disp(set1);
end
