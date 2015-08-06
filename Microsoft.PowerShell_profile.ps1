# custom function
function git-status { git status }
function git-status-short { git status --short}
function git-log-oneline-decorate { git log --oneline --decorate --color }
function git-add-all { git add --all }
function git-commit-all-message { git commit --all --message $args[0] }
function git-remote-verbose { git remote --verbose }

function start-emacs
{
  C:\emacs\bin\emacsclientw.exe --alternate-editor=runemacs.exe -c $args[0]
}

function outlook-open-message-with
{
  $body = @($input)
  $o = new-object -com Outlook.Application
  $mail = $o.CreateItem(0)
  $mail.Subject = $subject
  $mail.Body = ($body -join "`n")
  $inspector = $mail.GetInspector
  $inspector.Display()
}

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

# alias
set-alias e start-emacs
set-alias v gvim
set-alias vi gvim
set-alias vim gvim
set-alias new new-object

set-alias gaa git-add-all
set-alias gca git-commit-all-message

set-alias gst git-status
set-alias gss git-status-shor
set-alias grv git-remote-verbose
set-alias glo git-log-oneline-decorate

# PSReadLine
Import-Module PSReadLine
Set-PSReadlineOption -EditMode Emacs

# Load posh-git example profile
. 'C:\Users\Administrator\posh-git\profile.example.ps1'

