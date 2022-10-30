function BinToDec( cString )

   local nNumber := 0, nX
   local cNewString := AllTrim( cString )
   local nLen := Len( cNewString )

   for nX := 1 to nLen

      nNumber += ( At( SubStr( cNewString, nX, 1 ), "01" ) - 1 ) * ( 2 ^ ( nLen - nX ) )

   next nX

return nNumber

function DecToBin( nNumber )

   local cNewString := ""
   local nTemp

   While nNumber > 0

      nTemp := nNumber % 2

      cNewString := hb_BSubStr( "01", nTemp + 1, 1 ) + cNewString

      nNumber := Int( ( nNumber - nTemp ) / 2 )

   enddo

return cNewString


Function isNum(nNum)

    local nI := 0

    IF len(nNum) < 1

      RETURN .F.

    ENDIF

        FOR nI := 1 to len(nNum)

            IF !IsDigit(SubStr(nNum, nI , 1)) .AND. !SubStr(nNum, nI , 1) == "." .AND. !SubStr(nNum, nI , 1) == "-"

               RETURN .F.

            ENDIF

        NEXT nI

RETURN .T.
