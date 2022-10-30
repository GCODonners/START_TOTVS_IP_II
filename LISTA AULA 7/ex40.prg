Function Main()

    local aM := {{},{},{},{},{}}
    local nI := 0
    local cString := ""
    
    FOR nI := 1 TO 5 

        aAdd(aM[1], CHR(HB_RandomInt(65,90)))
        aAdd(aM[2], CHR(HB_RandomInt(65,90)))
        aAdd(aM[3], CHR(HB_RandomInt(65,90)))
        aAdd(aM[4], CHR(HB_RandomInt(65,90)))
        aAdd(aM[5], CHR(HB_RandomInt(65,90)))
        
        cString += aM[nI,nI] + " "

    NEXT nI

    
    QOUT(hb_valtoexp(aM[1]))
    QOUT(hb_valtoexp(aM[2]))
    QOUT(hb_valtoexp(aM[3]))
    QOUT(hb_valtoexp(aM[4]))
    QOUT(hb_valtoexp(aM[5]))
    QOUT(cString)

Return NIL
