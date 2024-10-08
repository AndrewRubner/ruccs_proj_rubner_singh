sigma = 0.1;
x= 0:.005:2;
y=-1.5:.005:1.5;
[X,Y] = meshgrid(x,y); 
F = (1/sqrt((2*pi)*sigma))*exp(-(1*1.10-((X).*cos(Y))).^2 / (2*sigma^2));
%surf(X,Y,F)
contour3(X,Y,F)


title('Two-Tiered Model Likelihood','fontsize',14)

xlabel('Image Aspect Ratio','fontsize',14)
ylabel('Slant', 'fontsize',14)