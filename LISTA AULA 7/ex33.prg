SET PROCEDURE TO b_convert.prg

Function Main()

    local nCompra := ""
    local nPag    := ""
    local nTroco  := ""


    while !isNum(nCompra)

        Accept "insira aqui o valor da compra: " TO nCompra 

    enddo

    while !isNum(nPag)

        Accept "insira aqui o valor do pagamento: " TO nPag 

    enddo

    nTroco := Val(nPag) - Val(nCompra)

    calcTroco(nTroco)

Return NIL

Function calcTroco(nTroco)

    local aTroco := {{"200.00", 0},{"100.00", 0},{"050.00", 0},{"020.00", 0},{"010.00", 0},{"005.00", 0},{"002.00", 0},{"001.00", 0},{"000.50", 0},{"000.25", 0},{"000.10", 0},{"000.05", 0},{"000.01", 0}}
    local nI := 0

    while nTroco > 0

        if nTroco >= 200

            nTroco := nTroco - 200
            aTroco[1,2] += 1

        elseif nTroco >= 100

            nTroco := nTroco - 100
            aTroco[2,2] += 1

        elseif nTroco >= 50

            nTroco := nTroco - 50
            aTroco[3,2] += 1

        elseif nTroco >= 20

            nTroco := nTroco - 20
            aTroco[4,2] += 1

        elseif nTroco >= 10

            nTroco := nTroco - 10
            aTroco[5,2] += 1

        elseif nTroco >= 5

            nTroco := nTroco - 5
            aTroco[6,2] += 1

        elseif nTroco >= 2

            nTroco := nTroco - 2
            aTroco[7,2] += 1

        elseif nTroco >= 1

            nTroco := nTroco - 1
            aTroco[8,2] += 1  

        elseif nTroco >= 0.50

            nTroco := nTroco - 0.50
            aTroco[9,2] += 1

        elseif nTroco >= 0.25

            nTroco := nTroco - 0.25
            aTroco[10,2] += 1

        elseif nTroco >= 0.10

            nTroco := nTroco - 0.10
            aTroco[11,2] += 1

        elseif nTroco >= 0.05

            nTroco := nTroco - 0.05
            aTroco[12,2] += 1

        elseif nTroco >= 0.01

            nTroco := nTroco - 0.01
            aTroco[13,2] += 1

        ELSE

            EXIT

        ENDif

    enddo


    for nI := 1 TO 7

        QOUT("Notas  de R$" , Alltrim(aTroco[nI,1]) ," : " ,  Alltrim(STR(aTroco[nI,2])))
        
    next nI
    
    for nI := 8 TO 13

        QOUT("Moedas de R$" , Alltrim(aTroco[nI,1]) ," : " ,  Alltrim(STR(aTroco[nI,2])))

    next nI

Return NIL
