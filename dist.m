function dist(set1, set2, set3)

    lhs = zeros(1, 5);

    for i = 1 : length(lhs)
        lhs(i) = min(set2(i), set3(i));
    end
    
    for i = 1 : length(lhs)
        lhs(i) = max(lhs(i), set1(i));
    end
    
    rhs = zeros(1, 5);
    rhs2 = zeros(1, 5);

    for i = 1 : length(rhs)
        rhs(i) = max(set1(i), set2(i));
    end
    
    for i = 1 : length(rhs)
        rhs2(i) = max(set1(i), set3(i));
    end
    
    for i = 1 : length(rhs)
        rhs(i) = min(rhs(i), rhs2(i));
    end
    
    if(lhs == rhs)
        disp('Property holds...');
    else
        disp('Property does not hold...');
    end
end
