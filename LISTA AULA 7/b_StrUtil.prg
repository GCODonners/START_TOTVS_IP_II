//Tamanho
static function Tam(cString)

    local nTam := len(cString)

return nTam

//Posição de substring
static function Posic(cChar, cString)

    local nPos := At(cChar, cString)

return nPos

//Retorna parte
static function Copia(cString, nPos, nQt)

    local cRes := SUBSTR(cString, nPos, nQt)

return cRes

//Converte em maiuscula
static function Maiusc(cString)

    local cRes := UPPER(cString)

return cRes

//Converte em minuscula
static function Minusc(cString)

    local cRes := LOWER(cString)

return cRes

//Inverte
static function InverteStr(cString)

    local cRes := ""
    local nCount := 0
    local nI := len(cString)

    for nCount := len(cString) to 1 step -1

        cRes+= SUBSTR(cString, nI, 1)

        nI--

    next nCount

return cRes

//Deleta substring
static function Del(cString, nPos, nQt)

    cString := STUFF(cString, nPos, nQt, "")

return nil

//Insere substring
static function Ins(cString, nPos, cSub)

    cString := STUFF(cString, nPos, 0, cSub)

return nil

//Insere substring a esquerda
static function LFill(cString, cSub)

    cString := STUFF(cString, 1, 0, cSub)

return nil

//Insere substring a direita
static function RFill(cString, cSub)

    local nPos := len(cString) + 1

    cString := STUFF(cString, nPos, 0, cSub)

return nil

//Tira espaco vazio
static function TrimStr(cString)

    cString := trim(cString)

return nil

//Substitui determinada substring
static function SubstStr(cString, cChar, cSub)

    cString := STRTRAN(cString, cChar, cSub)

return nil
