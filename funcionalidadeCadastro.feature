            #language: pt

            Funcionalidade: Cadastro de cliente
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na pagina de cadastro

            Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Quando eu preencher todos os campos obrigatórios marcados com asterisco
            E informar um e-mail válido
            Então o sistema deve permitir concluir o cadastro

            Cenário: Tentativa de cadastro com e-mail inválido
            Quando eu preencher os campos obrigatórios
            E informar um e-mail no formato inválido
            Então o sistema deve exibir uma mensagem de erro informando "E-mail inválido"

            Cenário: Tentativa de cadastro com campos obrigatórios vazios
            Quando eu tentar enviar o formulário sem preencher os campos obrigatórios
            Então o sistema deve exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Validações no cadastro
            Quando eu informar o e-mail <email>
            E preencher os campos obrigatórios <statusCampos>
            Então o sistema deve exibir a mesnagem <mensagem>

            Exemplos:
            | email             | statusCampos  | mensagem                                |
            | "teste@teste.com" | "completos"   | "Cadastro concluído com sucesso"        |
            | "teste.com"       | "completos"   | "Formato de e-mail inválido"            |
            | "teste@teste.com" | "incompletos" | "Preencha todos os campos obrigatórios" |