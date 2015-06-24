Set-ExecutionPolicy RemoteSigned
Invoke-WebRequest https://fastdl.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.0.4-signed.msi -OutFile C:\CloudifyAgent\mongo.msi
Start-Process -FilePath msiexec -ArgumentList /i, C:\CloudifyAgent\mongo.msi, /quiet -Wait
md \data\db
cd 'C:\Program Files\MongoDB\Server\3.0\bin'
.\mongod.exe --install --logpath  "C:\data\db\mongodb.log" --logappend
