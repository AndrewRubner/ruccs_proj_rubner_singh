%likelihood function

sigma = 0.1;
x=0:.05:4;
y=0:.05:4;
[X,Y] = meshgrid(x,y); 
F = (1/sqrt((2*pi)*sigma))*exp(-(1-(X.*Y)).^2 / (2*sigma^2));
%surf(X,Y,F)
%surf(X,Y,F)

%cue to illuminant

Z = normpdf(X,2,.2)

W = Z.*F

surf(X,Y,W)

% Find the maximum posterior probability and its indices
[max_prob, max_idx] = max(W(:));

% Convert the linear index to row and column indices
[row_idx, col_idx] = ind2sub(size(W), max_idx);

% Get the coordinates of the maximum posterior probability point
map_x = x(col_idx);
map_y = y(row_idx);

fprintf('MAP Estimation:\nX: %.2f\nY: %.2f\n', map_x, map_y);


