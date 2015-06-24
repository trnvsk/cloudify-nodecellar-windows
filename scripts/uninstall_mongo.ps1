Set-ExecutionPolicy RemoteSigned
cd 'C:\Program Files\MongoDB\Server\3.0\bin'
.\mongod.exe --remove
Start-Process -FilePath msiexec -ArgumentList /x, C:\CloudifyAgent\mongo.msi, /quiet -Wait
rm -r \data\db
rm C:\CloudifyAgent\mongo.msi
