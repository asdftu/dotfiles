^Space::#Space

;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input
SetCapsLockState, AlwaysOff

$Insert::return


; Remap Windows + Tab to Alt + Tab.
;LAlt & Tab::AltTab

; swap left command/windows key with left alt
;Capslock::Alt
;LAlt::Ctrl
; add a semicolon in front of this line if you want to disable the windows key

; Remap Windows + Left OR Right to enable previous or next web page
; Use only if swapping left command/windows key with left alt
;Lwin & Left::Send, !{Left}
;Lwin & Right::Send, !{Right}


; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Close windows (cmd + q to Alt + F4)
!q::Send !{F4}

; minimize windows
!h::WinMinimize,a

![::Send !{Left}
!]::Send !{Right}
!a::Send ^a
!b::Send ^b
!c::Send ^c
!d::Send ^d
!e::Send ^e
!f::Send ^f
!g::Send ^g

!i::Send ^i
!j::Send ^j
!k::Send ^k
!l::Send ^l
!m::Send ^m
!n::Send ^n
!o::Send ^o
!p::Send ^p

!r::Send ^r
!s::Send ^s
!t::Send ^t
+!t::Send +^t
!u::Send ^u
!v::Send ^v
!w::Send ^w
!x::Send ^x
!y::Send ^y
!z::Send ^z

LAlt & LButton::Send {Ctrl Down}{LButton}{Ctrl Up}

!Right::
Send {End}
return

*!Right:: ; This handles Shift-Right
Send {Blind}{LAlt Up}{End}
return

!Left::
Send {Home}
return

*!Left:: ; This handles Shift-Left
Send {Blind}{Alt Up}{Home}
return



; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

; We Chat
#IfWinActive, ahk_class WeChatMainWndForPC

; Show Web Developer Tools with cmd + alt + i
!w::Send !{F4}


#IfWinActive

; console
#IfWinActive, ahk_class ConsoleWindowClass

!w::WinClose, ahk_class ConsoleWindowClass


#IfWinActive

