Set-ExecutionPolicy RemoteSigned
Invoke-WebRequest http://nodejs.org/dist/v0.12.4/x64/node-v0.12.4-x64.msi -OutFile C:\CloudifyAgent\node.msi
Start-Process -FilePath msiexec -ArgumentList /i, C:\CloudifyAgent\node.msi, /quiet -Wait
