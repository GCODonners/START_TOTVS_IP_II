SET PROCEDURE TO b_ex9.prg

function main()

    local aNumA := {}
    local aNum := {}
    local nNumA:= 0
    local nCount := 0
    local cA := ""

    for nCount := 1 to 5

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
    local nNum := 0
    local nCount := 0

    for nCount := 1 to 5

        nNum := aNumA[nCount] * -1

        Aadd(aNum, nNum)

    next nCount


return aNum
