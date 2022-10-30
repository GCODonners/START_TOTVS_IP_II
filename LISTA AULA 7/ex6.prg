function main()

    local aNum := {}
    local nCount := 0
    local cNum := ""

    ASIZE(aNum, 30)

    for nCount := 30 to 1 step -1

        aNum[nCount] := nCount

        cNum += alltrim(str(aNum[nCount])) + " "

    next nCount

    ? cNum

return nil
