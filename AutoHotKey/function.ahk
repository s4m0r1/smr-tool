;使用している関数をまとめたものです

;高速安定文字列出力関数
Print(string) {
	work = %ClipboardAll%
	Clipboard = %string%
	Send, ^{v}
	Sleep, 200
	Clipboard = %work%
	return
}

;IME切り替え用の変数
ime := 0

; IMEをオフにする
IME_OFF() {
	get_IME_mode := IME_GET()
	if (get_IME_mode = 1) {
		Send, {vkF3sc029}
	}
	return
}

; IMEをオンにする
IME_ON() {
	get_IME_mode := IME_GET()
	if (get_IME_mode = 0) {
		Send, {vkF3sc029}
	}
	return
}

;元のIMEの状態に戻す
IME_RETURN(tmp) {
	if (tmp = 1) {
		IME_ON()
	} else {
		IME_OFF()
	}
	return
}

; IMEの状態を入手
IME_GET(WinTitle="") {
	ifEqual WinTitle, , SetEnv, WinTitle, A
	WinGet, hWnd, ID, %WinTitle%
	default_IME_wnd := DllCall("imm32\ImmGetDefaultIMEWnd", Uint, hWnd, Uint)
	detect_save := A_DetectHiddenWindows
	DetectHiddenWindows, ON
	SendMessage, 0x283, 0x005, 0, , ahk_id %default_IME_wnd%
	DetectHiddenWindows, %detect_save%
	return ErrorLevel
}
