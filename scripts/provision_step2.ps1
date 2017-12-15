Install-PackageProvider -name NuGet -minimumVersion 2.8.5.208 -force
Install-Module POSH-Git -force

@('eamodio.gitlens',
  'jpogran.puppet-vscode',
  'ms-vscode.PowerShell',
  'rebornix.Ruby') | 
  	ForEach-Object {code --install-extension $_}
