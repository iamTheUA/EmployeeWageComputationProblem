echo "Welcome to Employee Wage Computation Program"

#if attendance = 1 then It is Present and if =0 then It is Absent and =2 then it is part time
attendance=$((RANDOM%3))

#Calculating Daily Employee Wage
WagePerHour=20
FullDayHour=8
DailyWage=$((WagePerHour*FullDayHour))

#Part time hour
PartDayHour=4

case "$attendance" in
	1)
		DailyWage=$((WagePerHour*FullDayHour))
		;;
	2)
		DailyWage=$((WagePerHour*PartDayHour))
		;;
	0)
		DailyWage=0
		;;
	*)
esac

