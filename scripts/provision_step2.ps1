(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/RandomNoun7/machine_config/master/vscode_extensions.txt').split("`n") `
| ForEach-Object {code --install-extension "$_"}
