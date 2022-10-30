SET PROCEDURE TO b_ex9.prg

function main()

    local aNumA := {}
    local aNumB := {}
    local aNum := {}
    local nNumA, nNumB := 0
    local nCount := 0
    local cA := ""
    local cB := ""

    for nCount := 1 to 10

        nNumA := hb_randomint(1,50)
        nNumB := hb_randomint(1,50)

        Aadd(aNumA, nNumA)
        Aadd(aNumB, nNumB)

        cA += AllTrim(str(aNumA[nCount])) + " "
        cB += AllTrim(str(aNumB[nCount])) + " "

    next nCount

    ? cA
    ? cB
    
    aNum := fillArray(aNumA, aNumB)

    showArray(aNum)


return nil


static function fillArray(aNumA, aNumB)

    local aNum := {}
    local nCount := 0
    local nI := 1
    local nII := 1

    for nCount := 1 to 10

        Aadd(aNum, aNumA[nI]) // Index de A

        nI++

        Aadd(aNum, aNumB[nII]) // Index de B

        nII++

    next nCount


return aNum
