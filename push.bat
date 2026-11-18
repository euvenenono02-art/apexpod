@echo off 
cd /d "%%~dp0" 
set /p msg="Enter update message (or press Enter for default): " 
if "%%msg%%"=="" set msg=Update ApexPod site 
git add . 
git commit -m "%%msg%%" 
git push -u origin main 
echo ========================================== 
echo Done! Your site will update in 1 minute. 
echo ========================================== 
pause
