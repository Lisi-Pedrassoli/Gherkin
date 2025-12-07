            #language: pt

            Funcionalidade: Tela de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na pagina do produto

            Cenário: Seleção válida de cor, tamanho e quantidade
            Quando eu selecionar a cor "rosa"
            E selecionar o tamanho "P"
            E escolher a quantidade "2"
            Então o sistema deve permitir adicionar o produto ao carrinho

            Cenário: Tentativa de adicionar mais de 10 unidades
            Quando selecionar cor "rosa"
            E tamanho "p"
            E escolher a quantidade "11"
            Então o sistema deve exibir uma mensagem de erro "Quantidade maxima permitida: 10"

            Cenário: Clicar no botão limpar
            Quando que eu tenha selecionado cor , tamanho e quantidade
            Quando eu clicar no botão "limpar"
            Então o sistema deve voltar ao estagio original
            E nenhuma opção deve permanecer selecionada

            Esquema do Cenário: Processos na tela do produto
            Quando eu selecionar <cor>
            E selecionar <tamanho>
            E selecionar <quantidade>
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | cor    | tamanho | quantidade | mensagem                          |
            | "rosa" | "p"     | "5"        | "Produto adicionado no carrinho"  |
            | "rosa" | "p"     | "11"       | "Quantidade maxima permitida: 10" |
