    # language: pt

    Scenario Outline: cliente da EBAC-SHOP

    #questao1
    Scenario: Seleção de produtos
        When eu selecionar um produto
        Then os campos <cor>, <tamanho> e <quantidade> devm ser obrigatorios

        Examples:
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

    Scenario: Quantidade de produtos
        When eu selecionar a <quantidade> de um produto
        Then a <qauntidade> tem que ser <= 10

        Examples:
            | quantidade |
            | 1          |
            | 2          |
            | 3          |
            | 4          |
            | 5          |
            | 6          |
            | 7          |
            | 8          |
            | 9          |
            | 10         |

    Scenario: Quantidade de produtos
        When e clicar em Limpar na pagina do produto
        Then o produto deve voltar ao estado original


    #questao2
    Scenario: Login na plataforma - valido
        When inserir <username> ou <email> válido
        And inserir <senha> válida
        Then deve ser direcionado para o checkout

        Examples:
            | email                 | username   | senha |
            | edu.lima@email.com    | edulima    | @123  |
            | joao.silva@email.com  | joaosilva  | @123  |
            | mylena.anu@email.com  | mylenaanu  | @123  |
            | marcelo.anu@email.com | marceloanu | @123  |
            | marcia.lima@email.com | marcialima | @123  |


    Scenario: Login na plataforma - invalido
        When inserir <username> ou <email> inválido
        And inserir <senha> inválida
        Then deve exibir mensagem de alerta "Usuário ou senha inválidos"

        Examples:
            | email                | username  | senha |
            | edu.lima@emal.com    | edula     | @125  |
            | joao.slva@email.cm   | joaoilva  | 126!3 |
            | mylena.anu@email.com | mlenaanu  | @24h3 |
            | marelo.anu@email.com | mrceloanu | @1983 |
            | marcia.lima@eail.com | marciima  | 6623  |


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



