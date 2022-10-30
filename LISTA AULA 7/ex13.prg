SET PROCEDURE TO b_ex9.prg

function main()

    local aNumA := {}
    local aNum := {}
    local nNumA:= 0
    local nCount := 0
    local cA := ""
    local cB := ""

    for nCount := 1 to 8

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

    for nCount := 1 to 8

        nNum := aNumA[nCount] * 3

        Aadd(aNum, nNum)

    next nCount


return aNum
