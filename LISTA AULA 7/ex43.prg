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

    WAIT "Pressione algo para o proximo passo... "
    ?

//////////////////////////////////////////////////////

    reorderDeck(@a7X3, aMagica)


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

///////// FUNCAO PARA ESCOLHA DE CARTA
static function pickCard(a7X3, cCarta)

    local aCarta := {"A", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"}
    local aNaipe := {CHR(3), CHR(4), CHR(5), CHR(6)}
    local nNaipe := 1
    local nCheck := 0
    local lRun := .T.

    while lRun

        ACCEPT "Digite o numero/letra da carta desejada: " to cCarta
        cCarta := UPPER(cCarta)

        nCheck := ASCAN(aCarta, cCarta)

        if nCheck = 0 .or. EMPTY(cCarta)

            ? "Carta invalida"
            loop
        
        ENDIF

        INPUT "Digite o naipe (1 para Copas, 2 para Ouros, 3 para Paus, 4 para Espadas): " to nNaipe

        if (nNaipe <> 1 .and. nNaipe <> 2 .and. nNaipe <> 3 .and. nNaipe <> 4) .or. EMPTY(nNaipe)

            ? "Naipe invalido"
            loop

        endif

        lRun := .F.

    enddo

    cCarta += aNaipe[nNaipe]

return nil

///////// F) SOLICITA COLUNA E CARTA PARA PREENCHER VETOR DA C
static function reorderDeck(a7X3, aMagica)

    local nCount := 0
    local nC := 1
    local nI := 1
    local nCol := 0
    local nRun := 0
    local cCarta := ""
    local aVet := {}

    pickCard(a7X3, @cCarta)


    while nRun < 3

        CLEAR SCREEN

        ASIZE(aVet, 0)

        if nRun > 0

            ASIZE(a7X3, 0)
            a7X3 := build7x3(aMagica)

        endif

        for nCount := 1 to 7

            ? hb_valtoexp(a7X3[nCount])

        next nCount

        pickColumn(@nCol)

        nC := 1

        for nCount := 1 to 3

            if nC <> nCol

                for nI := 1 to 7

                    Aadd(aVet, a7X3[nI, nC])

                NEXT

            else
                
                for nI := 1 to 7

                    Aadd(aVet, a7X3[nI, nCol])

                NEXT

            endif

            nC++    
                
        next nCount

        nRun++

        ? hb_valtoexp(aVet)
        WAIT "Pressione algo para continuar..."

    enddo


    ? "G) 11o Elemento do vetor 21: ", aVet[11]

return nil
