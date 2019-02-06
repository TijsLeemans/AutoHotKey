F1:: ;Ableton Live 10 Suite commands
{
IfWinNotExist ahk_exe Ableton Live 10 Suite.exe
{
	Run, E:\Programs\Ableton\Live 10 Suite\Program\Ableton Live 10 Suite.exe
	ToolTip, Launching Ableton Live 10 Suite.......
	Sleep, 1000
	Tooltip,
	return
}
else
{
	WinActivate ahk_exe Steam.exe
	return
}
}

F2:: ;Chrome commands
{
if WinActive ("ahk_exe chrome.exe")
{
	Send, ^{tab}
}
IfWinNotExist, ahk_exe chrome.exe
{
	Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe 
	ToolTip, Launching Chrome.......
	Sleep, 1000
	Tooltip,
	return
}
else {
	WinActivate, ahk_exe chrome.exe
	return
}
}

F3:: ;Spotify commands
{
IfWinNotExist ahk_exe Spotify.exe
{
	Run, C:\Users\Tijs Leemans\AppData\Roaming\Spotify\Spotify.exe
	ToolTip, Launching Spotify.......
	Sleep, 1000
	Tooltip,
	return
}
else
{
	WinActivate ahk_exe Spotify.exe
	return
}
}

	

Loadcharacter(item, key)
{
IfWinActive, ahk_exe Ableton Live 10 Suite.exe
{
ToolTip, Loading %item%.......
BlockInput, Send
BlockInput, On
send, ^f
sleep 1
send, %item%
sleep 200
send, {Down}
sleep 1
send, {Enter}
sleep 1
send, {Esc}
sleep 1
ToolTip,
BlockInput, off
}
else {
Sendraw, %key%
}
}

Loadfunction(item,key)
{
IfWinActive, ahk_exe Ableton Live 10 Suite.exe
{
ToolTip, Loading %item%.......
BlockInput, Send
BlockInput, On
send, ^f
sleep 1
send, %item%
sleep 200
send, {Down}
sleep 1
send, {Enter}
sleep 1
send, {Esc}
sleep 1
ToolTip,
BlockInput, Off
}
else {
	Send, %key%
}
}

;Loadcharacter function calls. Calls for a preset using a charater key.
	;Loads stock Ableton audio FX.
		Numpad0::Loadcharacter("Looper", 0)
		Numpad1::Loadcharacter("Pedal", 1)
		Numpad2::Loadcharacter("Amp", 2)
		Numpad3::Loadcharacter("Cabinet", 3)
		Numpad4::Loadcharacter("Echo", 4)
		Numpad5::Loadcharacter("Reverb", 5)
		Numpad6::Loadcharacter("Tuner", 6)
		Numpad7::Loadcharacter("EQ Eight", 7)
		Numpad8::Loadcharacter("Compressor", 8)
		Numpad9::Loadcharacter("Glue Compressor", 9)

	;Loads stock Ableton instruments.
		NumpadDiv::Loadcharacter("Korg MS 20 Mini", "/")
		NumpadSub::Loadcharacter("Grand Piano Equal Production", "-")
		NumpadMult::Loadcharacter("Wavetable", "*")
		NumpadDot::Loadcharacter("808 Core Kit", ".")
		NumpadAdd::Loadcharacter("Analog", "+")

;Loadfunction function calls. Calls for a preset using a function key.
	;Loads Stock Ableton instruments.
		NumpadEnter::Loadfunction("Electric", "{Enter}")
