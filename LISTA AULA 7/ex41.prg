Function Main()

    local aMat := { {"O", "Q", "*", "I"}, ;
                    {"E", "*", "E", "S"}, ;
                    {"R", "E", "U", "T"}, ;
                    {"A", "*", "*", "S"}}

    local nI := 0
    local nII := 0
    local cAux := ""
   
    for nI := 1 to 3

        for nII := (nI + 1) to 4

            cAux := aMat[nII,nI]

            aMat[nI,nII] := aMat[nII,nI]
            aMat[nII,nI] := cAux

        next nII

    next nI
 
    cAux := aMat[1,1]
    aMat[1,1] := aMat[4,4]
    aMat[4,4] := cAux

    cAux := aMat[2,2]
    aMat[2,2] := aMat[3,3]
    aMat[3,3] := cAux
 
    ? hb_valtoexp(aMat[1])
    ? hb_valtoexp(aMat[2])
    ? hb_valtoexp(aMat[3])
    ? hb_valtoexp(aMat[4])


    ? "O array é trocado em L"

Return Nil
