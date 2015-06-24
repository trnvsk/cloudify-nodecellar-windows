Set-ExecutionPolicy RemoteSigned
Invoke-WebRequest https://github.com/cloudify-cosmo/nodecellar/archive/master.zip -OutFile C:\CloudifyAgent\nodecellar.zip
function unzip($filename)
{
    $shell_app = new-object -com shell.application
    $zip_file = $shell_app.namespace((Get-Location).Path + "\$filename")
    $destination = $shell_app.namespace((Get-Location).Path)
    $destination.Copyhere($zip_file.items())
}
cd \CloudifyAgent
unzip("nodecellar.zip")
cd nodecellar-master
& 'C:\Program Files\nodejs\npm' install
C:\CloudifyAgent\nssm\nssm.exe install nodecellar 'C:\Program Files\nodejs\node.exe' 'C:\CloudifyAgent\nodecellar-master\server.js'
