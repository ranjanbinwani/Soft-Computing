function assoc(set1, set2, set3)

    intersection1 = zeros(1, 5);

    for i = 1 : length(set1)
        intersection1(i) = min(set1(i), set2(i));
    end
    
    for i = 1 : length(intersection1)
        intersection1(i) = min(intersection1(i), set3(i));
    end
    
    intersection2 = zeros(1, 5);

    for i = 1 : length(set1)
        intersection2(i) = min(set2(i), set3(i));
    end
    
    for i = 1 : length(intersection2)
        intersection2(i) = min(set1(i), intersection2(i));
    end
    
    if(intersection1 == intersection2)
        disp('Property holds...');
    else
        disp('Property does not hold...');
    end
end
