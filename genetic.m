options = gaoptimset('PopulationSize',50,'MutationFcn',@mutationuniform,'CrossoverFcn',@crossoversinglepoint,'Generations',1000,'StallGenLimit',100,'PlotFcns',{@gaplotbestindiv,@gaplotbestf});
[x, fx] = ga(@opt,1,[],[],[],[],-6,0,[],options);

disp(x,fx);
