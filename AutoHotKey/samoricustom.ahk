;以前利用していたtoriさんのAutoHotKeyがめっちゃ壊れるんで必要なものだけ入れて再構築してます。
;尚原則CapsKeyはCtrlとして使用する（Keyawapなどで入れ替え)
;無変換キーは vk1Dsc07B 変換キー vk1Csc079

;---------------AutoHotKey系---------------
;リロード
vk1Dsc07B & F5::Reload


;vimのようなカーソル移動（無変換キー使用)
;Blindをいれることにより無変換を修飾キーにする
vk1Dsc07B & h::Send,{Blind}{Left}
vk1Dsc07B & j::Send,{Blind}{Down}
vk1Dsc07B & k::Send,{Blind}{Up}
vk1Dsc07B & l::Send,{Blind}{Right}

;無変換＋Fで左クリック
vk1Dsc07B & f::send,{Blind}{LButton}

;無変換＋ｚｘで音量上げ下げｃでミュート
vk1Dsc07B & z::Send,{Blind}{Volume_Down}
vk1Dsc07B & x::Send,{Blind}{Volume_Up}
vk1Dsc07B & c::Send,{Blind}{Volume_Mute}

;無変換+ASDで曲の再生や次の曲へ移動
vk1Dsc07B & a::Send,{Blind}{Media_Prev}
vk1Dsc07B & d::Send,{Blind}{Media_Next}
vk1Dsc07B & s::Send,{Blind}{Media_Play_Pause}
