programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  funcao inicio() {
    //está funcionalidade da biblioteca de gráficos são para criar a tela do programa
    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(800, 500)
    graficos.definir_titulo_janela("Batalha Pokemon RPG")
    // Desenho do ceu da tela
    graficos.definir_cor(graficos.criar_cor(150,216,250))
    graficos.desenhar_retangulo(0,0,800,260,falso,verdadeiro)
    //Desenho da grama da tela
    graficos.definir_cor(graficos.criar_cor(120,190,100))
    graficos.desenhar_retangulo(0,260,800,240,falso,verdadeiro)
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
    graficos.renderizar()
    logico infinitamente = verdadeiro

		enquanto (infinitamente)
		{
			util.aguarde(1000)
    }
    escreva("Janela gráfica! Utilizado a Biblioteca de gráficos do Portugol")
    //
  }
}
