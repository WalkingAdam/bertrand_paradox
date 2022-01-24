function radial_point_method(number_of_chords)
    figure;
    hold on;
    axis equal;
    axis off;
    for i = 1 : number_of_chords
        radius = rand();
        midpoint = [radius, 0];
        chord = chord_from_midpoint(midpoint, 1);
        if radius < 1 / 2
            color = '#77AC30';
        else
            color = '#EDB120';
        end
        plot(chord(1, :), chord(2, :), 'color', color);
    end
    chord = chord_from_midpoint([1 / 2, 0], 1);
    plot(chord(1, :), chord(2, :), 'red');
    circle(1, 'black');
    hold off;
    