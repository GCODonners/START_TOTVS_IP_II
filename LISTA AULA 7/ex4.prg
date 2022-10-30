function main()

    local aDia := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    local nMes := 0

    INPUT "Digite o mes desejado: " to nMes

    if nMes = 4 .or. nMes = 6 .or. nMes = 9 .or. nMes = 11

        QOUT(aDia[nMes] + " tem 30 dias")

    elseif nMes = 1 .or. nMes = 3 .or. nMes = 5 .or. nMes = 7 .or. nMes = 8 .or. nMes = 10 .or. nMes = 12
        
        QOUT(aDia[nMes] + " tem 31 dias")

    elseif  nMes = 2

        QOUT(aDia[nMes] + " tem 28 dias")

    else
        
        ? "Mes invalido"

    endif


return nil
