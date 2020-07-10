Import-Module posh-git
Import-Module oh-my-posh
Import-Module Get-ChildItemColor

Set-Theme Star
#Set-Theme Paradox

Set-PSReadlineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo # 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward # 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward # 设置向下键为前向搜索历史纪录


Set-Alias l Get-ChildItemColor -option AllScope
Set-Alias ll Get-ChildItemColor -option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -option AllScope

function GoBack {Set-Location ..}
function GitStat {git status}
function GitAdd {git add}
function GitCheckout {git checkout}
function GitBranch {git branch}
function GitCommit {
    $content = $args[0]
	git commit -m $content
}
function HttpServe {
    $Port = $args[0]
    http-server --cors --log-ip -p $Port
}
function NotepadPlusPlus {
	$File = $args[0]
	notepad++ $PWD/$File
}
function OpenExplorer {
	$target = $args[0]
	if (-not ([string]::IsNullOrEmpty($target)))
	{
		start $target
	} else 
	{
		start .
	}
}


Set-Alias .. GoBack
Set-Alias gs GitStat
Set-Alias ga GitAdd
Set-Alias gc GitCheckout
Set-Alias gb GitBranch
Set-Alias gm GitCommit


Set-Alias http HttpServe
Set-Alias np NotepadPlusPlus
Set-Alias ofd OpenExplorer

