function ln-s
{
  [CmdletBinding()]
  Param(
  [Parameter(Mandatory=$True,Position=1)]
  [string]$target,

  [Parameter(Mandatory=$True,Position=2)]
  [string]$linkname
  )

  write-verbose "target: $target, link-name: $linkname"
  if (test-path -pathtype container $target) {
    cmd /c mklink /d $linkname $target 
  }
  else {
    cmd /c mklink $linkname $target
  }
}

rm $home\_vimrc
rm $home\_gvimrc
rm $home\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

ln-s $home\dotfiles\vimrc $home\_vimrc
ln-s $home\dotfiles\gvimrc $home\_gvimrc
ln-s $home\dotfiles\Microsoft.PowerShell_profile.ps1 $home\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
