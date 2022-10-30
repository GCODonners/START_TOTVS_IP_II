
function main()

    local aBaralho := {}
    local aMagica := {}
    local a7X3 := {}
    local nCount := 0

    buildCards(@aBaralho)

    ? "A) Baralho: "
    ? hb_valtoexp(aBaralho)

    WAIT "Pressione algo para embaralhar... "
    ?

/////////////////////////////////////////////////////

    scrambleCards(@aBaralho)

    ? "B) Baralho embaralhado: "
    ? hb_valtoexp(aBaralho)

    WAIT "Pressione algo para montar o baralho do truque... "
    ?

//////////////////////////////////////////////////////

    aMagica := buildMagic(aBaralho)

    ? "C) Baralho pronto: "
    ? hb_valtoexp(aMagica)

    WAIT "Pressione algo para inverter o baralho... "
    ?

//////////////////////////////////////////////////////

    a7X3 := build7x3(aMagica)

    ? "D) Vetor 7x3: "

    for nCount := 1 to 7

        ? hb_valtoexp(a7X3[nCount])

    next nCount

    WAIT "Memorize a carta desejada, e pressione algo para continuar "
    ?

//////////////////////////////////////////////////////

    reorderDeck(@a7X3)


return nil

////////////////////////////////////////  FUNCOES  ////////////////////////////////////////

///////// A) MONTAR BARALHO
static function buildCards(aBaralho)

    aBaralho := {       "A"+CHR(3) , "A"+CHR(4) , "A"+CHR(5) , "A"+CHR(6) , ;
                        "2"+CHR(3) , "2"+CHR(4) , "2"+CHR(5) , "2"+CHR(6) , ;
                        "3"+CHR(3) , "3"+CHR(4) , "3"+CHR(5) , "3"+CHR(6) , ;
                        "4"+CHR(3) , "4"+CHR(4) , "4"+CHR(5) , "4"+CHR(6) , ;
                        "5"+CHR(3) , "5"+CHR(4) , "5"+CHR(5) , "5"+CHR(6) , ;
                        "6"+CHR(3) , "6"+CHR(4) , "6"+CHR(5) , "6"+CHR(6) , ;
                        "7"+CHR(3) , "7"+CHR(4) , "7"+CHR(5) , "7"+CHR(6) , ;
                        "8"+CHR(3) , "8"+CHR(4) , "8"+CHR(5) , "8"+CHR(6) , ;
                        "9"+CHR(3) , "9"+CHR(4) , "9"+CHR(5) , "9"+CHR(6) , ;
                        "10"+CHR(3) , "10"+CHR(4) , "10"+CHR(5) , "10"+CHR(6) , ;
                        "J"+CHR(3) , "J"+CHR(4) , "J"+CHR(5) , "J"+CHR(6) , ;
                        "Q"+CHR(3) , "Q"+CHR(4) , "Q"+CHR(5) , "Q"+CHR(6) , ;
                        "K"+CHR(3) , "K"+CHR(4) , "K"+CHR(5) , "K"+CHR(6) }


return nil

///////// B) EMBARALHAR CARTAS
static function scrambleCards(aBaralho)

    local nRandom   := 0
    local nI        := 1
    local nAux      := 0

    for nI := 1 to len(aBaralho)

        nRandom := INT(random() % len(aBaralho) + 1)
        nAux := aBaralho[nI]
        aBaralho[nI] := aBaralho[nRandom]
        aBaralho[nRandom] := nAux

    next nI 
    
return nil

///////// C) MONTAR BARALHO 21 CARTAS
static function buildMagic(aBaralho)

    local aCartas := {}
    local nCount := 0

    for nCount := 1 to 21

        Aadd(aCartas, aBaralho[nCount])

    next nCount


return aCartas

///////// D) VETOR 7X3
static function build7x3(aMagica)

    local nC := 1
    local nI := 21
    local nCount := 0
    local aCartas := {{}, {}, {}, {}, {}, {}, {}}

    for nCount := 1 to 7

        nC := 1

        while nC <= 3

            Aadd(aCartas[nCount], aMagica[nI])
            
            nC++
            nI--

        enddo

    next nCount

return aCartas

///////// FUNCAO PARA ESCOLHA DE COLUNA
static function pickColumn(nCol)

    local lRun := .T.

    while lRun

        INPUT "Digite a coluna desejada: " to nCol

        if nCol < 1 .or. nCol > 3 .or. EMPTY(nCol)

            ? "Coluna Invalida"

        else
            
            lRun := .F.

        ENDIF

    enddo

return nil

///////// F) SOLICITA COLUNA
static function reorderDeck(a7X3)

    local nCount := 0
    local nCol := 0
    local nRun := 0
    local cCarta := ""
    local aBaralho := {}
    local aMagica := {}

    while nRun < 3

        CLEAR SCREEN

        if nRun > 0

            aMagica := buildMagic(aBaralho)
            a7X3 := build7x3(aMagica)

        endif

        for nCount := 1 to 7

            ? hb_valtoexp(a7X3[nCount])

        next nCount

        pickColumn(@nCol)

        aBaralho := doTrick(a7X3, nCol)

        WAIT "Aperte para continuar"

        nRun++

    enddo


    ? "G) Carta escolhida: ", aBaralho[11]

return nil


///////// REORDENA
static function doTrick(a7X3, nCol)

    local nI := 1
    local nCount := 0
    local aCartas := ARRAY(21)

    if nCol == 1

        for nCount := 1 to 7

            aCartas[nCount] := a7X3[nCount][2]
            aCartas[nCount+7] := a7X3[nCount][1]
            aCartas[nCount+14] := a7X3[nCount][3]

        next

    elseif nCol == 3
    
        for nCount := 1 to 7

            aCartas[nCount] := a7X3[nCount][1]
            aCartas[nCount+7] := a7X3[nCount][3]
            aCartas[nCount+14] := a7X3[nCount][2]

        next

    else
        
        for nCount := 1 to 7

            aCartas[nCount] := a7X3[nCount][2]
            aCartas[nCount+7] := a7X3[nCount][1]
            aCartas[nCount+14] := a7X3[nCount][3]

        next

    endif

    ? hb_valtoexp(aCartas)

return aCartas
