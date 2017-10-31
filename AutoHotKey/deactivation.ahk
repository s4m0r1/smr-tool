;現在使用して居ないショートカットです。

;無変換+mでスクロールアップ , でスクロールダウン
;Shift+無変換+mで左にチルト , で右にチルト
;Ctrl+無変換+mで縮小 , で拡大
;無変換+m+nで拡大率リセット
vk1Dsc07B & m::
if GetKeyState(", ",  "P") {
	Send, ^{0}
}else if GetKeyState("Shift",  "P") {
	Send, {Blind}{WheelLeft}
} else {
	Send, {Blind}{WheelDown}
}
return
vk1Dsc07B & ,::
if GetKeyState("m",  "P") {
	Send, ^{0}
}else if GetKeyState("Shift",  "P") {
	Send, {Blind}{WheelRight}b
} else {
	Send, {Blind}{WheelUp}
}
return
