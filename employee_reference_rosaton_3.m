function[Employee] = employee_reference_rosaton_3(Employee_Number,e_data)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   Third set of references, this allows function not to mismatch numbers to
%   different employees.
% Function Call
% 	[Employee] = employee_reference_rosaton_3(Employee_Number,e_data)
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
%indexes matrix inputted by user
if Employee_Number <= length(e_data);
Employee = e_data(Employee_Number,:);

if Employee == e_data(17,:)
    fprintf('\nEmployee: Mary Lewis\n')
elseif Employee == e_data(18,:)
    fprintf('\nEmployee: Lydia Mazzola\n')
elseif Employee == e_data(19,:)
    fprintf('\nEmployee: Robert Miller\n')
elseif Employee == e_data(20,:)
    fprintf('\nEmployee: Amber Mitchley\n')
elseif Employee == e_data(21,:)
    fprintf('\nEmployee: Paul Nicholson\n')
elseif Employee == e_data(22,:)
    fprintf('\nEmployee: Elizabeth Pace\n')
elseif Employee == e_data(23,:)
    fprintf('\nEmployee: Ayesha Price\n')
elseif Employee == e_data(24,:)
    fprintf('\nEmployee: Yohambigai Ratnarajah\n')
elseif Employee == e_data(25,:)
    fprintf('\nEmployee: Gabriel Reece\n')
elseif Employee == e_data(26,:)
    fprintf('\nEmployee: Evelyn Roberts\n')
elseif Employee == e_data(27,:)
    fprintf('\nEmployee: Alexis Rogers\n')
elseif Employee == e_data(28,:)
    fprintf('\nEmployee: Corrie Smith\n')
elseif Employee == e_data(29,:)
    fprintf('\nEmployee: Kitty Smith\n')
elseif Employee == e_data(30,:)
    fprintf('\nEmployee: Bethany Stallings\n')
elseif Employee == e_data(31,:)
    fprintf('\nEmployee: Becky Tergerson\n')
elseif Employee == e_data(32,:)
    fprintf('\nEmployee: Amy Sturm\n')
elseif Employee == e_data(33,:)
    fprintf('\nEmployee: Dakota Trasser\n')
elseif Employee == e_data(34,:)
    fprintf('\nEmployee: Mekye Williams\n')
elseif Employee == e_data(35,:)
    fprintf('\nEmployee: Lee Willis\n')
elseif Employee == e_data(36,:)
    fprintf('\nEmployee: Farnaz Yeganeh\n')
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

else Employee_Number > length(e_data);
    fprintf('\nPlease input a valid employee number 1-%d\n',length(e_data))
end

end
