
function [Km, Kb, J, b, L, R] = generate_parameters(student_id)
    % Convert student ID to a seed for random number generation
    rng(student_id, 'twister');
    
    % Generate parameters with increased variability
    Km = 0.0274 * (0.5 + 1.5 * rand);
    Kb = 0.0274 * (0.5 + 1.5 * rand);
    J = 3.2284e-6 * (0.5 + 1.5 * rand);
    b = 3.5077e-6 * (0.5 + 1.5 * rand);
    L = 2.75e-6 * (0.5 + 1.5 * rand);
    R = 4 * (0.5 + 1.5 * rand);
end
