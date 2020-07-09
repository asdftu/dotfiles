Import-Module posh-git
Import-Module oh-my-posh
Import-Module Get-ChildItemColor

Set-Theme Star

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
function HttpServe {
    $Port = $args[0]
    http-server --cors --log-ip -p $Port
}

Set-Alias .. GoBack
Set-Alias gs GitStat
Set-Alias http HttpServe
