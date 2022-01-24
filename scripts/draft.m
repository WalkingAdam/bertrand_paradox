function draft()
    figure;
    axis equal;
    axis off;
    hold on;
    plot([0, cos(pi / 6), cos(5 * pi / 6), 0], [-1, sin(pi / 6), sin(5 * pi / 6), -1], 'color', 'black');
    plot(0, 0, '+', 'color', 'black');
    circle(1, 'black');
    hold off;