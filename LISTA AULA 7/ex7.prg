function main()

    local aNum := {}
    local nCount := 0
    local cNum := ""
    local nI := 1

    ASIZE(aNum, 10)

    for nCount := 2 to 20 step 2

        aNum[nI] := nCount

        cNum += alltrim(str(aNum[nI])) + " "

        nI++

    next nCount

    ? cNum

return nil
