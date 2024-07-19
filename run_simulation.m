
clc
clear all
close all

%% Request student ID from user
student_id = input('Please enter your student ID: ');

%% Call the function to generate parameters
[Km, Kb, J, b, L, R] = generate_parameters(student_id);

%% Display the generated parameters
fprintf('Generated Parameters for Student ID %d:\n', student_id);
fprintf('Km: %e\n', Km);
fprintf('Kb: %e\n', Kb);
fprintf('J: %e\n', J);
fprintf('b: %e\n', b);
fprintf('L: %e\n', L);
fprintf('R: %f\n', R);


