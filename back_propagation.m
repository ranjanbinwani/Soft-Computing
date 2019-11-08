train = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0];
test = [1 0 1; 1 1 0; 1 1 1];
out_train = [0 1 1 1 1];
out_test = [1 1 1];

vij = [0.1 0.1 0.1; 0.2 0.2 0.2; 0.3 0.3 0.3];
wjk = [0.1 0.2 0.3];
zinj = 0;
voj = 0;
wok = 0;
zj = [0 0 0];
yk = 0;
yink = 0;
alpha = 0.25;
delta_w = [0 0 0];
delta_inj = 0;
delta_j = [0 0 0];
delta_vij = [0 0 0];


for itr = 1:5
    for i=1:3
        for j=1:3
            zinj = zinj + train(i,j)*vij(j, i);
        end

        zinj = zinj + voj;
        zj(i) = 1/(1+exp(-zinj));

        for j=1:3
            yink = yink + zj(j)*wjk(j);
        end

        yink = yink + wok;
        yk = 1/(1+exp(-yink));

        %disp('z');
        %disp(zj);
        %disp('Y');
        %disp(yk);

        delta_k = out_train(itr)*yk*(1-yk);
        for j=1:3
            delta_w(j) = alpha*delta_k*zj(j);
        end
        delta_wok = alpha*delta_k;
        
        for j=1:3
            delta_inj = delta_inj + delta_k * wjk(j);
        end
        
        for j=1:3
            delta_j(j) = delta_inj*zj(j)*(1-z(j));
        end
        
        for j=1:3
            delta_vij(j) = alpha*delta_j(j) * train(itr,j);
        end
        
        
    end
end
