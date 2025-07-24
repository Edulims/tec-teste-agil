 # language: pt

            #questao1
            Esquema do Cenário: cliente da EBAC-SHOP
            Quando selecionar um produto
            Então os campos <cor>, <tamanho> e <quantidade> devem ser obrigatorios

            Exemplos:
            | cor      | tamanho | quantidade |
            | Azul     | XS      | 1          |
            | Laranja  | S       | 2          |
            | Vermelho | M       | 3          |
            |          | L       | 4          |
            |          | XL      | 5          |
            |          |         | 6          |
            |          |         | 7          |
            |          |         | 8          |
            |          |         | 9          |
            |          |         | 10         |

            Esquema do Cenário: Quantidade de produtos
            Quando o cliente selecionar o <produto> e a <quantidade>
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | produto | quantidade | mensagem                       |
            | camisa  | 9          | "Produto inserido com sucesso" |
            | camisa  | 10         | "Produto inserido com sucesso" |
            | camisa  | 11         | "Quantidade máxima excedida"   |
            | camisa  | 12         | "Quantidade máxima excedida"   |
            | camisa  | 0          | "Quantidade inexistente"       |
            | camisa  |            | "Campo vazio"                  |


        Cenário: Quantidade de produtos
        Dado cliente EBAC shop
        Quando clicar no botão limpar
        Então o produto deve voltar ao estado original


   


    #questao3
    Scenario: Dados obrigatorios
        When preencher os dados da tela de checkout
        Then os dados obrigatorios com asteriscos deve ser preenchido

    Scenario: Email formato invalido
        When preencher o campo <e-mail> com formato invalido
        Then O sistema deve não permitir e exibir <mensagem> de erro

        Examples:
            | e-mail              | mensagem           |
            | edulima@email.cm    | "Formato invalido" |
            | myleanu!email.com   | "Formato invalido" |
            | marcialimaemail.com | "Formato invalido" |

    Scenario: Dados obrigatorios vazio
        When preencher os dados obrigatorios com asteriscos = <vazio>
        Then sistema deve exibir mensagem de <alerta>

        Examples:
            | vazio   | alerta                    |
            | ""      | "Campo obrigatorio vazio" |
            | " "     | "Campo obrigatorio vazio" |
            | "     " | "Campo obrigatorio vazio" |



