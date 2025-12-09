            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina de autenticação do portal EBAC

            Cenário: Autenticação valida
            Quando eu digitar o usuario "joao@ebac.com.br"
            E a senha "senha123"
            Então deve exibir a tela de checkout

            Cenário: Usuario invalido
            Quando eu digitar o usuario "errado@ebac.com.br"
            E a senha "senha123"
            Então deve exibir uma mensagem "Usuario ou senha incorreto"

            Cenário: Senha invalida
            Quando eu digitar o usuario "joao@ebac.com.br"
            E a senha "errado123"
            Então deve exibir uma mensagem "Usuario ou senha incorreto"

            Esquema do Cenário: Autenticação
            Quando eu digitar um <usuario>
            E uma <senha>
            Então deve exibir uma <mensagem>

            Exemplos:
            | usuario              | senha       | mensagem                     |
            | "joao@ebac.com.br"   | "senha123"  | "Bem vindo(a)"               |
            | "errado@ebac.com.br" | "senha123"  | "Usuario ou senha incorreto" |
            | "joao@ebac.com.br"   | "errado123" | "Usuario ou senha incorreto" |