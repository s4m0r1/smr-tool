/* AutoHotKey
以前利用していたsmilceさんのAutoHotKeyがめっちゃ壊れるんで必要なものだけ入れて再構築してます。
CapsLockはLCtrlとして使用して下さい(Keyawapなどでバイナリ値を変える)
Blindをいれることにより装飾キーとの同時押しを有効にする
～ 仮想キーコード一覧 ～
無変換:vk1Dsc07B 変換:vk1Csc079 半角/全角:vkF3sc029・vkF4sc029
ひらがな/カタカナ:vkF2sc070 CapsLock:vkF0sc03A
コロン:vkBAsc028 セミコロン:vkBBsc027 カンマ:vkBCsc033 バックスラッシュ:vkE2sc073
*/

;---------------AutoHotKey系----------------
;AutoHotKeyの再起動
vk1Dsc07B & F5::Reload
;ファイルの読み込み
#include *i function.ahk
#include *i setting.ahk
; #include *i deactivation.ahk

;-----------------基本動作系-----------------
;変換をEnterに
vk1Csc079::Enter
;settingから変換キーを抜く

; ;無変換9で-に
; vk1Dsc07B & 9::Send, {-}

;カタカナ+ひらがなでBS
vkF2sc070::BS

;BackSpaceを~BS::return
BS::Del

;無変換変換で半角全角
vk1Dsc07B & vk1Csc079::Send, {vkF3sc029}

;無変換+SpaceでEsc
vk1Dsc07B & Space::Send, {Esc}

;無変換+tでタブ移動
vk1Dsc07B & t::
if GetKeyState("Shift", "P") || GetKeyState("Ctrl", "P") {
  Send, ^{PgUp}
} else {
  Send, ^{PgDn}
}
return

;他の人が使っても大丈夫なようにする
Ins & del::Suspend, Toggle

;-----------------入力動作系-----------------
;

;無変換+hjklでvimのようなカーソル移動(無変換キー使用)
vk1Dsc07B & h::Send, {Blind}{Left}
vk1Dsc07B & j::Send, {Blind}{Down}
vk1Dsc07B & k::Send, {Blind}{Up}
vk1Dsc07B & l::Send, {Blind}{Right}

;無変換+uでHome oでEnd yでPgUp nでPgDn
vk1Dsc07B & u::Send, {Blind}{Home}
vk1Dsc07B & o::Send, {Blind}{End}
vk1Dsc07B & y::Send, {Blind}{PgUp}
vk1Dsc07B & n::Send, {Blind}{PgDn}

;------------------マウス系------------------
;無変換+fで左クリック
vk1Dsc07B & f::send, {Blind}{LButton}

;無変換+qでマウス拡張ボタン１
vk1Dsc07B & q::send, {Blind}{XButton1}

;無変換+eでマウス拡張ボタン2
vk1Dsc07B & e::send, {Blind}{XButton2}

;-----------------メディア系-----------------
;無変換＋zで音量を下げる xで音量上げる ｃでミュートにする
vk1Dsc07B & z::Send, {Blind}{Volume_Down}
vk1Dsc07B & x::Send, {Blind}{Volume_Up}
vk1Dsc07B & c::Send, {Blind}{Volume_Mute}

;無変換+aで前の曲へ移動 sで曲の再生、停止 dで次の曲へ移動
vk1Dsc07B & a::Send, {Blind}{Media_Prev}
vk1Dsc07B & d::Send, {Blind}{Media_Next}
vk1Dsc07B & s::Send, {Blind}{Media_Play_Pause}

;---------------ファンクションキー------------
;F1
vk1Dsc07B & 1::Send, {Blind}{F1}
;F2
vk1Dsc07B & 2::Send, {Blind}{F2}
;F3
vk1Dsc07B & 3::Send, {Blind}{F3}
;F4
vk1Dsc07B & 4::Send, {Blind}{F4}
;F5(主にブラウザの再読込に使用)
vk1Dsc07B & 5::Send, {Blind}{F5}
;F6(主にひらがなに変換する際に使用)
vk1Dsc07B & 6::Send, {Blind}{F6}
;F7(主にカタカナにするのに利用)
vk1Dsc07B & 7::send, {Blind}{F7}
;F8
vk1Dsc07B & 8::Send, {Blind}{F8}
;F9
vk1Dsc07B & 9::Send, {Blind}{F9}
;F10(主に英語に変換する際に使用)
vk1Dsc07B & 0::Send, {Blind}{F10}
;F11
vk1Dsc07B & -::Send, {Blind}{F11}
;F12
vk1Dsc07B & ^::Send, {Blind}{F12}

;--------------------ESC--------------------
vk1Dsc07B & p::Send, {Blind}{Esc}

;----------------program---------------
;変換+,で１行コピペ

vk1Dsc07B & ,::
if GetKeyState("Shift", "P") {
	Send, {End}+{Home}^{x}
} else if GetKeyState("Ctrl", "P") {
	Send, {End}+{Home}
} else {
	Send, {End}+{Home}^{c}
}
return

;とりま仮追加無変換+8で./a.out
