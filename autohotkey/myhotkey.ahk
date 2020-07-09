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
Capslock::LCtrl
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
#q::Send !{F4}

; minimize windows
#h::WinMinimize,a

#[::Send !{Left}
#]::Send !{Right}
#a::Send ^a
+#a::Send +^a

#b::Send ^b
+#b::Send +^b

#c::Send ^c
+#c::Send +^c

#d::Send ^d
+#d::Send +^d

#e::Send ^e
+#e::Send +^e

#f::Send ^f
+#f::Send +^f

#g::Send ^g
+#g::Send +^g

#i::Send ^i
+#i::Send +^i

#j::Send ^j
+#j::Send +^j

#k::Send ^k
+#k::Send +^k

#l::Send ^l
+#l::Send +^l

#m::Send ^m
+#m::Send +^m

#n::Send ^n
+#n::Send +^n

#o::Send ^o
+#o::Send +^o

#p::Send ^p
+#p::Send +^p

#r::Send ^r
+#r::Send +^r

#s::Send ^s
+#s::Send +^s

#t::Send ^t
+#t::Send +^t
#u::Send ^u
+#u::Send +^u

#v::Send ^v
+#v::Send +^v
#w::Send ^w
+#w::Send +^w
#x::Send ^x
+#x::Send +^x
#y::Send ^y
+#y::Send +^y
#z::Send ^z
+#z::Send +^z

#,::send ^,
#.::send ^.
#/::send ^/
#-::send ^-
#=::send ^=
#`::send ^`

#1::^1
#2::^2
#3::^3
#4::^4
#5::^5
#6::^6
#7::^7
#8::^8
#9::^9
#0::^0
#+1::^+1
#+2::^+2
#+3::^+3
#+4::^+4
#+5::^+5
#+6::^+6
#+7::^+7
#+8::^+8
#+9::^+9
#+0::^+0
#+,::Send {LCtrl down}{LShift down}{,}{LShift up}{LCtrl up}
#+.::^+.


#Right::
Send {End}
return

*#Right:: ; This handles Shift-Right
Send {Blind}{LAlt Up}{End}
return

#Left::
Send {Home}
return

*#Left:: ; This handles Shift-Left
Send {Blind}{Alt Up}{Home}
return

; --------------------------------------------------------------
; Windows specific
; --------------------------------------------------------------
LWIN & Tab::AltTab
LWIN & LButton::Send {Ctrl Down}{LButton}{Ctrl Up}

!p::Send #p
!r::Send #r
!e::Send #e
!x::Send #x
RAlt::Del

;~LWin Up:: return
#Space::Send !{Space}



; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

+#'::

WinGetClass, Var ,A

MsgBox ahk_class "%Var%"

Return

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

; applications cmd + w close window
#IfWinActive, ahk_class WeChatMainWndForPC
#w::Send !{F4}
#IfWinActive

#IfWinActive, ahk_class TFoxMainFrm.UnicodeClass
#w::Send !{F4}
#IfWinActive

; console
#IfWinActive, ahk_class ConsoleWindowClass
#w::WinClose, ahk_class ConsoleWindowClass
#IfWinActive

