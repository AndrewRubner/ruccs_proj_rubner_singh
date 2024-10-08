sigma = 0.1;
x= 0:.005:2;
y=-1.5:.005:1.5;
i= .92
[A,S] = meshgrid(x,y); 
Likelihood = (1/sqrt((2*pi)*sigma))*exp(-(i*1.08-((A).*cos(S))).^2 / (2*sigma^2));
%surf(X,Y,F)
%contour3(X,Y,F)

%cue to slant

pd1 = makedist('Uniform','lower',.5, 'upper', 1.5) 

%PriorAspect = pdf(pd1,A);

PriorAspect = normpdf(A, 1, .1)


PriorSlant = normpdf(S, 1.13, .13)

%PriorSlant = normpdf(S, 0, .08)

BinocularSlant = normpdf(S,0,.04)

EstimateSlant = PriorSlant.*BinocularSlant




%G = normpdf(X,1,.1);

PosteriorAspect = EstimateSlant.*Likelihood.*PriorAspect;

xlabel('')
ylabel('')

% Find the maximum posterior probability and its indices
[max_prob, max_idx] = max(PosteriorAspect(:));

% Convert the linear index to row and column indices
[row_idx, col_idx] = ind2sub(size(PosteriorAspect), max_idx);

% Get the coordinates of the maximum posterior probability point
map_x = x(col_idx);
map_y = y(row_idx);

fprintf('MAP Estimation:\nX: %.2f\nY: %.2f\n', map_x, map_y);




%max_val=max(max(W));

%[maxx,maxy] = find(W==max_val)


%X(maxx)
%Y(maxy)

%disp(max_ind)

%argmax=x(max_ind)


%surf(X,Y,W)
contour3(A,S,PosteriorAspect)

title('Two-Tiered Model w/ Prior on Aspect Ratio: Posterior','fontsize',14)

xlabel('Surface Aspect Ratio', 'fontsize',14)
ylabel('Slant','fontsize', 14)

legend('argmax: x = 1.00, y = 0.10')

%contour3(X,Y,W)
%xticks(0:.05:2)
