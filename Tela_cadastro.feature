    # language: pt

    #questao3
    Cenário: Dados obrigatorios
    Dado estiver na tela de checkout
    Quando preencher os dados
    Então os dados obrigatorios com asteriscos deve ser preenchido

    Esquema do Cenário: Email formato invalido
        Quando preencher o campo <e-mail> com formato invalido
        Então O sistema deve não permitir e exibir <mensagem> de erro

        Examples:
            | e-mail              | mensagem           |
            | edulima@email.cm    | "Formato invalido" |
            | myleanu!email.com   | "Formato invalido" |
            | marcialimaemail.com | "Formato invalido" |

    Esquema do Cenário: Dados obrigatorios vazio
        Quando preencher os dados obrigatorios com asteriscos = <vazio>
        Então sistema deve exibir mensagem de <alerta>

        Examples:
            | vazio   | alerta                    |
            | ""      | "Campo obrigatorio vazio" |
            | " "     | "Campo obrigatorio vazio" |
            | "     " | "Campo obrigatorio vazio" |
