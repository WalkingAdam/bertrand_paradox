function chord = chord_from_midpoint(midpoint, radius)
    base_angle = acos(midpoint * [1, 0]' / norm(midpoint));
    if sign(midpoint(2)) < 0
        base_angle = 2 * pi - base_angle;
    end
    chord_angle = acos(norm(midpoint) / radius);
    a_angle = base_angle + chord_angle;
    b_angle = base_angle - chord_angle;
    chord = [cos(a_angle), cos(b_angle); sin(a_angle), sin(b_angle)];