function[PTO_Bank,PTO,New_Employee,Ability] = employee_PTO_Bank_rosaton(Employee,Employee_Number,e_data,Warnings)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   The PTO bank function will calculate the ability of an employee to obtain
%   paid time off for the current pay cycle.
% Function Call
% 	[PTO_Bank,PTO,New_Employee,Ability] = employee_PTO_Bank_rosaton(Employee,Employee_Number,e_data,Warnings)
%
% Input Arguments
%	1.Employee
%   2.Employee_Number
%   3.e_data
%   4.Warnings
% Output Arguments
%   1.PTO_Bank
%   2.PTO
%   3.New_Employee
%   4.Ability
% Assignment Information
%	Assignment: Individual Matlab Project      
%	Author:  Nicholas Rosato, rosaton                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Employee_Bank = zeros(length(e_data)); %Gives the option to input hours left in the employees PTO Bank


%imbedded while loops allows for PTO calculation for each employee
Ability = 1;
n = 1;
Cut = 1;
while n == 1
    while (Employee(1,3) < Employee(1,4)) & (Cut > 0)
        PTO_Bank = Employee_Bank(Employee_Number) - 1;
        Employee(1,3) = Employee(1,3) + 1;
        Ability = 0;
        if PTO_Bank < 0 
            fprintf('\nPTO Bank is Empty: WARNING\n')
            Cut = 0;
            PTO = 0;
            New_Employee = 0;
        end
        n = n + 1;
    end
if Cut==1
New_Employee = Employee(1,3) + (Employee(1,4)-Employee(1,3));
Employee(1,3) = New_Employee;
    
PTO_Bank = Employee_Bank(Employee_Number);

[PTO] = employee_PTO_calculator_rosaton(Employee,PTO_Bank,New_Employee, Ability, Warnings);

n = n + 1;
end
end
end
