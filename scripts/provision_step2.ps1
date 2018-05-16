Install-PackageProvider -name NuGet -minimumVersion 2.8.5.208 -force

(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/RandomNoun7/machine_config/master/vscode_extensions.txt').split("`n") `
| ForEach-Object {code --install-extension $_}
