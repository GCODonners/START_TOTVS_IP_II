function main()

    local aNumA := {}
    local aNumB := {}
    local aNumC := {}
    local nCount := 0
    local nI := 1
    local nNumA := 0
    local nNumB := 0


    for nCount := 1 to 20

        nNumA := hb_randomint(1,99)
        nNumB := hb_randomint(1,99)

        Aadd(aNumA, nNumA)
        Aadd(aNumB, nNumB)

    next nCount

    aNumC := somaArray(aNumA, aNumB)

    QOUT("A" + CHR(9) + CHR(9) + "B" + CHR(9) + CHR(9) + "C")

    for nCount := 1 to 20

        QOUT(alltrim(str(aNumA[nI])) + CHR(9) + CHR(9) + alltrim(str(aNumB[nI])) + CHR(9) + CHR(9) + alltrim(str(aNumC[nI])))

        nI++

    next nCount

return nil



static function somaArray(aNumA, aNumB)

    local aSoma := {}
    local nCount := 0
    local nSoma := 0
    local nI := 1

    for nCount := 1 to 20

        nSoma := aNumA[nI] - aNumB[nI]

        Aadd(aSoma, nSoma)

        nI++

    next nCount


return aSoma
