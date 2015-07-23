$ps = "$home\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
$vimrc = "$home\_vimrc"

invoke-expression "cmd /c mklink $ps $home\dotfiles\Microsoft.Powershell_profile"
invoke-expression "cmd /c mklink $vimrc $home\dotfiles\vimrc"
