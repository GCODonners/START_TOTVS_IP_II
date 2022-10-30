SET PROCEDURE TO b_StrUtil.prg

Function main()
    
    local cString   := ""
    local cSub      := ""
    local cChar     := ""
    local nModo     := 0
    local nPos      := 0
    local nQt       := 0
    local lRun      := .T.

    ACCEPT "Digite a string a ser usada no programa: " to cString

    while lRun
        

        ? "Menu"
        ?
        ? "1 - Checar tamanho"
        ? "2 - Checar posicao de um caractere"
        ? "3 - Retorna parte da string"
        ? "4 - Converte em maiuscula"
        ? "5 - Converte em minuscula"
        ? "6 - Inverte a string"
        ? "7 - Deleta parte da string"
        ? "8 - Insere algo na string"
        ? "9 - Insere algo a esquerda da string"
        ? "10 - Insere algo a direita da string"
        ? "11 - Elimina espaços em branco"
        ? "12 - Substitui um elemento na string"
        ? "13 - Sair"
        ?
        INPUT "Digite a opcao desejada: " to nModo
        ?
        ? "String: ", cString

        if nModo = 1

            QOUT("Tamanho da string: " + AllTrim(str(Tam(cString))))
        
        elseif nModo = 2

            ACCEPT "Digite um caractere a ser pesquisado: " to cChar

            nPos := Posic(cChar, cString)

            QOUT("Posicao do caractere: " + alltrim(str(nPos)))

        elseif nModo = 3

            INPUT "Digite a posicao inicial da pesquisa: " to nPos
            INPUT "Digite a quantidade de caracteres a serem retornados: " to nQt

            QOUT("String resultante: " + Copia(cString, nPos, nQt))

        elseif nModo = 4

            QOUT("String maiuscula: " + Maiusc(cString))

        elseif nModo = 5

            QOUT("String minuscula: " + Minusc(cString))

        elseif nModo = 6

            QOUT("String invertida: " + InverteStr(cString))

        elseif nModo = 7

            INPUT "Digite a posicao inicial: " to nPos
            INPUT "Digite a quantidade de caracteres a serem deletados: " to nQt

            Del(@cString, nPos, nQt)
            QOUT("String resultante: " + cString)

        elseif nModo = 8

            INPUT "Digite a posicao inicial: " to nPos
            ACCEPT "Digite a string a ser inserida: " to cSub

            Ins(@cString, nPos, cSub)
            QOUT("String resultante: " + cString)

        elseif nModo = 9

            ACCEPT "Digite a string a ser inserida: " to cSub

            LFill(@cString, cSub)
            QOUT("String resultante: " + cString)

        elseif nModo = 10

            ACCEPT "Digite a string a ser inserida: " to cSub

            RFill(@cString, cSub)
            QOUT("String resultante: " + cString)

        elseif nModo = 11

            Trim(@cString)
            QOUT("String resultante: " + cString)

        elseif nModo = 12

            ACCEPT "Digite a string a ser usada: " to cSub
            ACCEPT "Digite um caractere a ser substituido: " to cChar

            SubstStr(@cString, cSub)
            QOUT("String resultante: " + cString)

        elseif nModo = 13

            lRun := .F.
            
        else

            ? "Modo invalido"

        endif

        WAIT "Pressione algo para continuar..."
    enddo


Return nil
