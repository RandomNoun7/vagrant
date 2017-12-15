net use G: \\\\int-resources.ops.puppetlabs.net\\Resources\\ISO
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install visualstudiocode -y
refreshenv
@('eamodio.gitlens',
  'jpogran.puppet-vscode',
  'ms-vscode.PowerShell',
  'rebornix.Ruby') | ForEach-Object {code --install-extension $_}
Install-PackageProvider -name NuGet -minimumVersion 2.8.5.208 -force
Install-Module POSH-Git -force