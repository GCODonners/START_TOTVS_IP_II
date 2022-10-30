function main()

    local aA := {{0, 1, 2}, {3, 4, 5}, {6, 7, 8}}
    local nDif := 0
    local nCount := 0

    nDif := (aA[1,1] + aA[2,2] + aA[3,3]) - (aA[1,3] + aA[2,2] + aA[3,1])

    ? "Matriz:"
    for nCount := 1 to 3

        ? hb_valtoexp(aA[nCount])

    next nCount

    ?
    ? "Diferenca entre as diagonais: ", alltrim(str(nDif))


return nil
