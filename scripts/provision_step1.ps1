net use G: \\localhost\src
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install visualstudiocode conemu hub -y
if(-not (Get-Command Install-PackageProvider -ErrorAction SilentlyContinue)){
    msiexec.exe /package C:\vagrants\files\PackageManagement_x64.msi /quiet
}

$gitconfig = @'
[user]
    name = Bill Hurt
    email = hurt.bill@gmail.com
[core]
    editor = code --wait
    ignorecase = false
    autocrlf = true
[push]
    default = simple
[hub]
    protocol = ssh
'@

Set-Content c:\users\vagrant\.gitconfig -Value $gitconfig