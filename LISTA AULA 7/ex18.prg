/////// O ENUNCIADO DO EXERCÍCIO ERA IGUAL O DA LISTA 4; 
/////// NAO SABIA O QUE FAZER DE DIFERENTE, ENTÃO SÓ APLIQUEI CONCEITOS ESTUDADOS NAS ULTIMAS AULAS

function main()

    local cDia := 0
    local cMes := 0
    local cAno := 0
    local dData
    local nData := 0
    local nDias := 0
    local lBissexto := .F.

    findDate(@cDia, @cMes, @cAno)
    
    dData := CToD(cAno + "/" + cMes + "/" + cDia)
    
    lBissexto := IsLeap(dData)
   
    findDay(dData, lBissexto, @nDias, @nData)

    QOUT("A data corresponde ao "+ Alltrim(Str(nData)) + "º dia do ano (de " + AllTrim(str(nDias)) + ").")

RETURN nil

static function findDate(cDia, cMes, cAno)

    local lRun := .T.

    while lRun

        ACCEPT "Digite o dia: " TO cDia

        if val(cDia) < 1 .or. val(cDia) > 31

            ? "Dia invalido"
            loop

        endif

        ACCEPT "Digite o mes: " TO cMes

        if val(cMes) < 1 .or. val(cMes) > 12

            ? "Mes invalido"
            loop

        endif
        
        ACCEPT "Digite o Ano: " TO cAno

        if val(cAno) < 1 .or. val(cAno) > 2022

            ? "Ano invalido"
            loop

        endif

        lRun := .F.

    enddo


return nil

static function findDay(dData, lBissexto, nDias, nData)

    local nCount := 0
    local aDias := {}

    if lBissexto

        nDias := 365

    else
        
        nDias := 366

    ENDIF

    for nCount := 1 to nDias

        Aadd(aDias, nCount)

    next nCount

    nData := ASCAN(aDias, DoY(dData))

return nil
