function commut(set1, set2)

    union12 = zeros(1, 5);

    for i = 1 : length(set1)
        union12(i) = max(set1(i), set2(i));
    end
    
    union21 = zeros(1, 5);

    for i = 1 : length(set1)
        union21(i) = max(set2(i), set1(i));
    end
    
    if(union12 == union21)
        disp('Property holds...');
    else
        disp('Property does not hold...');
    end
end
