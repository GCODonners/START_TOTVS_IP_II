static function showArray(aNum)

    local nCount := 1
    local cArray := ""

    QOUT("")
    QOUT("Array:")
    for nCount := 1 to len(aNum)

        cArray += AllTrim(str(aNum[nCount])) + " "

    next nCount

    ? cArray

return nil


static function showArrayC(aLetra)

    local nCount := 1
    local cArray := ""
    local bSort := {}

    QOUT("")
    QOUT("Array:")
    for nCount := 1 to len(aLetra)

        cArray += AllTrim(aLetra[nCount]) + " "

    next nCount

    ? cArray

return nil
