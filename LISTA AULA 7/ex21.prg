SET PROCEDURE TO b_ex9.prg

function main()

    local aLetra := {}

    aLetra := fillArray()

    showArrayC(aLetra)

return nil


static function fillArray()

    local aFill := {}
    local aCheck := {}
    local lCheck
    local nCount := 0
    local nFill := 0
    local cFill := ""

    for nCount := 1 to 12

        nFill := hb_randomint(97, 122)

        cFill := CHR(nFill)

        if Empty(aFill)

            Aadd(aFill, cFill)
            Aadd(aCheck, cFill)

        else
            
            lCheck := checkRepeat(aCheck, cFill)

            if lCheck = .F.

                Aadd(aFill, cFill)
                Aadd(aCheck, cFill)
            
            else

                nCount--

            endif
        
        endif
        
    next nCount
    

return aFill


static function checkRepeat(aCheck, cFill)

    local lRepeat := .F.
    local nChar := 0
    local nCount := 0

    for nCount := 1 to len(aCheck)

        nChar := ASCAN(aCheck, cFill)

        if nChar <> 0

            lRepeat := .T.

        else
            
            lRepeat := .F.

        endif

    next nCount

return lRepeat




