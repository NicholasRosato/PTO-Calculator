function[Start,Warnings,Employee_Number] = Starting_Function_rosaton(z)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   This is the Start Function. It is where the user sets the preferences
%   for the code so the code calculates what the user wants to see.
% Function Call
% 	[Start,Warnings,Employee_Number] = Starting_Function_rosaton()
% Input Arguments
%	None
% Output Arguments
%   1.Start
%   2.Warnings
%   3.Employee_Number
% Assignment Information
%	Assignment: Individual Matlab Project      
%	Author:  Nicholas Rosato, rosaton                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[All,One,Introduction,all,one,introduction] = embedded_rosaton();

if z == 0
prompt=('\nDo you want to evaluate all employees or one employee? Please input All or One.\n');
Start = input(prompt);


if Start == (One | one)
prompt=('\nWhat is the Employee Number?\n');

Employee_Number = input(prompt);


prompt=('\nHow many warnings has this employee had?\n');

Warnings = input(prompt);

else Start == (All|all)
    Warnings = 0;
    Employee_Number = 1;

end

elseif z==1

    Start = One;

prompt=('\nWhat is the Employee Number?\n');

Employee_Number = input(prompt);

prompt=('\nHow many warnings has this employee had?\n');

Warnings = input(prompt);

end




%THESE ARE THE PREFERENCES
%Start = Introduction; %Set as All, One, or Introduction
%Warnings   = 2; %This does not matter if you are looping All employees
%Employee_Number =36; %This does not matter if you are looping All employees
end