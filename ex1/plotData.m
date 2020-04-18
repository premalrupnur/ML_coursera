function plotData(X, y,theta)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

m = length(y);
figure;
X = [ones(m,1),X];


plot(X,y,'x','MarkerEdgeColor','red',"MarkerSize",10)
xlim([4 24]);
xlabel('Population of city in 10,000s');
ylabel('Profit of city in 10,000$');
box("on")


hold on;
plot(X,X*theta,'-');
hold off;




% ============================================================

end
