function[] = exec_function_project_rosaton(Start,Warnings,Employee_Number)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   Is the executive function that compiles all of my other functions
%   together to run the code.
% Function Call
% 	[] = exec_function_project_rosaton(Start,Warnings,Employee_Number)
%
% Input Arguments
%	1.Start
%   2.Warnings
%   3.Employee_Number
% Output Arguments
%   None
%
% Assignment Information
%	Assignment: Individual Matlab Project      
%	Author:  Nicholas Rosato, rosaton                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Initialization
%Introduction
prompt = ('\nWould you like to open the user manual? Input Yes or No.\n');
Yes = 1;
yes = Yes;
No = 2;
no = 2;
Open = input(prompt);
if Open == 1
    winopen Project_Report_rosaton_pdf.pdf
end


z=0;
    fprintf('\nWelcome to PTO Calculator. This program takes in a spread sheet of employee data\n') 
    fprintf('\nbased on hours worked and hours scheduled to calculate paid time off and what to do if the employee is breaking the rules.\n')
    fprintf('\nIf you want to see info on all Employees, enter "all", If you want to look into detail on one employee, enter "One".\n')
    [Start,Warnings,Employee_Number] = Starting_Function_rosaton(z);
    [All,One,Introduction,all,one,introduction] = embedded_rosaton();


%Program In action, there is some initialization throughout the program
%after this line.

   
    if Start == 1 %If the preference "One" is choosen
    e_data = load('employee_data.txt'); %This is the script the function will bring in
    if Employee_Number == 0
        fprintf('\nPlease enter Employee_Number 1-%d in the start function.\n',length(e_data))
        [Start,Warnings,Employee_Number] = Starting_Function_rosaton();
    elseif Employee_Number < 5 
        [Employee] = employee_reference_rosaton(Employee_Number,e_data);
    elseif Employee_Number >=5 & Employee_Number <= 16
        [Employee] = employee_reference_rosaton_2(Employee_Number,e_data);
    elseif (Employee_Number > 16) & (Employee_Number <= length(e_data))
        [Employee] = employee_reference_rosaton_3(Employee_Number,e_data);
    elseif Employee_Number > length(e_data)
            z=1;
            while Employee_Number > length(e_data)
                fprintf('\nPlease enter a valid Employee_Number 1-%d, your number is too high.\n',length(e_data))
                [Start,Warnings,Employee_Number] = Starting_Function_rosaton(z);
            end
        if Employee_Number < 5 
            [Employee] = employee_reference_rosaton(Employee_Number,e_data);
        elseif Employee_Number >=5 & Employee_Number <= 16
            [Employee] = employee_reference_rosaton_2(Employee_Number,e_data);
        elseif (Employee_Number > 16) & (Employee_Number <= length(e_data))
            [Employee] = employee_reference_rosaton_3(Employee_Number,e_data);
        elseif Employee_Number > length(e_data)
        end
    end
    if (Employee_Number > 0) & (Employee_Number <= length(e_data))
    [PTO_Bank,PTO,New_Employee,Ability] = employee_PTO_Bank_rosaton(Employee,Employee_Number,e_data,Warnings);
    if Ability == 1
        fprintf('\n*Congratulations, this employee has earned 2 hours of paid time off!*\n')
    elseif Ability == 0
        fprintf('\n*This employee has not Earned Paid Time off.*\n')
        if PTO_Bank < 0 
            fprintf('\n*Warning will be administered.*\n')
            if Warnings == 1
                fprintf('\n*Administer written warning.*\n')
            elseif Warnings >= 2 
                fprintf('\n*Consider termination.*\n')
            elseif Warnings == 0
                fprintf('\n*Administer verbal warning.*\n')
            end
        end
    end
    end
elseif Start == 2 %If the preference "All is chosen"
    e_data = load('employee_data.txt');
    [n] = n_output_rosaton(e_data);
    Employee_Number = 1
    %This loops through all employees, n is initialized in the n output
    %function
    for i = 1:n;
        fprintf('\nEmployee Number: %d\n', Employee_Number)
        if Employee_Number < 5 
            [Employee] = employee_reference_rosaton(Employee_Number,e_data);
        elseif Employee_Number >=5 & Employee_Number <= 16
            [Employee] = employee_reference_rosaton_2(Employee_Number,e_data);
        elseif Employee_Number > 16 
            [Employee] = employee_reference_rosaton_3(Employee_Number,e_data);
        elseif Employee_Number > 36
            z = 0;
            fprintf('\nPlease enter a valid Employee_Number 1-%d, your number is too high.\n',length(e_data))
            [Start,Warnings,Employee_Number] = Starting_Function_rosaton(z)
        end
        if (Employee_Number > 0) & (Employee_Number < length(e_data))
        [PTO_Bank,PTO,New_Employee,Ability] = employee_PTO_Bank_rosaton(Employee,Employee_Number,e_data,Warnings);
        if Ability == 1
            fprintf('\n*Congratulations, this employee has earned 2 hours of paid time off!*\n')
        elseif Ability == 0
            fprintf('\n*This employee has not earned paid time off.*\n')
            if PTO_Bank < 0 
                fprintf('\n*Warning will be Administered.*\n')
                fprintf('\nIf you want to see details about warnings with this employee, set "Start" equal to "One" and\n') 
                fprintf('\nenter how many warnings this employee has had along with the employee''s number in the prompt.\n')
                end
            end
        end
        Employee_Number = Employee_Number + 1;
        fprintf('\n---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n')
    end
    fprintf('\nDATA ANALYTICS\n')
    fprintf('\nA graph to display trends among employee hours will also be displayed.\n')
    Employee_Graph = 0;
    for x = 1:length(e_data)
        Employee_Graph = Employee_Graph + 1;
       for y = e_data(Employee_Graph, 1)
           scatter(x,y)
           hold on
           title('Employees and their hours worked by Employee Number')
           xlabel('Employees according to their Assigned Numbers')
           ylabel('Hours Worked')
       end
    end
    Average_Hours = mean(e_data(1:36,1));
    fprintf('\n The average amount of hours worked is %0.2f hours\n',Average_Hours)
    Average_Overtime = mean(e_data(1:36,2));
    fprintf('\n The average amount of overtime worked is %0.2f hours\n', Average_Overtime)
   counter = 0;
    for I = 1:36
        if e_data(I,3) >= e_data(I,4)
            counter = counter + 1;
        end
    end
     fprintf('\n The number of employees that hit compliance for this pay cycle is %d employees\n', counter)
    
    end
end






