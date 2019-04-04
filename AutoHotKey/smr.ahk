/* AutoHotKey
以前利用していたsmilceさんのAutoHotKeyがめっちゃ壊れるんで必要なものだけ入れて再構築してます。
CapsLockはLCtrlとして使用して下さい(Keyawapなどでバイナリ値を変える)
Blindをいれることにより装飾キーとの同時押しを有効にする
～ 仮想キーコード一覧 ～
無変換:sc07B 変換:sc079 半角/全角:vkF3sc029・vkF4sc029
ひらがな/カタカナ:vkF2sc070 CapsLock:vkF0sc03A
コロン:vkBAsc028 セミコロン:vkBBsc027 カンマ:vkBCsc033 バックスラッシュ:vkE2sc073
*/

;---------------AutoHotKey系----------------
;AutoHotKeyの再起動
sc07B & F5::Reload
;ファイルの読み込み
#include *i function.ahk
#include *i setting.ahk
; #include *i deactivation.ahk

;-----------------基本動作系-----------------
;変換をEnterに
sc079::Enter
;settingから変換キーを抜く

; ;無変換9で-に
; sc07B & 9::Send, {-}

;カタカナ+ひらがなでBS
sc070::BS

;BackSpaceを~BS::return
BS::Del

;無変換変換で半角全角
sc07B & sc079::Send, {vkF3sc029}

;無変換+SpaceでEsc
sc07B & Space::Send, {Esc}

;無変換+tでタブ移動
sc07B & t::
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
sc07B & h::Send, {Blind}{Left}
sc07B & j::Send, {Blind}{Down}
sc07B & k::Send, {Blind}{Up}
sc07B & l::Send, {Blind}{Right}

;無変換+uでHome oでEnd yでPgUp nでPgDn
sc07B & u::Send, {Blind}{Home}
sc07B & o::Send, {Blind}{End}
sc07B & y::Send, {Blind}{PgUp}
sc07B & n::Send, {Blind}{PgDn}

;------------------マウス系------------------
;無変換+fで左クリック
sc07B & f::send, {Blind}{LButton}

;無変換+qでマウス拡張ボタン１
sc07B & q::send, {Blind}{XButton1}

;無変換+eでマウス拡張ボタン2
sc07B & e::send, {Blind}{XButton2}

;-----------------メディア系-----------------
;無変換＋zで音量を下げる xで音量上げる ｃでミュートにする
sc07B & z::Send, {Blind}{Volume_Down}
sc07B & x::Send, {Blind}{Volume_Up}
sc07B & c::Send, {Blind}{Volume_Mute}

;無変換+aで前の曲へ移動 sで曲の再生、停止 dで次の曲へ移動
sc07B & a::Send, {Blind}{Media_Prev}
sc07B & d::Send, {Blind}{Media_Next}
sc07B & s::Send, {Blind}{Media_Play_Pause}

;---------------ファンクションキー------------
;F1
sc07B & 1::Send, {Blind}{F1}
;F2
sc07B & 2::Send, {Blind}{F2}
;F3
sc07B & 3::Send, {Blind}{F3}
;F4
sc07B & 4::Send, {Blind}{F4}
;F5(主にブラウザの再読込に使用)
sc07B & 5::Send, {Blind}{F5}
;F6(主にひらがなに変換する際に使用)
sc07B & 6::Send, {Blind}{F6}
;F7(主にカタカナにするのに利用)
sc07B & 7::send, {Blind}{F7}
;F8
sc07B & 8::Send, {Blind}{F8}
;F9
sc07B & 9::Send, {Blind}{F9}
;F10(主に英語に変換する際に使用)
sc07B & 0::Send, {Blind}{F10}
;F11
sc07B & -::Send, {Blind}{F11}
;F12
sc07B & ^::Send, {Blind}{F12}

;--------------------ESC--------------------
sc07B & p::Send, {Blind}{Esc}

;----------------program---------------
;変換+,で１行コピペ

sc07B & ,::
if GetKeyState("Shift", "P") {
	Send, {End}+{Home}^{x}
} else if GetKeyState("Ctrl", "P") {
	Send, {End}+{Home}
} else {
	Send, {End}+{Home}^{c}
}
return

;とりま仮追加無変換+8で./a.out
