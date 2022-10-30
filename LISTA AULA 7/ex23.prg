// REQUEST HB_GT_WIN_DEFAULT
function main()

    local aVet := {}
    local nOpc := 0
    local lRun := .T.


    while lRun

        if nOpc < 1 .and. nOpc > 9

            ? "Invalido"

        else
            
            ?
            ? "Opcao 1 - Carregar array"
            ? "Opcao 2 - Exibir array"
            ? "Opcao 3 - Ordenar crescente"
            ? "Opcao 4 - Ordenar decrescente"
            ? "Opcao 5 - Pesquisar valor"
            ? "Opcao 6 - Somatoria dos valores"
            ? "Opcao 7 - Media dos valores"
            ? "Opcao 8 - Embaralhar array"
            ? "Opcao 9 - Pesquisar elementos repetidos"
            INPUT "Digite uma opcao: " to nOpc
            ?
            
        endif

        if nOpc = 1

            QOUT("")

            aVet := fillArray()

        elseif nOpc = 2

            QOUT("")

            showArray(aVet)

        elseif nOpc = 3
            
            QOUT("")

            ascArray(aVet)
            lRun := .F.

        elseif nOpc = 4

            QOUT("")

            descArray(aVet)
            lRun := .F.

        elseif nOpc = 5

            QOUT("")

            findArray(aVet)
            lRun := .F.

        elseif nOpc = 6

            QOUT("")

            sumArray(aVet)
            lRun := .F.

        elseif nOpc = 7

            QOUT("")

            medArray(aVet)
            lRun := .F.

        elseif nOpc = 8

            scrambleArray(aVet)
            lRun := .F.

        elseif nOpc = 9

            QOUT("")

            repeatArray(aVet)
            lRun := .F.

        else

            ? "Opcao invalida"

        endif

    enddo


return nil


static function fillArray()

    local aVet := {}
    local nNum := 0
    local nCount := 0

    for nCount := 1 to 8

        INPUT "Digite um numero: " to nNum
        // nNum := hb_randomint(1, 20)

        Aadd(aVet, nNum)

    next nCount

return aVet


static function showArray(aVet)

    ? hb_valtoexp(aVet)

return nil


static function ascArray(aVet)

    if Empty(aVet)

        ? "Vazio"

    else
        
        ASORT(aVet)
        showArray(aVet)

    endif

return nil


static function descArray(aVet)

    local aShow := {}

    if Empty(aVet)

        ? "Vazio"

    else
        
        aShow := ASORT(aVet,,,{| x,y | x > y })

        ? hb_valtoexp(aShow)
        
    endif 

return nil


static function findArray(aVet)

    local nFind := 0
    local nScan := 0

    INPUT "Digite o numero a ser pesquisado: " to nFind

    if EMPTY(aVet)

        ? "Vazio"

    else
        
        nScan := ASCAN(aVet, nFind)

        if nScan = 0

            ? "Elemento nao encontrado"
        
        else

            QOUT("Elemento encontrado na posicao " + AllTrim(str(nScan)))

        ENDIF

    ENDIF

return nil

static function sumArray(aVet)

    local nCount := 1
    local nSum := 0

    for nCount := 1 to 8

        nSum += aVet[nCount]

    next nCount

    QOUT("Somatoria: " + AllTrim(str(nSum)))

return nil


static function medArray(aVet)

    local nCount := 1
    local nSum := 0

    for nCount := 1 to 8

        nSum += aVet[nCount]

    next nCount

    nSum /= 8

    QOUT("Media: " + AllTrim(str(nSum)))


return nil

static function rlArray(aVet)

    local nNuml, nNumr := 0

    ASORT(aVet)

    nNuml := aVet[1]
    nNumr := aVet[8]

    QOUT("Maior valor: " + AllTrim(str(nNumr)))
    QOUT("Menor valor: " + AllTrim(str(nNuml)))

return nil


static function scrambleArray(aVet)

    local nRandom   := 0
    local nI        := 1
    local nAux      := 0

    for nI := 1 to len(aVet)

        nRandom := INT(random() % len(aVet) + 1)
        nAux := aVet[nI]
        aVet[nI] := aVet[nRandom]
        aVet[nRandom] := nAux

    next nI 

    ? hb_valtoexp(aVet)

return nil


static function repeatArray(aVet)

    local nCount    := 0
    local nRep      := 0
    local nI        := 0
    local nII       := 0
    local nComp     := 0
    local nRun      := 1
    local nCheck    := 1

    for nCount := 1 to 8

        nRep := aVet[nCount]
        nI := 0
        nCheck := 0

        while nCheck <= 8

            nComp := ASCAN(aVet, nRep, nRun)

            if nComp <> 0

                nI++
                nRun := nComp + 1

            endif

            nCheck++

        enddo

        if nI > 1

            QOUT("Elemento " + AllTrim(str(nRep)) + " se repete " + AllTrim(str(nI)) + " vezes.")

            nII++

        endif
    
    next nCount
    
    if nII = 0

        ? "Nenhum elemento se repete"

    endif
       
return nil
