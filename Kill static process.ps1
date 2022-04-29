Get-Process TheProgramName | # Get-Process "NameOfProcess" want to kill
    Where StartTime -lt (Get-Date).AddMinutes(-30) | #Default 30 Minutes
    Stop-Process
pause
