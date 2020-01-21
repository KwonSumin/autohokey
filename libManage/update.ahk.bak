#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




downloadLib(pathDir){
	importArr := getImportTarget()

	loop % importArr.length()
	{
		path := importArr[A_Index]
		pos := inStr(path,"/",0,0)
		last := pos +1
		fName := subStr(path,last)
		FileCreateDir %A_MyDocuments%\AutoHotkey\Lib
		FileCreateDir, %pathDir%
		UrlDownloadToFile, %path%, %pathDir%\%fName%
	}
}

getImportTarget(){
	iniread, out, config.ini, target
	rs := []
	arr := StrSplit(out,"`n")
	length := arr.length()
	Loop, %length%
	{
		t := arr[A_Index]
		
		n := SubStr(t,InStr(t,"=")+1)
		rs.Push(n)
	}
	return rs
}