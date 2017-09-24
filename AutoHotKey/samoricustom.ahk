;以前利用していたtoriさんのAutoHotKeyがめっちゃ壊れるんで必要なものだけ入れて再構築してます。
;尚原則CapsKeyはCtrlとして使用する（Keyawapなどで入れ替え)
;無変換キーは vk1Dsc07B 変換キー vk1Csc079

;---------------AutoHotKey系---------------
;リロード
vk1Dsc07B & F5::Reload

;----------------入力動作系-----------------
;vimのようなカーソル移動（無変換キー使用)
;Blindをいれることにより無変換を修飾キーにする
vk1Dsc07B & h::Send,{Blind}{Left}
vk1Dsc07B & j::Send,{Blind}{Down}
vk1Dsc07B & k::Send,{Blind}{Up}
vk1Dsc07B & l::Send,{Blind}{Right}

;1行選択


;無変換＋Fで左クリック
vk1Dsc07B & f::send,{Blind}{LButton}

;-----------------メディア系----------------
;無変換＋ｚｘで音量上げ下げｃでミュート
vk1Dsc07B & z::Send,{Blind}{Volume_Down}
vk1Dsc07B & x::Send,{Blind}{Volume_Up}
vk1Dsc07B & c::Send,{Blind}{Volume_Mute}

;無変換+ASDで曲の再生や次の曲へ移動
vk1Dsc07B & a::Send,{Blind}{Media_Prev}
vk1Dsc07B & d::Send,{Blind}{Media_Next}
vk1Dsc07B & s::Send,{Blind}{Media_Play_Pause}

;-----------------TestDebug----------------
vk1Dsc07B & q::
	; 退避
	clipboard_backup = %ClipboardAll%

	; 先頭まで選択
	Send +{Home}

	; 選択範囲を読み取る
	Clipboard :=
	Send ^c
	ClipWait, 1
	selected := Clipboard

	; クリップボードの内容を復元
	Clipboard := clipboard_backup

	; 先頭の一文字を取り出す
	c := SubStr(selected, 1, 1)

	; インデント文字かどうかで分岐
	If (c = " " || c = "`t") {
		Send ^+{Right} ; 単語単位の移動を利用して移動
	}

	; 選択を解除
	Send {Left}
	Return
