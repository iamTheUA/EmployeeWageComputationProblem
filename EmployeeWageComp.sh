echo "Welcome to Employee Wage Computation Program"

#if attendance = 1 then It is Present and if =0 then It is Absent
attendance=$((RANDOM%2))

#Calculating Daily Employee Wage
WagePerHour=20
FullDayHour=8
DailyWage=$((WagePerHour*FullDayHour))

