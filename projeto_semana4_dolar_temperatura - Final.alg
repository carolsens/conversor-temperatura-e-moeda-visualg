algoritmo "Projeto - Semana 4 - Conversor de temperatura e d�lar"
// Fun��o: converter temperatura de Celsius para Fahrenheit (e vice-versa) e o d�lar para real (e vice-versa)
// Autor: Carolina Aparecida Sens
// Data: Maio/2022

var
temperaturaCelsius, temperaturaFahrenheit, conversaoparaFahrenheit, conversaoparaCelsius: real
moedaDolar, conversaoparaMoedaDolar, moedaReal, conversaoparaMoedaReal, cotacaoDolar: real
opcaoMenuPrincipal, realizarConversao: literal

inicio

realizarConversao <- "S"
enquanto realizarConversao = "S" faca
   moedaDolar <- 0
   conversaoparaMoedaDolar <- 0
   moedaReal <- 0
   conversaoparaMoedaReal <- 0
   cotacaoDolar <- 0
   temperaturaCelsius <- 0
   conversaoparaCelsius <- 0
   temperaturaFahrenheit <- 0
   conversaoparaFahrenheit <- 0
   limpatela
   escreval ("Ol�, voc� pode realizar as seguintes a��es: ")
   escreval ("")
   escreval ("Para convers�o de moedas :")
   escreval ("1 - Converter de D�LAR para REAL")
   escreval ("2 - Converter de REAL para D�LAR")
   escreval ("")
   escreval ("Para convers�o de temperaturas :")
   escreval ("3 - Converter de CELSIUS para FAHRENHEIT")
   escreval ("4 - Converter de FAHRENHEIT para CELSIUS")
   escreval ("")
   escreval ("5 - Sair")
   escreval ("")
   escreva ("Digite o n�mero equivalente � op��o escolhida: ")
   leia (opcaoMenuPrincipal)
   limpatela
   se opcaoMenuPrincipal = "1" entao
      escreva ("Preencha a cota��o atual para 1 d�lar: R$ ")
      leia(cotacaoDolar)
      escreval ("")
      escreval ("Voc� selecionou a op��o de converter D�LAR para REAL")
      escreval ("")
      escreva ("Preencha a quantidade em d�lar que voc� possui: US$ ")
      leia(moedaDolar)
      conversaoparaMoedaReal <- moedaDolar * cotacaoDolar
      limpatela
      escreval ("Valor em d�lar: US$ ", moedaDolar:1:2)
      escreval ("Cota��o atual: US$ 1 equivale a R$ ", cotacaoDolar:1:2)
      escreval ("Valor convertido de d�lar para real: R$ ", conversaoparaMoedaReal:1:2)
   senao
      se opcaoMenuPrincipal = "2" entao
         escreva ("Preencha a cota��o atual para 1 d�lar: R$ ")
         leia(cotacaoDolar)
         escreval ("")
         escreval ("Voc� selecionou a op��o de converter REAL para D�LAR")
         escreval ("")
         escreva ("Preencha a quantidade em real que voc� possui: R$ ")
         leia(moedaReal)
         conversaoparaMoedaDolar <- moedaReal / cotacaoDolar
         limpatela
         escreval ("Valor em real: R$ ", moedaReal:1:2)
         escreval ("Cota��o atual: US$ 1 equivale a R$ ", cotacaoDolar:1:2)
         escreval ("Valor convertido de real para d�lar: US$ ", conversaoparaMoedaDolar:1:2)
      senao
         se opcaoMenuPrincipal = "3" entao
            escreval ("Voc� selecionou a op��o de converter CELSIUS para FAHRENHEIT")
            escreval ("")
            escreva ("Preencha a temperatura em Celsius (�C): ")
            leia(temperaturaCelsius)
            conversaoparaFahrenheit <- (temperaturaCelsius * 9/5) + 32
            limpatela
            escreval ("Temperatura em Celsius :", temperaturaCelsius:1:2, " �C")
            escreval ("Temperatura convertida de Celsius para Fahrenheit: ", conversaoparaFahrenheit:1:2, " �F")
         senao
            se opcaoMenuPrincipal = "4" entao
               escreval ("Voc� selecionou a op��o de converter FAHRENHEIT para CELSIUS")
               escreval ("")
               escreva ("Preencha a temperatura em Fahrenheit (�F): ")
               leia(temperaturaFahrenheit)
               conversaoparaCelsius <- (temperaturaFahrenheit - 32) * 5/9
               limpatela
               escreval ("Temperatura em Fahrenheit: ", temperaturaFahrenheit:1:2, " �F")
               escreval ("Temperatura convertida de Fahrenheit para Celsius: ", conversaoparaCelsius:1:2, " �C")
            senao
               se opcaoMenuPrincipal <> "5" entao
                  escreval ("Op��o inv�lida, por favor, tente novamente")
               fimse
            fimse
         fimse
      fimse
   fimse
   se opcaoMenuPrincipal = "5" entao
      realizarConversao <- "N"
   senao
      escreval ("")
      escreval ("-------------------")
      escreval ("")
      escreval ("Voc� deseja realizar outra convers�o? (S/N)")
      leia(realizarConversao)
   fimse
fimenquanto
escreval ("Voc� optou por n�o realizar nenhuma convers�o. Obrigado!")
fimalgoritmo
