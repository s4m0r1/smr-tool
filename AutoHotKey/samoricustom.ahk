/* AutoHotKey
以前利用していたsmilceさんのAutoHotKeyがめっちゃ壊れるんで必要なものだけ入れて再構築してます。
尚原則CapsKeyはCtrlとして使用する(Keyawapなどで入れ替え)
Blindをいれることにより装飾キーとの同時押しを有効にする
無変換キー:vk1Dsc07B 変換キー:vk1Csc079 半角/全角:vkF3sc029
*/

;---------------AutoHotKey系---------------
;AutoHotKeyの再起動
vk1Dsc07B & F5::Reload

;----------------入力動作系------------------
;無変換+hjklでvimのようなカーソル移動(無変換キー使用)
vk1Dsc07B & h::Send,{Blind}{Left}
vk1Dsc07B & j::Send,{Blind}{Down}
vk1Dsc07B & k::Send,{Blind}{Up}
vk1Dsc07B & l::Send,{Blind}{Right}

;無変換+nでHome .でEnd
vk1Dsc07B & n::Send,{Blind}{Home}
vk1Dsc07B & .::Send,{Blind}{End}

;無変換+SpaceでEsc
vk1Dsc07B & Space::Send,{Esc}

;無変換+mでスクロールアップ ,でスクロールダウン
;Shift+無変換+mで左にチルト ,で右にチルト
;Ctrl+無変換+mで縮小 ,で拡大
;無変換+m+nで拡大率リセット
vk1Dsc07B & m::
if GetKeyState(",", "P") {
	Send,^{0}
}else if GetKeyState("Shift", "P") {
	Send,{Blind}{WheelLeft}
} else {
	Send,{Blind}{WheelDown}
}
return
vk1Dsc07B & ,::
if GetKeyState("m", "P") {
	Send,^{0}
}else if GetKeyState("Shift", "P") {
	Send,{Blind}{WheelRight}
} else {
	Send,{Blind}{WheelUp}
}
return

;無変換+fで左クリック
vk1Dsc07B & f::send,{Blind}{LButton}

;無変換+qでマウス拡張ボタン１
vk1Dsc07B & q::send,{Blind}{XButton1}

;無変換+eでマウス拡張ボタン2
vk1Dsc07B & e::send,{Blind}{XButton2}

;-----------------メディア系-----------------
;無変換＋zで音量を下げる xで音量上げる ｃでミュートにする
vk1Dsc07B & z::Send,{Blind}{Volume_Down}
vk1Dsc07B & x::Send,{Blind}{Volume_Up}
vk1Dsc07B & c::Send,{Blind}{Volume_Mute}

;無変換+aで前の曲へ移動 sで曲の再生、停止 dで次の曲へ移動
vk1Dsc07B & a::Send,{Blind}{Media_Prev}
vk1Dsc07B & d::Send,{Blind}{Media_Next}
vk1Dsc07B & s::Send,{Blind}{Media_Play_Pause}
