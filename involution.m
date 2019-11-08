function involution(set1)

    negate = zeros(1, 5);

    for i = 1 : length(set1)
        negate(i) = 1 - set1(i);
    end
    
    for i = 1 : length(negate)
        negate(i) = 1 - negate(i);
    end
    
    if(negate == set1)
        disp('Property holds...');
    else
        disp('Property does not hold...');
    end
end
