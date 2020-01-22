#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.






waitImgClick(options,sec){
	
	x1 := defaultValue(options,"x1",0)
	y1 := defaultValue(options,"y1",0)
	x2 := defaultValue(options,"x2",A_ScreenWidth*2)
	y2 := defaultValue(options,"y2",A_ScreenHeight)
	perc := defaultValue(options,"perc",100)
	img := options.img
	
	txt = %x1%, %y1%, %x2%, %y2%, %perc%, %img%
	
	;FileDelete, appLog.txt
	;fileappend, %txt%, appLog.txt
	start := A_TickCount
	timeout := start + sec * 1000
	loop {
		if( A_TickCount >= timeout ) {
			doError()
			break
		}
		ImageSearch, vx, vy, %x1%, %y1% , %x2%, %y2%, *%perc% %img%
		if(ErrorLevel = 0){
			MouseMove, vx, vyPrintScreen
			MouseClick
			break
		}
	}
}


saveClipboardImg(path){
	global CLIPBOARD_MODULE
	run %comspec% "/k %CLIPBOARD_MODULE% %path%",,Hide
	
}

defaultValue(obj,key,defaultValue){
	return obj[key] = "" ? defaultValue : obj[key]
}

