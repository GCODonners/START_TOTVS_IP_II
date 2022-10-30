function main()

    local cSenha := ""

    ACCEPT "Digite a senha a ser cadastrada: " to cSenha

    encrypt(@cSenha)

    ? cSenha

return nil


static function encrypt(cSenha)

    local nCount := len(cSenha)

    local cCrypt := REPLICATE("#", nCount)

    cSenha := cCrypt

return nil
