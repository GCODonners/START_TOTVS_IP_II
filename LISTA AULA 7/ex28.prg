SET PROCEDURE TO b_convert.prg

function main()

    local cNum := ""
    local nConv := 0
    local cConv := ""
    local cModo := ""
    local lRun := .T.

    while lRun

        ACCEPT "Digite B para converter um numero binario, ou D para converter um numero decimal: " to cModo
        cModo := UPPER(cModo)

        if cModo = "B" .or. cModo = "D"

            lRun = .F.

        ENDIF

    enddo

    ACCEPT "Digite o numero desejado: " to cNum

    if cModo = "B"

        nConv := BinToDec(cNum)

        ? alltrim(str(nConv))

    else

        nConv := val(cNum)

        cConv := DecToBin(nConv)

        ? cConv

    endif


return nil
