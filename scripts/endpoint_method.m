function endpoint_method(number_of_chords)
    figure;
    hold on;
    axis equal;
    axis off;
    for i = 1 : number_of_chords
        angle = 2 * pi * rand();
        chord = [0, cos(angle); -1, sin(angle)];
        if norm(chord(:, 1) - chord(:, 2)) > sqrt(3)
            color = '#77AC30';
        else
            color = '#EDB120';
        end
        plot(chord(1, :), chord(2, :), 'color', color);
    end
    circle(1, 'black');
    plot([0, cos(pi / 6), cos(5 * pi / 6), 0], [-1, sin(pi / 6), sin(5 * pi / 6), -1], 'color', 'red');
    hold off;
end
    
    