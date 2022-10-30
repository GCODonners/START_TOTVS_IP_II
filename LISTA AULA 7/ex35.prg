function main()

    local aVetA := {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
    local aVetB := {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j"}
    local aVetC := {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}
    local aVetM := {}
    local nCount := 0

    Aadd(aVetM, aVetA)
    Aadd(aVetM, aVetB)
    Aadd(aVetM, aVetC)

    for nCount := 1 to 3

        QOUT(hb_valtoexp(aVetM[nCount]))

    next nCount

return nil
