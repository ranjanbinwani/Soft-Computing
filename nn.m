ip1 = [1 1 1 1];
ip2 = [-1 1 -1 -1];
ip3 = [1 1 1 -1];
ip4 = [1 -1 -1 1];
w = [0 0 0 0];
b = 0;
alpha = 1;
t1 = 1;
t2 = -1;
theta = 0.2;
y=[0 0 0 0];
for itr=1:3
    for i=1:4
        y(1) = y(1) + ip1(i)*w(i);
    end
    for i=1:4
        y(2) = y(2) + ip2(i)*w(i);
    end
    for i=1:4
        y(3) = y(3) + ip3(i)*w(i);
    end
    for i=1:4
        y(4) = y(4) + ip4(i)*w(i);
    end
    for i=1:4
        y(i) = y(i)+b;
    end
    disp('Y');
    disp(y);

    for i=1:4
        if(y(i)> theta)
            y(i)=1;
        elseif(y(i) > -theta && y(i)<=theta )
            y(i)=0;
        else
            y(i)=-1;
        end
    end

    if y(1) ~= t1
        b=b+t1;
        for j=1:4
            w(j) = w(j) + alpha*t1*ip1(j);
        end
    end
    disp('Weights1');
    disp(w);

    if y(2) ~= t1
        b=b+t1;
        for j=1:4
            w(j) = w(j) + alpha*t1*ip2(j);
        end
    end
    disp('Weights2');
    disp(w);

    if y(3) ~= t2
        b=b+t2;
        for j=1:4
            w(j) = w(j) + alpha*t2*ip3(j);
        end
    end
    disp('Weights3');
    disp(w);

    if y(4) ~= t2
        b=b+t2;
        for j=1:4
            w(j) = w(j) + alpha*t2*ip4(j);
        end
    end

    disp('Weights');
    disp(w);
    disp('Bias');
    disp(b);
end
