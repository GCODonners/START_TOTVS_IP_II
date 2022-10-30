function main()

    local aDado := {}
    local cDado := ""
    local nCount := 0
    local nI := 9

    for nCount := 1 to 8

        ACCEPT "Digite um elemento a ser inserido: " to cDado 

        Aadd(aDado, cDado)

    next nCount

    ? hb_valtoexp(aDado)

    WAIT "Aperte algo para inverter"

    for nCount := 8 to 1 step -1

        Aadd(aDado, aDado[nCount])

    next nCount

    for nCount := 1 to 8

        aDado[nCount] = aDado[nI]

        nI++

    next nCount

    ASIZE(aDado, 8)
    
    ? hb_valtoexp(aDado)

return nil
