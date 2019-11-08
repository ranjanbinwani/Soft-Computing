%set1 = input('Enter values of set 1: ');
%set2 = input('Enter values of set 2: ');
%set3 = input('Enter values of set 3: ');

disp('Intersection of 2 Sets: ');
intersect(set1, set2);

disp('Union of 2 Sets: ');
unionset(set1, set2);

disp('Complement of Set 1');
complement(set1);

disp('Complement of Set 2');
complement(set2);

disp('Algebraic Sum is: ');
algsum(set1, set2);

disp('Algebraic Product is: ');
algpro(set1, set2);

disp('Bounded Sum is: ');
boundsum(set1, set2);

disp('Bounded Product is: ');
boundpro(set1, set2);

disp('Commutativity: ');
commut(set1, set2);

disp('Associativity: ');
assoc(set1, set2, set3);

disp('Distributivity: ');
dist(set1, set2, set3);

disp('Idempotency: ');
idem(set1);

disp('Identity: ');
identity(set1);

disp('Involution: ');
involution(set1);

morgan(set1, set2);
