N = 20;
X = 10*rand(1,N);
Y = X.^2+1;
A = @(x) (x).^2;

fobj = @(w) erreur_res(w,X,A,Y);
options = optimset('Display','iter','MaxIter',1e5,'MaxFunEvals',5e4);
w = fminsearch(fobj,rand(1,11),options)
erreur = erreur_res(w,X,A,Y)

X = sort(X);
z = sortie_res(w,X,A);

Y = X.^2+1;
figure
plot(X,Y);
hold on
plot(X,z);


