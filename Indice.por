programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500
  funcao inicio() {
    //está funcionalidade da biblioteca de gráficos são para criar a tela do programa
    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(LARGURA, ALTURA)
    graficos.definir_titulo_janela("Batalha Pokemon RPG")
    /*
    -Tipos de variaveis:
    -Inteiro Responsavel por contar numeros inteiros, sem casa decimal. Exemplo = 101
    -Real Responsavel por contar numeros com casas decimais. Exemplo = π
    -Cadeia Responsavel por armazenar um texto. Exemplo = "MORRA EMANUEL"
    -Caracter Responsavel por armazenar um caracter. Exemplo = J
    -Logico Responsavel por armazenar os valores de Verdadeiro ou Falso. Exemplo: Cadastro = Falso
    -Vazio é usado para o resultado de uma função que retorna normalmente, mas não fornece um valor de resultado ao seu chamada.
    */
    //Meu pokemom
    cadeia nome_meu_pokemon = "Pikachu"
    inteiro hp_meu_pokemon = 100
    inteiro max_hp_meu_pokemon = 100
    //informações pokemon inimigo
    cadeia nome_pokemon_inimigo = "Gengar"
    inteiro hp_pokemon_inimigo = 120
    inteiro max_hp_pokemon_inimigo = 120
    /*
    * Operadores aritmeticos:
    * Soma (+)
    * Subtração (-)
    * Multiplicação (*)
    * Divisão (/)
    * Modulo de porcentagem (%) = (valor/100) 
    */
    inteiro dano = util.sorteia(22,35)
    escreva("=====FICHA DA BATALHA=====\n")
    hp_pokemon_inimigo = hp_pokemon_inimigo - dano
    escreva(nome_meu_pokemon," | HP : ", hp_meu_pokemon, " | ", max_hp_meu_pokemon, "\n")
    escreva(nome_pokemon_inimigo,"  | HP : ", hp_pokemon_inimigo, "  | ", max_hp_pokemon_inimigo, " (Sofreu ", dano," de dano)\n")
    // Desenho do ceu da tela
    graficos.definir_cor(graficos.criar_cor(150,216,250))
    graficos.desenhar_retangulo(0,0,LARGURA,260,falso,verdadeiro)
    //Desenho da grama da tela
    graficos.definir_cor(graficos.criar_cor(120,190,100))
    graficos.desenhar_retangulo(0,260,LARGURA,240,falso,verdadeiro)
    //Desenhar a sombra do pokemon Gengar
    graficos.definir_cor(graficos.criar_cor(90,130, 80))
    graficos.desenhar_elipse(475,165,250,65,verdadeiro)
    //Desenhar a sombra do nosso pokemon Pikachu
    graficos.definir_cor(graficos.criar_cor(90,130, 80))
    graficos.desenhar_elipse(90,365,290,75,verdadeiro)
    //Desenho inicial do pokemon Gengar
    graficos.definir_cor(graficos.criar_cor(110,60, 150))
    graficos.desenhar_retangulo(540,90,110,100,falso,verdadeiro)
    //Desenho inicial do nosso pokemon Pikachu
    graficos.definir_cor(graficos.criar_cor(255,215, 0))
    graficos.desenhar_retangulo(180,280,110,100,falso,verdadeiro)
    //Textos de informações do pokemon inimigo
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_texto(60,55,nome_pokemon_inimigo+ "  | HP : "+ hp_pokemon_inimigo + "  | " + max_hp_pokemon_inimigo)
    //Textos de informações do pokemon aliado
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_texto(480,372, nome_meu_pokemon+" | HP : "+ hp_meu_pokemon+ " | "+ max_hp_meu_pokemon)
    //Está função mostra a tela do jogo
    graficos.renderizar()
    logico infinitamente = verdadeiro

		enquanto (infinitamente)
		{
			util.aguarde(100)
    escreva("\nJanela gráfica! Utilizado a Biblioteca de gráficos do Portugol")
    }
    //
  }
}