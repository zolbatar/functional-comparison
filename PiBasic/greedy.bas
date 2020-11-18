Dim line$(4), used%(500), callId$(500), resourceId$(50), resourceX(50), resourceY(50), callX(500), callY(500)
I% = 0, numCalls% = 0, numResources% = 0
earthRadius = 6367450.0, convertRad = PI / 180.0, convertDeg = 180.0 / PI

DEFPROCAddCall()
    callId$(numCalls%) = line$(0)
    callX(numCalls%) = Val(line$(1))
    callY(numCalls%) = Val(line$(2))
    numCalls% = numCalls% + 1
EndProc

DEFPROCAddResource()
    resourceId$(numResources%)=line$(0)
    resourceX(numResources%)=Val(line$(1))
    resourceY(numResources%)=Val(line$(2))
    numResources%=numResources%+1
EndProc

DEFPROCAddToList()
    If I%=3 Then PROCAddCall()
    If I%=2 Then PROCAddResource()
    I%=0
    line$(0)="":line$(1)="":line$(2)="":line$(3)=""
EndProc

DEFFNatan2(y,x)
    If x > 0.0 Then Return Atn(y/x) Else If y > 0.0 Then Return Atn(y/x) + PI
    Return Atn(y/x) - PI
EndFn

DEFFNCalcDistance(la1,lo1,la2,lo2)
    Local startLat=la1 * convertRad
    Local startLon=lo1 * convertRad
    Local endLat=la2 * convertRad
    Local endLon=lo2 * convertRad
    Local lon=endLon - startLon
    Local lat=endLat - startLat
    Local sinHLat=Sin(lat * 0.5)
    Local sinHLon=Sin(lon * 0.5)
    Local a=(sinHLat * sinHLat) + (Cos(startLat) * Cos(endLat)) * (sinHLon * sinHLon)
    Local c=FNatan2(Sqr(a), Sqr(1.0-a))
    Local d=earthRadius * (c+c)
    Return d
EndFn

DEFPROCResetUsed()
    For A%=0 TO 499
        used%(A%) = 0
    Next A%
EndProc

DEFPROCLoad()
    Local T%=Time
    channel%=OpenIn("DATA")
    I%=0
    Repeat
        a%=BGET# channel%
        If a%=Asc(",") Then I%=I%+1 Else line$(I%) = line$(I%) + Chr$(a%)
        If a%=10 Then PROCAddToList()
    Until Eof# channel%
    Close# channel%
    Print "Imported in ";:Print ((Time-T%)/100.0);:Print " seconds"
EndProc

DEFPROCGreedy()
    For K%=0 TO 99
        total=0.0
        PROCResetUsed()
        Print K%;:Print ": ";
        FOR C%=0 TO (numResources% - 1)
            FOR D%=0 TO 49
                O=100000000.0
                L%=-1
                For A%=0 TO (numCalls% - 1)
                    If used%(A%) = 0 
                        D=FNCalcDistance(resourceX(C%),resourceY(C%),callX(A%),callY(A%))
                        If D < O
                            O=D
                            L%=A%
                        EndIf
                    EndIf
                Next A%
                If L% = -1
                    Print "Not found"
                    End
                EndIf
                used%(L%)=1
                total=total + O
            Next D%
        Next C%
        Print total
    Next K%
EndProc

PROCLoad()
PROCGreedy()
