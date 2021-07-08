echo "Welcome to Employee Wage Computation Program"

#if attendance = 1 then It is Present and if =0 then It is Absent and =2 then it is part time
attendance=$((RANDOM%3))

#function to get Work hours
function Work
{
#Calculating Daily Employee Wage
WagePerHour=20
FullDayHour=8
DailyWage=$((WagePerHour*FullDayHour))

#Part time hour
PartDayHour=4

#Creating function for daily wage
function dailywagefind()
{
case "$attendance" in
	1)
		DailyWage=$((WagePerHour*FullDayHour))
		TotalHour=$((TotalHour+FullDayHour))
		;;
	2)
		DailyWage=$((WagePerHour*PartDayHour))
		TotalHour=$((TotalHour+PartDayHour))
		;;
	0)
		DailyWage=0
		;;
	*)
esac
}
DailyWage=0
MonthlyWage=0
numOfDays=20
TotalHour=0

#Running loop for A month or 100hours
for ((i=0;i<numOfDays;i++))
do
	if [ $TotalHour -le 100 ]
	then
		attendance=$((RANDOM%3))
		dailywagefind

#array to store Daily Wage

		Arr_Wage[$i]=$DailyWage
		MonthlyWage=$((DailyWage + MonthlyWage))
	fi
done
echo "Total Hours: "$TotalHour
}
