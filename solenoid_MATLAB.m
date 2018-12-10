%% Final Project - Parachute Release Mechanism
% Authors: Josh Hanenburg, Nick Hongo, Vinh Bui, & Weixun Wang
% Date: 12/11/2018
% Course: ENGR 114, Fall 2018
% Description: This MATLAB code interfaces with Arduino software to operate
% a solenoid to open a release mechanism to drop a parachute. MATLAB
% software will ask a user to enter 'D' to drop the parachute, 'C' to close
% the solenoid or 'q' to quit the program.

%% Clear command window, workspace variables, figure windows and connected devices
clc;                                                        % Clears command window
clear;                                                      % Clears all workspace variables
close all;                                                  % Closes all open figure windows
delete(instrfindall);                                       % Finds all visible and hidden serial port objects and closes them

%% Open the serial port to connect Arduino to MATLAB

Port = 'COM6';                                              % Port the Arduino is connected to
delete(instrfindall);                                       % Deletes any connected ports
a = serial(Port);                                           % Creates the serial port
fopen(a);                                                   % Opens the serial port
pause(1);                                                   % Pause () for 1 second to make sure a connection is made
out = instrfind('Port', Port);                              % See if the port specified is open
disp('Serial Port is Open')                                 % Display text to user that the port is open

%% Ask for user input, D to open solenoid, L to close solenoid, q for quit
while true                                                  % Create while statement for true
    % Ask user for input as a string
    user_input = input('Type "D" to open the release mechanism , "C" to close the release mechanism or "q" to quit : ','s');
    if strcmp(user_input,'D')                               % If statement with strcmp() logical statement
        send_str = 'D';                                     % Creates send_str variable as a string 'D'
        fprintf(a, '%s', send_str);                         % fprintf() to send signal to Arduino software and display string text
        pause(0.01);
    elseif strcmp(user_input,'C')                           % Elseif statement with strcmp() logical statement
        send_str = 'C';                                     % Creates send_str variable as a string 'C'
        fprintf(a, '%s', send_str);                         % fprintf() to send signal to Arduino software and display string text
        pause(0.01);
    elseif strcmp(user_input,'q')                           % Elseif statement with strcmp() logical statement
        break                                               % Terminates if statement
    end                                                     % Ends if statement
end                                                         % Ends while statement

%% Close the serial port
fclose(a);                                                  % Closes the serial port
delete(a);                                                  % Deletes serial port from memory
clear a;                                                    % Removes serial port from workspace
disp('Serial Port is closed')                               % Displays text to command window
