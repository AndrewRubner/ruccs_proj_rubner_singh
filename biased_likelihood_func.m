sigma = 0.1;
x=-.05:.05:2;
y=-1.5:.05:1.5;
i=1
[X,Y] = meshgrid(x,y); 
F = (1/sqrt((2*pi)*sigma))*exp(-(i-((X).*cos(Y))).^2 / (2*sigma^2));
%surf(X,Y,F)
contour3(X,Y,F)


title('Standard Model: Likelihood','fontsize',24)

xlabel('Surface Aspect Ratio', 'fontsize',14)
ylabel('Slant (radians)','fontsize', 14)