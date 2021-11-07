# Download Visual Studio Code in to current user downloads folder
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output $env:USERPROFILE\Downloads\vscode.exe

# Install and run Visual Studio Code from current user download folder
Invoke-Expression $env:USERPROFILE"\Downloads\vscode.exe /verysilent /suppressmsgboxes"

# Install Azure CLI
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi
Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet';