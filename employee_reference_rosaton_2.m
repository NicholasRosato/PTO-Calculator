function[Employee] = employee_reference_rosaton_2(Employee_Number,e_data)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   Second set of references, this allows function not to mismatch numbers to
%   different employees.
% Function Call
% 	[Employee] = employee_reference_rosaton_2(Employee_Number,e_data)
%
% Input Arguments
%	1.Employee_Number
%   2.e_data
% Output Arguments
%   1.Employee
%
% Assignment Information
%	Assignment: Individual Matlab Project      
%	Author:  Nicholas Rosato, rosaton                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%indexes matrix brought in by user
Employee = e_data(Employee_Number,:);

if Employee == e_data(5,:)
    fprintf('\nEmployee: Daisy Bahvnani\n')
elseif Employee == e_data(6,:)
    fprintf('\nEmployee: Elaine Bing\n')
elseif Employee == e_data(7,:)
    fprintf('\nEmployee: Mackenzie Bogaards\n')
elseif Employee == e_data(8,:)
    fprintf('\nEmployee: Dorian Bradford\n')
elseif Employee == e_data(9,:)
    fprintf('\nEmployee: Marge Brady\n')
elseif Employee == e_data(10,:)
    fprintf('\nEmployee: Alice Cochenour\n')
elseif Employee == e_data(11,:)
    fprintf('\nEmployee: Virginia Crumpler\n')
elseif Employee == e_data(12,:)
    fprintf('\nEmployee: Yvonne Daye\n')
elseif Employee == e_data(13,:)
    fprintf('\nEmployee: Erin Farmwald\n')
elseif Employee == e_data(14,:)
    fprintf('\nEmployee: Cheyenne Ferris\n')
elseif Employee == e_data(15,:)
    fprintf('\nEmployee: Bisma Huda\n')
elseif Employee == e_data(16,:)
    fprintf('\nEmployee: Teela Jones\n')
end
%for print statements
Straight_Hours = e_data(Employee_Number,1);
Overtime_Hours = e_data(Employee_Number,2);
Total_Hours = e_data(Employee_Number,3);
Hours_Scheduled = e_data(Employee_Number,4);
fprintf('\nStraight Hours = %0.2f\n',Straight_Hours)
fprintf('\nOvertime Hours = %0.2f\n',Overtime_Hours)
fprintf('\nTotal Hours = %0.2f\n', Total_Hours)
fprintf('\nHours Scheduled = %0.2f\n', Hours_Scheduled)

end

