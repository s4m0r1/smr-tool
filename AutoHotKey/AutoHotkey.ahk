;Insert+DeleteでAutoHotKeyの切り替え
Ins & Del::
Suspend,Toggle
Return

;無変換+F5でAutoHotkeyをReload
vk1Dsc07B & F5::Reload

;変換がEnter
vk1Csc079::Enter

;Shift,Ctrl+変換がBS
Shift & vk1Csc079::Send,{BS}
Ctrl & vk1Csc079::Send,{BS}

;無変換+cでDelete
~c::return
vk1Dsc07B & c::Send,{Del}
c & vk1Dsc07B::Send,{BS}{Del}

;無変換+fで左クリック
vk1Dsc07B & f::Send,{Blind}{LButton}

;無変換+TabでHomeTab
vk1Dsc07B & Tab::Send,{Home}{Tab}

;無変換+BackSpace行頭,行末まで削除
vk1Dsc07B & BS::
If GetKeyState("shift", "P"){
	Send,+{End}{Del}
}else{
	Send,+{Home}{Del}
}
return

;無変換+iで1行切り抜き
vk1Dsc07B & i::
If GetKeyState("shift", "P"){
	Send,{End}+{Home}{Home}^{x}{End}{Home}
}else{
	Send,{End}+{Home}{Del}
}
return

;LAlt＋Enterで2行改行して上に上がる
LAlt & Enter::Send,{Enter 2}{Up}

;無変換+SpaceでEsc
vk1Dsc07B & Space::Send,{Esc}

;無変換+wでAlt＋F4
vk1Dsc07B & w::Send,!{F4}

;無変換+変換で半角/全角
vk1Dsc07B & vk1Csc079::Send,{vkF3sc029}

;LShift+0で|
LShift & 0::Send,{|}

;無変換+hjklでカーソル移動
vk1Dsc07B & h::Send,{Blind}{Left}
vk1Dsc07B & j::Send,{Blind}{Down}
vk1Dsc07B & k::Send,{Blind}{Up}
vk1Dsc07B & l::Send,{Blind}{Right}

;LAlt+hjklで3カーソル移動
LAlt & h::
If GetKeyState("shift", "P"){
	Send,+{Left 3}
}else{
	Send,{Left 3}
}
return
LAlt & j::
If GetKeyState("shift", "P"){
	Send,+{Down 3}
}else{
	Send,{Down 3}
}
return
LAlt & k::
If GetKeyState("shift", "P"){
	Send,+{Up 3}
}else{
	Send,{Up 3}
}
return
LAlt & l::
If GetKeyState("shift", "P"){
	Send,+{Right 3}
}else{
	Send,{Right 3}
}
return

;LAlt+yunoで5カーソル移動
LAlt & y::
If GetKeyState("shift", "P"){
	Send,+{Up 5}
}else{
	Send,{Up 5}
}
return
LAlt & u::
If GetKeyState("shift", "P"){
	Send,+{Left 5}
}else{
	Send,{Left 5}
}
return
LAlt & n::
If GetKeyState("shift", "P"){
	Send,+{Down 5}
}else{
	Send,{Down 5}
}
return
LAlt & o::
If GetKeyState("shift", "P"){
	Send,+{Right 5}
}else{
	Send,{Right 5}
}
return

;無変換+uoでHome,End
vk1Dsc07B & u::Send,{Blind}{Home}
vk1Dsc07B & o::Send,{Blind}{End}

;無変換+rvでPgUp,PgDn
vk1Dsc07B & y::Send,{Blind}{PgUp}
vk1Dsc07B & n::Send,{Blind}{PgDn}

;無変換+,で一行コピー,カット
vk1Dsc07B & ,::
If GetKeyState("shift", "P"){
	Send,{End}+{Home}^{x}
}else{
	Send,{End}+{Home}^{c}
}
return

;無変換+m,.で上下に改行
vk1Dsc07B & m::
If GetKeyState("shift", "P"){
	Send,{Home}{Enter}{Up}
}else{
	Send,{Up}{End}{Enter}
}
return
vk1Dsc07B & .::Send,{End}{Enter}

;Alt＋←→で戻る進む
Alt & Left::Send,{Browser_Back}
Alt & Right::Send,{Browser_Forward}

;無変換+agで戻る進む,無変換+Shift+aで全て削除
vk1Dsc07B & a::
If GetKeyState("shift", "P"){
	Send,^{a}{Del}
}else{
	Send,{Browser_Back}
}
return
vk1Dsc07B & g::Send,{Browser_Forward}

;無変換+;[で英字配列
vk1Dsc07B & vkBBsc027::Send,{`:}
vk1Dsc07B & [::
If GetKeyState("shift", "P"){
	Send,+{]}
}else{
	Send,{]}
}
return

;無変換+数字でファンクションキー
vk1Dsc07B & 1::Send,{Blind}{F1}
vk1Dsc07B & 2::
If GetKeyState("shift", "P"){
	Send,{Blind}{F2}{
}else{
	Send,{Blind}{F2}{Left}{Right}
}
return
vk1Dsc07B & 3::Send,{Blind}{F3}
vk1Dsc07B & 4::Send,{Blind}{F4}
vk1Dsc07B & 5::Send,{Blind}{F5}
vk1Dsc07B & 6::Send,{Blind}{F6}
vk1Dsc07B & 7::Send,{Blind}{F7}
vk1Dsc07B & 8::Send,{Blind}{F8}
vk1Dsc07B & 9::Send,{Blind}{F9}
vk1Dsc07B & 0::Send,{Blind}{F10}
vk1Dsc07B & -::Send,{Blind}{F11}
vk1Dsc07B & ^::Send,{Blind}{F12}

;無変換+zxで音量調整,LAlt＋zでミュート
LAlt & z::Send,{Blind}{Volume_Mute}
vk1Dsc07B & z::Send,{Blind}{Volume_Down}
vk1Dsc07B & x::Send,{Blind}{Volume_Up}

;無変換+vでウインドウを最大化かつ戻す
vk1Dsc07B & v::
WinGet, tmp, MinMax, A
If tmp = 1
	WinRestore, A
Else
	WinMaximize, A
Return

;無変換+qでウインドウを最小化
vk1Dsc07B & q::WinMinimize , A

;無変換+sでWindows+Tab
vk1Dsc07B & s::Send,#{Tab}

;無変換+dでWindows+d
vk1Dsc07B & d::Send,#{d}

;無変換+eでWindows+e
vk1Dsc07B & e::Send,#{e}

;無変換+tでタブ移動
vk1Dsc07B & t::
If GetKeyState("shift", "P"){
	Send,^+{Tab}
}else{
	Send,^{Tab}
}
return

;無変換+矢印でWindows+矢印
vk1Dsc07B & Up::Send,{Blind}#{Up}
vk1Dsc07B & Left::Send,{Blind}#{Left}
vk1Dsc07B & Down::Send,{Blind}#{Down}
vk1Dsc07B & right::Send,{Blind}#{Right}

;LAlt+aでCtrl+Windows+Left
LAlt & a::Send,^#{Left}

;LAlt+fでCtrl+Windows+Right
LAlt & f::Send,^#{Right}

;LAlt+dでCtrl+Windows+d
LAlt & d::Send,^#{d}

;LAlt+eでCtrl+Windows+F4
LAlt & s::Send,^#{F4}

;無変換+rでAlt+Tab
vk1Dsc07B & r::AltTab

;Ctrl+q元の倍率
LCtrl & q::Send,^{0}

;無変換+bでブックマークバー（Chrome用）
vk1Dsc07B & b::Send,+!{b}

;LWindows+LAltでpowershell
LWin & LAlt::SendInput,powershell{Enter}{Slide Up}

;LCtrl+{で{}Enter
LCtrl & {::Send,{End}{{}{Enter}

;LCtrl+;で;Enter
LCtrl & vkBBsc027::
If GetKeyState("vk1Dsc07B", "P"){
	Send,{End}{`;}{Enter}
}else{
	Send,{End}{`;}
}
return

;数字,Spaceの有効化
~1::return
~2::return
~3::return
~4::return
~5::return
~6::return
~7::return
~8::return
~9::return
~0::return

;数字足すBackSpac,無変換で指定文字数削除
1 & BS::Send,{BS 2}
2 & BS::Send,{BS 3}
3 & BS::Send,{BS 4}
4 & BS::Send,{BS 5}
5 & BS::Send,{BS 6}
6 & BS::Send,{BS 7}
7 & BS::Send,{BS 8}
8 & BS::Send,{BS 9}
9 & BS::Send,{BS 10}
0 & BS::Send,{BS 11}
1 & vk1Dsc07B::Send,{Right}{BS 2}
2 & vk1Dsc07B::Send,{Left}{Del 3}
3 & vk1Dsc07B::Send,{Left}{Del 4}
4 & vk1Dsc07B::Send,{Left}{Del 5}
5 & vk1Dsc07B::Send,{Left}{Del 6}
6 & vk1Dsc07B::Send,{Left}{Del 7}
7 & vk1Dsc07B::Send,{Left}{Del 8}
8 & vk1Dsc07B::Send,{Left}{Del 9}
9 & vk1Dsc07B::Send,{Left}{Del 10}
0 & vk1Dsc07B::Send,{Left}{Del 11}

;数字+Enter指定数Enter
1 & Enter::Send,{BS}{End}{Enter}
2 & Enter::Send,{BS}{End}{Enter 2}
3 & Enter::Send,{BS}{End}{Enter 3}
4 & Enter::Send,{BS}{End}{Enter 4}
5 & Enter::Send,{BS}{End}{Enter 5}
6 & Enter::Send,{BS}{End}{Enter 6}
7 & Enter::Send,{BS}{End}{Enter 7}
8 & Enter::Send,{BS}{End}{Enter 8}
9 & Enter::Send,{BS}{End}{Enter 9}
0 & Enter::Send,{BS}{End}{Enter 10}

;数字+TABで指定数TAB
1 & Tab::
If GetKeyState("Shift", "P"){
	Send,{BS}+{Tab}
}else{
	Send,{BS}{Tab}
}
return
2 & Tab::
If GetKeyState("Shift", "P"){
	Send,{BS}+{Tab 2}
}else{
	Send,{BS}{Tab 2}
}
return
3 & Tab::
If GetKeyState("Shift", "P"){
	Send,{BS}+{Tab 3}
}else{
	Send,{BS}{Tab 3}
}
return
4 & Tab::
If GetKeyState("Shift", "P"){
	Send,{BS}+{Tab 4}
}else{
	Send,{BS}{Tab 4}
}
return
5 & Tab::
If GetKeyState("Shift", "P"){
	Send,{BS}+{Tab 5}
}else{
	Send,{BS}{Tab 5}
}
return
6 & Tab::Send,{BS}{Tab 6}
7 & Tab::Send,{BS}{Tab 7}
8 & Tab::Send,{BS}{Tab 8}
9 & Tab::Send,{BS}{Tab 9}
0 & Tab::Send,{BS}{Tab 10}

;Alt+23で画面の明るさ変更
;ここから↓
;画面調整の関数
GetBrightness(){
		WMI := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"
		MonitorBrightness := ComObjGet(WMI).ExecQuery("SELECT * FROM WmiMonitorBrightness WHERE Active=TRUE")

		for i in MonitorBrightness {
				brightness := i.CurrentBrightness
				break
		}

		Return, %brightness%
}

SetBrightness(value){
		WMI := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"
		MonitorBrightnessMethods := ComObjGet(WMI).ExecQuery("SELECT * FROM wmiMonitorBrightNessMethods WHERE Active=TRUE")

		if value < 0
				value := 0
		for i in MonitorBrightnessMethods {
				i.WmiSetBrightness(5, value)
				break
		}
}

;キーボードで明るさの変更
LAlt & F1::SetBrightness(Round(GetBrightness()-10, -1))
LAlt & F2::SetBrightness(Round(GetBrightness()+10, -1))

Tab & q::SoundPlay, C:\Users\n1270253\Documents\SE\dededon.wav
Tab & w::SoundPlay, C:\Users\n1270253\Documents\SE\gugi.wav
Tab & e::SoundPlay, C:\Users\n1270253\Documents\SE\newtype.mp3
Tab & r::SoundPlay, C:\Users\n1270253\Documents\SE\DrakueLvup.wav
Tab & t::SoundPlay, C:\Users\n1270253\Documents\SE\arumage.wav
Tab & y::SoundPlay, C:\Users\n1270253\Documents\SE\neruneruneune.mp3
Tab & u::SoundPlay, C:\Users\n1270253\Documents\SE\gomadare.wav
Tab & i::SoundPlay, C:\Users\n1270253\Documents\SE\ieaaaaaaaaaa.wav
Tab & o::SoundPlay, C:\Users\n1270253\Documents\SE\metometometo.wav
Tab & p::SoundPlay, C:\Users\n1270253\Documents\SE\mituketazelda.mp3
Tab & p::SoundPlay, C:\Users\n1270253\Documents\SE\tin.mp3
Tab & space::SoundPlay, C:\Users\n1270253\Documents\SE\muon.wav
;ここまで↑
