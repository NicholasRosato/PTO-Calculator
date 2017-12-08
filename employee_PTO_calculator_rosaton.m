function[PTO] = employee_PTO_calculator_rosaton(Employee,PTO_Bank,New_Employee, Ability, Warnings)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   This function calculates the paid time off of the employee. It also
%   determnes what to administer to the employee if the employee's hours are
%   not meeting expectations of the employer.
% Function Call
% 	[PTO] = employee_PTO_calculator_rosaton(Employee,PTO_Bank,New_Employee, Ability, Warnings)
%
% Input Arguments
%	1.Employee
%   2.PTO_Bank
%   3.New_Employee
%   4.Ability
%   5.Warnings
% Output Arguments
%   1.PTO
% Assignment Information
%	Assignment: Individual Matlab Project      
%	Author:  Nicholas Rosato, rosaton                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%each employee has a a PTO bank
if (Employee(1,3) >= Employee(1,4)) | (New_Employee >= Employee(1,4))
    PTO = 2 + PTO_Bank;
    if Ability == 0 
        PTO = PTO_Bank - 2;
        if Warnings == 0 
            fprintf('\nAdminister Verbal Warning\n')
        elseif Warnings == 1
            fprintf('\nAdminister Written Warning\n')
        elseif Warnings == 2
            fprintf('\nConsider Termination of Employee\n')
        end
    end
end