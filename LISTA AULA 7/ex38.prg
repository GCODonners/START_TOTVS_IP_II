function main()

    local aA := {{1, 2, 5}, {3, 4, 6}, {5, 6, 8}}
    local aB := {{}, {}, {}}
    local nCount := 0
    local nL := 0

    for nCount := 1 to 3

        ? hb_valtoexp(aA[nCount])

    next nCount

    for nCount := 1 to 3

        nL := 1

        while nL <= 3
            
            Aadd(aB[nL], aA[nCount, nL])

            nL++

        enddo

    next nCount

    ?
    ? "Resultado: "

    for nCount := 1 to 3

        ? hb_valtoexp(aB[nCount])

    next nCount

return nil
