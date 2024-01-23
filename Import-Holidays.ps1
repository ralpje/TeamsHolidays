$holidays = invoke-webrequest https://date.nager.at/api/v3/publicholidays/2024/nl | ConvertFrom-Json
foreach ($holiday in $holidays) {
    $holidayName = $holiday.LocalName + '-2024'
    New-CsOnlineTimeRange -Start $holiday.date -End $holiday.date -name $holiday.LocalName
}