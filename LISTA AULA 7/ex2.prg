function main()

    local aNum := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local nCount := 0
    local cNum := ""

    for nCount := 1 to 10

        cNum += alltrim(str(aNum[nCount])) + " "

    next nCount

    ? cNum

return nil
