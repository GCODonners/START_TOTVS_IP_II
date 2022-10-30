function main()

    local aNum := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local nCount := 0
    local nNum := 0
    local cNum := ""

    for nCount := 10 to 1 step -1

        cNum += alltrim(str(aNum[nCount])) + " "

    next nCount

    ? cNum

return nil
