function[Employee] = employee_reference_rosaton(Employee_Number,e_data)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 Program Description 
%	This function ...
%   First set of references, this allows function not to mismatch numbers to
%   different employees.
% Function Call
% 	[Employee] = employee_reference_rosaton(Employee_Number,e_data)
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

if Employee == e_data(1,:)
    fprintf('\nEmployee: Ariel Ball\n')
elseif Employee == e_data(2,:)
    fprintf('\nEmployee: Rachel Barnitz\n')
elseif Employee == e_data(3,:)
    fprintf('\nEmployee: Shawna Barrett\n')
elseif Employee == e_data(4,:)
    fprintf('\nEmployee: Taylor Beard\n')
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


                  


%For the Programmer's Reference

                     
                     
%Ball_Ariel = e_data(1,:);
%Barnitz_Rachel = e_data(2,:);
%Barrett_Shawna = e_data(3,:);
%Beard_Taylor = e_data(4,:);
%Bahvnani_Daisy = e_data(5,:);
%Bing_Elaine = e_data(6,:);
%Bogaards_Mackenzie = e_data(7,:);
%Bradford_Dorian = e_data(8,:);
%Brady_Marge = e_data(9,:);
%Cochenour_Alice = e_data(10,:);
%Crumpler_Virginia = e_data(11,:);
%Daye_Yvonne = e_data(12,:);
%Farmwald_Erin = e_data(13,:);
%Ferris_Cheyenne = e_data(14,:);
%Huda_Bisma = e_data(15,:);
%Jones_Teela = e_data(16,:);
%Lewis_Mary = e_data(17,:);
%Mazzola_Lydia = e_data(18,:);
%Miller_Robert = e_data(19,:);
%Mitchley_Amber = e_data(20,:);
%Nicholson_Paul = e_data(21,:);
%Pace_Elizabeth = e_data(22,:);
%Price_Ayesha = e_data(23,:);
%Ratnarajah_Yohambigai = e_data(24,:);
%Reece_Gabriel = e_data(25,:);
%Roberts_Evelyn = e_data(26,:);
%Rogers_Alexis = e_data(27,:);
%Smith_Corrie = e_data(28,:);
%Smith_Kitty = e_data(29,:);
%Stallings_Bethany = e_data(30,:);
%Sturm_Amy = e_data(31,:);
%Tergerson_Becky = e_data(32,:);
%Trasser_Dakota = e_data(33,:);
%Williams_Mekye = e_data(34,:);
%Willis_Lee = e_data(35,:);
%Yeganeh_Farnaz = e_data(36,:);

