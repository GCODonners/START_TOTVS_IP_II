Function Main()

    local aVet  := {"A","M","O","R"}
    local nI    := 0
    local cAux  := ""

    For nI := 1 TO 4

        cAux := aVet[nI]
        aVet[nI] := aVet[5-nI]
        aVet[5-nI] := cAux

        QOUT(hb_valtoexp(aVet))

    NEXT nI
    
    ? "Array foi invertido duas vezes, tendo voltado a sua posiçao original"

Return NIL
