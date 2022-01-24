function endpoint_demo(number_of_chords)
    figure;
    hold on;
    axis equal;
    axis off;
    for i = 1 : number_of_chords
        angles = 2 * pi * [rand(), rand()];
        chord = [cos(angles(1)), cos(angles(2)); sin(angles(1)), sin(angles(2))];
        if norm(chord(:, 1) - chord(:, 2)) > sqrt(3)
            color = '#77AC30';
        else
            color = '#EDB120';
        end
        plot(chord(1, :), chord(2, :), 'color', color);
    end
    circle(1, 'black');
    circle(1 / 2, 'red');
    hold off;
end