Set-ExecutionPolicy RemoteSigned
Start-Process -FilePath msiexec -ArgumentList /x, C:\CloudifyAgent\node.msi, /quiet -Wait
rm C:\CloudifyAgent\node.msi
