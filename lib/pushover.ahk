#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


PUSHOVER_DIR = C:\Users\User\Desktop\work\study\autohotkey\autohotkey\module\message



pushover_message(message, file = ""){
	global PUSHOVER_DIR
	
	if(file = ""){
		run %comspec% "/c cd %PUSHOVER_DIR% & pushover.pyc `"%message%",,Hide
	} else {
		run %comspec% "/c cd %PUSHOVER_DIR% & pushover.pyc `"%message%`" %file%",,Hide
	}
}