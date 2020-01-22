#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




doError(name=""){
	global PATH_TMP_SCREEN
	if(name="test"){
		
	} else {
		
		send, {printScreen}
		saveClipboardImg(PATH_TMP_SCREEN)
		pushover_message("Default Error",PATH_TMP_SCREEN)
	}
	
}