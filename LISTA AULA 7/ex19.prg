SET PROCEDURE TO b_ex9.prg

function main()

    local aLetra := {}

    aLetra := fillArray()

    showArrayC(aLetra)


return nil


static function fillArray()

    local aFill := {}
    local nCount := 0
    local nFill := 0
    local cFill := ""

    for nCount := 1 to 50

        nFill := hb_randomint(65, 90)

        cFill := CHR(nFill)

        Aadd(aFill, cFill)

    next nCount
    

return aFill
