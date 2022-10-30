//// Uma vez que somar 2 matrizes diferentes nao e matematicamente possivel,
//// acredito que o enunciado deveria pedir o produto entre as 2, ou que a matriz N fosse 3x10
//// Meu codigo assume que o 2o caso se aplica

function main()

    local aM := {}
    local aN := {{}, {}, {}}
    local aR := {{}, {}, {}}
    local nC := 0
    local nSum := 0
    local nCount := 0

    aM := arrayM()

    aN := arrayN()

    for nCount := 1 to 3

        nC := 1

        while nC <= 10
            
            nSum := aM[nCount, nC] + aN[nCount, nC]

            aAdd(aR[nCount], nSum)
            nC++

        enddo

    next nCount

    ? "Resultado:"

    for nCount := 1 to 3

        ? hb_valtoexp(aR[nCount])

    next nCount

return nil


static function arrayM()

    local aM := {}
    local aA := {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    local aB := {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}
    local aC := {1, 9, 2, 8, 3, 7, 4, 6, 5, 5}

    Aadd(aM, aA)
    Aadd(aM, aB)
    Aadd(aM, aC)

    ? hb_valtoexp(aM)

return aM

static function arrayN()

    local nC := 1
    local nSum := 0
    local nCount := 0
    local aN := {{}, {}, {}}

    for nCount := 1 to 3

        nC := 1

        while nC <= 10
            
            nSum := nC + nCount

            aAdd(aN[nCount], nSum)
            nC++

        enddo

    next nCount

    ? hb_valtoexp(aN)

return aN
