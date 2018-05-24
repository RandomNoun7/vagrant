Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install visualstudiocode conemu hub firacode -y
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
[alias]
    graph = log --oneline --graph --all
    amend = commit --amend --no-edit
'@

Set-Content c:\users\vagrant\.gitconfig -Value $gitconfig

Install-PackageProvider -name NuGet -minimumVersion 2.8.5.208 -force

Install-Module POSH-Git -force