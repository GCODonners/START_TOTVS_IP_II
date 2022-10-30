Function Main()

    Local aM := {ARRAY(3), ARRAY(3), ARRAY(3), ARRAY(3), ARRAY(3)}
    Local aN := {"","","","",""}
    Local aMenor := {999999,999999,999999,999999,999999}
    Local aMedia := {0,0,0,0,0}
    Local nCount := 0
    Local nCount2 := 0    
    Local cAux := ""
    Local nAux := 0

    for nCount := 1 to 5

       ACCEPT "Digite o nome do aluno: " to aN[nCount]
       aN[nCount] := Upper(aN[nCount])
        
        if Empty(aN[nCount])

            QOUT("vazio")

        endif

        for nCount2 := 1 to 3 

            INPUT ("Digite a " + ALLTRIM(STR(nCount2)) + "a do aluno " + aN[nCount] + ": ") to aM[nCount, nCount2]

            if aM[nCount, nCount2] < 0 .or. aM[nCount, nCount2] > 10

                QOUT("Invalido")
                
                loop
            endif

         next

    next  
        
    for nCount := 1 to 5

        for nCount2 := 1 to 3

            if aM[nCount, nCount2] < aMenor[nCount]

                aMenor[nCount] := aM[nCount, nCount2]

            endif

        next

    next

    for nCount := 1 to 5 

        for nCount2 := 1 to 3

            if aMenor[nCount] != aM[nCount, nCount2]

                aMedia[nCount] += aM[nCount, nCount2]

            endif

        next

        aMedia[nCount] := aMedia[nCount] / 2

    next

    QOUT(CHR(10) + "Nome crescente: " + CHR(10))

    for nCount := 1 to 5

        for nCount2 := nCount + 1 to 5

            if (Asc(aN[nCount2]) < Asc(aN[nCount]))
                
                cAux := aN[nCount2]
                aN[nCount2] := aN[nCount]
                aN[nCount] := cAux

                nAux := aMedia[nCount]
                aMedia[nCount] := aMedia[nCount2]
                aMedia[nCount2] := nAux

            endif

        next

    next

    for nCount := 1 to 5

        QOUT(aN[nCount] + " = " + ALLTRIM(STR(aMedia[nCount])))

    next


    QOUT(CHR(10) + "Notas decrescentes: " + CHR(10))

    for nCount := 1 to 5

        for nCount2 := nCount + 1 to 5

            if ((aMedia[nCount2]) < (aMedia[nCount]))

                
                cAux := aN[nCount2]
                aN[nCount2] := aN[nCount]
                aN[nCount] := cAux

                nAux := aMedia[nCount]
                aMedia[nCount] := aMedia[nCount2]
                aMedia[nCount2] := nAux 

            endif

        next

    next

    for nCount := 1 to 5

        QOUT(aN[nCount] + " = " + ALLTRIM(STR(aMedia[nCount])))

    next

RETURN NIL
