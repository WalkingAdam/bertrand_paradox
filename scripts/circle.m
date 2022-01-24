function circle(radius, color)
    angles = 0 : 0.01 : 2 * pi;
    x = radius * cos(angles);
    y = radius * sin(angles);
    plot(x, y, 'color', color);
end