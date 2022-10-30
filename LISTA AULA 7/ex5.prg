function main()

    local aNum := {}
    local nCount := 0
    local cNum := ""

    ASIZE(aNum, 30)

    for nCount := 1 to 30

        aNum[nCount] := nCount

        cNum += alltrim(str(aNum[nCount])) + " "

    next nCount

    ? cNum

return nil
