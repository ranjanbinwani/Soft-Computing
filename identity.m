function identity(set1)

    union = zeros(1, 5);

    for i = 1 : length(set1)
        union(i) = max(set1(i), union(i));
    end
    
    if(union == set1)
        disp('Property holds...');
    else
        disp('Property does not hold...');
    end
end
