SET PROCEDURE TO b_ex9.prg

function main()
    
    local aNum := {}
    local nNum := 0
    local nCount := 0

    for nCount := 1 to 10

        nNum := hb_randomint(1,50)

        Aadd(aNum, nNum)

    next nCount
    
    ASORT(aNum)
    
    showArray(aNum)


return nil
