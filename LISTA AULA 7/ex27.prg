function main()

    local cChar := ""
    local cLeft := ""
    local nCount := 0
    local nI := 0

    ACCEPT "Digite uma palavra: " to cChar
    cChar := UPPER(cChar)
    for nCount := len(cChar) to 1 step -1

        cLeft+= SUBSTR(cChar, nI, 1)

        nI--

    next nCount

    ? cLeft

    if cLeft = cChar

        ? "A palavra e um palindromo"

    endif

return nil
