function main()

    local aN := {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}
    local nC := 1
    local nCount := 0
    local nSum := 0

    for nCount := 1 to 10

        nC := 1

        while nC <= 3
            
            nSum := nC + nCount

            aAdd(aN[nCount], nSum)
            nC++

        enddo

    next nCount

    for nCount := 1 to 10

        ? hb_valtoexp(aN[nCount])

    next nCount

return nil
