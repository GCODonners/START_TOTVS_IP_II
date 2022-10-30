function main()

    local aLetra := {}
    local nOpc := 0
    local cEle := ""
    local lRun := .T.

    aLetra := fillArray()

    showArray(aLetra) //// Mostrando o array para melhor referencia ao usar as buscas

    while lRun

        ACCEPT "Digite um elemento a ser utilizado: " to cEle
        cEle := UPPER(cEle)

        if len(cEle) > 1 .or. EMPTY(cEle)

            ? "INVALID"

        else

            ? "Opcao 1 - Mostrar Array"
            ? "Opcao 2 - Quantidade de ocorrencias do elemento"
            ? "Opcao 3 - Pesquisar existencia e ultima posicao do elemento"
            ? "Opcao 4 - Pesquisar existencia e primeira posicao do elemento"
            INPUT "Digite uma opcao: " to nOpc

            lRun := .F.

        ENDIF

    enddo

    if nOpc = 1

        showArray(aLetra)

    elseif nOpc = 2

        QOUT("")

        findElement(aLetra, cEle)

    elseif nOpc = 3
        
        QOUT("")

        findLast(aLetra, cEle)

    elseif nOpc = 4

        QOUT("")

        findFirst(aLetra, cEle)

    else

        ? "Opcao invalida"

    endif


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


static function showArray(aLetra)

    ? hb_valtoexp(aLetra)

return nil


static function findElement(aLetra, cEle)

    local aStore := {}
    local nCount := 0
    local nStore := 1
    local nSearch := 0
    local cComp := ""
    local nI := 0
    local lRun := .T.
    

    while lRun

        if nStore <= 50

            nSearch := ASCAN(aLetra, cEle, nStore)

            if nSearch = 0

                lRun := .F.

            else
                
                Aadd(aStore, nSearch)
                nStore := nSearch + 1
            ENDIF

        else
            
            lRun := .F.

        endif
        
    enddo

    ? "Ocorrencias do elemento"

    for nCount := 1 to len(aStore)

        QOUT("Ocorrencia " + AllTrim(str(nCount)) + ": " + AllTrim(str(aStore[nCount])))

    next nCount

return nil


static function findLast(aLetra, cEle)

    local nCount := 0
    local nLast := 0
    local lRun := .T.
    local cComp := ""


    while lRun

        for nCount := 50 to 1 step -1

            cComp := aLetra[nCount]

            if cComp = cEle

                nLast := nCount
                exit

            endif

        next nCount

        lRun := .F.

    enddo

    if nLast = 0

        ? "Elemento nao existente"

    else
        
        QOUT("Elemento existe // Ultima ocorrencia na posicao " + AllTrim(str(nCount)))

    endif

return nil


static function findFirst(aLetra, cEle)

    local nFirst := ASCAN(aLetra, cEle)

    if nFirst = 0

        ? "Elemento nao existente"

    else
        
        QOUT("Elemento existe // Primeira ocorrencia na posicao " + AllTrim(str(nFirst)))

    endif

return nil


