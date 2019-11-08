function morgan(set1, set2)
    union = zeros(1, 5);

    for i = 1 : length(set1)
        union(i) = max(set1(i), set2(i));
        union(i) = 1 - union(i);
    end
    
    rhs = zeros(1, 5);

    for i = 1 : length(set1)
        set1(i) = 1 - set1(i);
        set2(i) = 1 - set2(i);
        rhs(i) = min(set1(i), set2(i));
    end
    
    if(union == rhs)
        disp('Morgan law holds...');
    else
        disp('Morgan law does not hold...');
    end
        
    
end
