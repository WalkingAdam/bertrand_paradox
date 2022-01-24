function radial_point_demo(number_of_chords)
    figure;
    hold on;
    axis equal;
    axis off;
    for i = 1 : number_of_chords
        radius = rand();
        angle = 2 * pi * rand();
        midpoint = radius * [cos(angle), sin(angle)];
        chord = chord_from_midpoint(midpoint, 1);
        if radius < 1 / 2
            color = '#77AC30';
        else
            color = '#EDB120';
        end
        plot(chord(1, :), chord(2, :), 'color', color);
    end
    circle(1, 'black');
    circle(1 / 2, 'red');
    hold off;
