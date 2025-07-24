 # language: pt

  #questao2
    Esquema do Cenário: Login na plataforma - valido
        Quando usuário inserir <email> ou <username> e <senha> válida
        Então deve ser direcionado para o checkout

        Exemplos:
            | email                 | username   | senha |
            | edu.lima@email.com    | edulima    | @123  |
            | joao.silva@email.com  | joaosilva  | @123  |
            | mylena.anu@email.com  | mylenaanu  | @123  |
            | marcelo.anu@email.com | marceloanu | @123  |
            | marcia.lima@email.com | marcialima | @123  |


    Esquema do Cenário: Login na plataforma - invalido
        Quando usuário inserir <email> ou <username> e <senha> inválida
        Então deve exibir mensagem de alerta "Usuário ou senha inválido"

        Exemplos:
            | email                | username  | senha |
            | edu.lima@emal.com    | edula     | @125  |
            | joao.slva@email.cm   | joaoilva  | 126!3 |
            | mylena.anu@email.com | mlenaanu  | @24h3 |
            | marelo.anu@email.com | mrceloanu | @1983 |
            | marcia.lima@eail.com | marciima  | 6623  |