%% Part 1 verify behaviors
[X,Y] = meshgrid(-2:0.2:2,-2:0.2:2);
Q = [2 -5 1 -2;-1 -1 0 -0.25;3 -4 1 -1;2 -5/2 9/5 -1;2 -1 3 -2;1 sqrt(3) sqrt(3) -1;3 -2 2 -2];
for i = 1:7
    figure(i);
    phase_plot(Q(i,:),X,Y);
end
%% Part 2 8
[X,Y] = meshgrid(-5:0.2:5,-5:0.2:5);
DX = -(X-Y).*(1-X-Y);
DY = X.*(2+Y);
streamslice(X,Y,DX,DY,2);
title('dynamics of question 8');
hold on
plot([-2,0,0,3],[-2,0,1,-2],'r*');
hold off
%% 9
[X,Y] = meshgrid(-1:0.2:2,-1:0.2:2);
DX = X - Y.^2;
DY = Y - X.^2;
streamslice(X,Y,DX,DY);
title('dynamics of question 9');
hold on
plot([0,1],[0,1],'r*');
hold off
%% 10
[X,Y] = meshgrid(-5:0.2:5,-5:0.2:5);
DX = (X+2).*(Y-X);
DY = (4-X).*(Y+X);
streamslice(X,Y,DX,DY,2);
title('dynamics of question 10');
hold on
plot([-2,0,4],[2,0,4],'r*');
hold off
%% functions
function phase_plot(a,X,Y)
%  plot the phase graph of D[X;Y] = [a(1) a(2);a(3) a(4)]*[X;Y] 
    DX = a(1)*X + a(2)*Y;
    DY = a(3)*X + a(4)*Y;
    streamslice(X,Y,DX,DY);
    axis square;
end