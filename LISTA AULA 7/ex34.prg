Function Main()

    local cModo := ""

    while cModo <> "1" .AND. cModo <> "2"

        Accept "Se voce deseja traduzir a palavra para Morse, digite [1] se deseja traduzir Morse para Letra, digite [2]: " TO cModo

    enddo

    if cModo == "1"

        letterMorse()

    ELSEif cModo == "2"

        morseLetter()

    endif

Return NIL


Function letterMorse()

    local nI         := 0 
    local nJ         := 0
    local cAux       := ""
    local cRes := ""
    local aMorse     := {   { "A" , ".-"} , ;
                            { "B" , "-..."} , ;
                            { "C" , "-.-."} , ;
                            { "D" , "-.."} , ;
                            { "E" , "."} , ;
                            { "F" , "..-."} , ;
                            { "G" , "--."} , ;
                            { "H" , "...."} , ;
                            { "I" , ".."} , ;
                            { "J" , ".---"} , ;
                            { "K" , "-.-"} , ;
                            { "L" , ".-.."} , ;
                            { "M" , "--"} , ;
                            { "N" , "-."} , ;
                            { "O" , "---"} , ;
                            { "P" , ".--."} , ;
                            { "Q" , "--.-"} , ;
                            { "R" , ".-."} , ;
                            { "S" , "..."} , ;
                            { "T" , "-"} , ;
                            { "U" , "..-"} , ;
                            { "V" , "...-"} , ;
                            { "W" , ".--"} , ;
                            { "X" , "-..-"} , ;
                            { "Y" , "-.--"} , ;
                            { "Z" , "--.."} , ;
                            { "1" , ".----"} , ;
                            { "2" , "..---"} , ;
                            { "3" , "...--"} , ;
                            { "4" , "....-"} , ;
                            { "5" , "....."} , ;
                            { "6" , "-...."} , ;
                            { "7" , "--..."} , ;
                            { "8" , "---.."} , ;
                            { "9" , "----."} , ;
                            { "0" , "-----"} , ;
                            { "." , ".-.-.-"} , ;
                            { "?" , "..--.."} , ;
                            { "/" , "-..-."} , ;
                            { "-" , "-....-"} , ;
                            { "(" , "-.--."} , ;
                            { ")" , "-.--.-"}, ;
                            { " " , "/"} }

    while Len(cAux) < 1

        ACCEPT "Digite a frase a ser traduzida para morse: " TO cAux

    enddo

    cAux := Upper(cAux)

    for nJ := 1 TO len(cAux)

        for nI := 1 TO len(aMorse)

            if aMorse[nI, 1] == SubStr(cAux, nJ , 1)

                QOUT(SubStr(cAux, nJ , 1) + " = " + aMorse[nI][2])
                cRes += aMorse[nI][2] + " " 

            endif

        next nI

    next nJ

    qout("Morse: " , cRes)

Return NIL

Function morseLetter()

    local nI            := 1 
    local nJ            := 0
    local cAux          := ""
    local cRes          := ""
    local lLogico       := .T.
    local aMorse        := {{ "A" , ".-"} , ;
                            { "B" , "-..."} , ;
                            { "C" , "-.-."} , ;
                            { "D" , "-.."} , ;
                            { "E" , "."} , ;
                            { "F" , "..-."} , ;
                            { "G" , "--."} , ;
                            { "H" , "...."} , ;
                            { "I" , ".."} , ;
                            { "J" , ".---"} , ;
                            { "K" , "-.-"} , ;
                            { "L" , ".-.."} , ;
                            { "M" , "--"} , ;
                            { "N" , "-."} , ;
                            { "O" , "---"} , ;
                            { "P" , ".--."} , ;
                            { "Q" , "--.-"} , ;
                            { "R" , ".-."} , ;
                            { "S" , "..."} , ;
                            { "T" , "-"} , ;
                            { "U" , "..-"} , ;
                            { "V" , "...-"} , ;
                            { "W" , ".--"} , ;
                            { "X" , "-..-"} , ;
                            { "Y" , "-.--"} , ;
                            { "Z" , "--.."} , ;
                            { "1" , ".----"} , ;
                            { "2" , "..---"} , ;
                            { "3" , "...--"} , ;
                            { "4" , "....-"} , ;
                            { "5" , "....."} , ;
                            { "6" , "-...."} , ;
                            { "7" , "--..."} , ;
                            { "8" , "---.."} , ;
                            { "9" , "----."} , ;
                            { "0" , "-----"} , ;
                            { " " , "/"}}



        while lLogico

            Accept "Digite os caracteres Morse (um a um), e pressione ENTER para continuar: " TO cAux

            for nI := 1 TO len(aMorse)

                if cAux == aMorse[nI,2]

                    QOUT(SubStr(cAux, nJ , 1) , " = " , aMorse[nI][1])
                    cRes += aMorse[nI,1] 

                endif

                if cAux == ""

                    lLogico := .F.

                endif

            next nI

        enddo


    qout("Traducao: " , cRes)

Return NIL
