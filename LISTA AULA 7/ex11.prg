SET PROCEDURE TO b_ex9.prg

function main()

    local aNumA := {}
    local aNum := {}
    local nNumA, nNumB := 0
    local nCount := 0
    local cA := ""
    local cB := ""

    for nCount := 1 to 15

        nNumA := hb_randomint(1,50)

        Aadd(aNumA, nNumA)
        
        cA += AllTrim(str(aNumA[nCount])) + " "
        
    next nCount

    ? cA

    aNum := fillArray(aNumA)

    showArray(aNum)


return nil


static function fillArray(aNumA)

    local aNum:= {}
    local nCount := 0
    local nI := 15

    for nCount := 15 to 1 step -1

        Aadd(aNum, aNumA[nI])

        nI--

    next nCount


return aNum
