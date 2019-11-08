function algpro(set1, set2)
    pro = zeros(1, 5);

    for i = 1 : length(set1)
        pro(i) = set1(i).*set2(i);
    end

    disp(pro);
end
