function main()

    local cCPF := {}
    local aCPF := {}
    local nI := 0 
    local nCalc := 0

    QOUT("**")
    QOUT(" Exercicio29 ")
    QOUT("")

    while .T.

        cCPF := inp_num( "Digite o CPF... " )
        cCPF := allTrim(str(cCPF))

        
        if len(cCPF) == 11

            exit

        endif
    enddo

    aCPF := array(11)
    for nI := 1 to 11

        aCPF[nI] := val(SubStr(cCPF, nI , 1))

    next nI

    // CPF não pode ter todos digitos iguais
    if aCPF[1] = aCPF[2] .and. aCPF[2] = aCPF[3] .and. aCPF[3] = aCPF[4] .and. aCPF[4] = aCPF[5] .and. aCPF[5] = aCPF[6] .and. aCPF[6] = aCPF[7] .and. aCPF[7] = aCPF[8] .and. aCPF[8] = aCPF[9] .and. aCPF[9] = aCPF[10] .and. aCPF[10] = aCPF[11]

        QOUT("CPF INVALIDO")

    else
        
        nCalc := aCPF[1] * 10 + aCPF[2] * 9 + aCPF[3] * 8 + aCPF[4] * 7 + aCPF[5] * 6 + aCPF[6] * 5 + aCPF[7] * 4 + aCPF[8] * 3 + aCPF[9] * 2

        nCalc := (nCalc * 10) % 11

        if ( nCalc == 10)

            nCalc := 0

        endif

        if (nCalc == aCPF[10]) 

            nCalc := aCPF[1] * 11 + aCPF[2] * 10 + aCPF[3] * 9 + aCPF[4] * 8 + aCPF[5] * 7 + aCPF[6] * 6 + aCPF[7] * 5 + aCPF[8] * 4 + aCPF[9] * 3 + aCPF[10] * 2

            nCalc :=  (nCalc * 10) % 11

            if (nCalc == 10)

                nCalc := 0

            endif

            if (nCalc == aCPF[11])//teste do segundo digito verificador

                QOUT("CPF VALIDO")

            else

                QOUT("CPF INVALIDO")

            endif
        endif
    end if

    QOUT("***")
    QOUT("")
    wait

return nil
