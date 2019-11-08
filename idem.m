function idem(set1)

    union = zeros(1, 5);

    for i = 1 : length(set1)
        union(i) = max(set1(i), set1(i));
    end
    
    intersect = zeros(1, 5);

    for i = 1 : length(set1)
        intersect(i) = min(set1(i), set1(i));
    end
    
    if(union == set1 & union == intersect)
        disp('Property holds...');
    else
        disp('Property does not hold...');
    end
end
