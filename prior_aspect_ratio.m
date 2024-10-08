x=.05:.05:2;
y=-1.5:.05:1.5;
[X,Y] = meshgrid(x,y)

pd1 = makedist('Uniform','lower',.5, 'upper', 1.5); 

%Z = pdf(pd1,X);
%G = normpdf(Y,0,.1);

K= normpdf(Y,.43,.1)



%W = Z.*G;


contour3(X,Y,K)
%contour3(X,Y,G)
%surf(X,Y,Z)

title('Standard Model: Prior on Slant','fontsize',24)

xlabel('Surface Aspect Ratio', 'fontsize',14)
ylabel('Slant (radians)','fontsize', 14)

%y = normpdf(x,1,.7);

%plot(x,y)


%x = [.05:.005:2];
%y = normpdf(x,1,.7);

%z=-1.5:.005:1.5;

%w = normpdf(z, 0, .1)


