﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#include lib/pushover.ahk
#include lib/imgUtils.ahk
#include lib/members.ahk
#include lib/common.ahk


obj := {"img":"./test.bmp","x1":1920,"h2":300,"x2":2200,"perc":70}

waitImgClick(obj,3)



exitapp