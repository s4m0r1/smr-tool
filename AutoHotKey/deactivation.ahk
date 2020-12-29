;現在使用していないショートカットです。

;無変換+mでスクロールアップ , でスクロールダウン
;Shift+無変換+mで左にチルト , で右にチルト
;Ctrl+無変換+mで縮小 , で拡大
;無変換+m+nで拡大率リセット
sc07B & m::
if GetKeyState(", ",  "P") {
	Send, ^{0}
}else if GetKeyState("Shift",  "P") {
	Send, {Blind}{WheelLeft}
} else {
	Send, {Blind}{WheelDown}
}
return

sc07B & ,::
if GetKeyState("m",  "P") {
	Send, ^{0}
}else if GetKeyState("Shift",  "P") {
	Send, {Blind}{WheelRight}b
} else {
	Send, {Blind}{WheelUp}
}
return

無変換+1でs4m0r1
sc07B & 1::
ime := IME_GET()
IME_OFF()
Print("s4m0r1")
IME_RETURN(ime)
return

sc07B & 8::
Send, {Enter}
Sleep, 500
SendInput, ./a.out{Slide Up}
Sleep, 500
Send, {Enter}
return
