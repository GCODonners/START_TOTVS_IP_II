function main()

    local aDia := {"Domingo", "Segunda", "Ter�a", "Quarta", "Quinta", "Sexta", "Sabado"}
    local nDia := 0

    INPUT "Digite o dia da semana desejado: " to nDia

    if nDia > 0 .and. nDia <= 7

        QOUT(aDia[nDia])

    else
        
        ? "Dia invalido"

    ENDIF


return nil
