algoritmo "AGENCIA DE VIAGENS VOO LIVRE"

var
   i, opcao: inteiro
   msg: caractere
   clienteCpf, clienteSexo, clienteNome: vetor[1..2] de caractere
   clienteTelefone, clienteIdade: vetor[1..2] de inteiro

   destinoPais, destinoTerminal, destinoData: vetor[1..2] de caractere
   destinoHora, destinoPortao, destinoOrigem, destinoDestino: vetor[1..2] de caractere

procedimento Menu()
inicio
   Escreval("_________________________________")
   Escreval("       VOAR Linhas Aéreas        ")
   Escreval("_________________________________")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("CADASTROS")
   Escreval("[ 1 ] - cadastrar clientes")
   Escreval("[ 2 ] - cadastrar destinos")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("CONSULTAS")
   Escreval("[ 3 ] - consultar clientes")
   Escreval("[ 4 ] - consultar destinos")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("CONFIGURAÇÕES")
   Escreval("[ 5 ] - sobre")
   Escreval("")
   Escreval("")
   Escreval("_________________________________")
   Escreval(msg)
   Escreva("opção -> ")
   Leia(opcao)
   se (opcao = 1) entao
      msg <- ""
      LimpaTela
      cadastroClientes()
   senao
      se (opcao = 2) então
         msg <- ""
         LimpaTela
         cadastroDestino()
      senao
         se (opcao = 3) entao
            msg <- ""
            LimpaTela
            consultaClinte()
         senao
            se (opcao = 4) entao
               msg <- ""
               LimpaTela
               consultaDestino()
            senao
               se (opcao = 5) entao
                  msg <- ""
                  LimpaTela
                  Sobre()
               senao
                  se ((opcao >= 6) ou (opcao = 0) ou (opcao < 0)) entao
                     msg <- "Esta opção não é válida"
                     LimpaTela
                     Menu()
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse
fimProcedimento

procedimento cadastroClientes()
inicio
   Para i  De 1 Ate 2 Faca
      Escreval("_________________________________")
      Escreval("       CADASTRO DE CLIENTES        ")
      Escreval("_________________________________")
      Escreval("")
      escreval("           CLIENTE ", i)
      Escreval("_________________________________")
      Escreva("Nome: ")
      Leia(clienteNome[i])
      Escreva("Idade: ")
      Leia(clienteIdade[i])
      Escreva("Sexo: ")
      Leia(clienteSexo[i])
      Escreva("Telefone: ")
      Leia(clienteTelefone[i])
      LimpaTela
   fimPara
   Menu()
fimProcedimento

procedimento cadastroDestino()
inicio
   Para i  De 1 Ate 2 Faca
      Escreval("_________________________________")
      Escreval("       CADASTRO DE DESTINOS        ")
      Escreval("_________________________________")
      Escreval("")
      escreval("           DESTINO ", i)
      Escreval("_________________________________")

      Escreva("Origem: ")
      Leia(destinoOrigem[i])
      Escreva("Destino: ")
      Leia(destinoDestino[i])
      Escreva("Portão: ")
      Leia(destinoPortao[i])
      Escreva("Hora: ")
      Leia(destinoHora[i])
      Escreva("Data: ")
      Leia(destinoData[i])
      Escreva("País: ")
      Leia(destinoPais[i])
      Escreva("Terminal: ")
      Leia(destinoTerminal[i])
      LimpaTela
   fimPara
   Menu()
fimProcedimento

procedimento consultaClinte()
inicio
   Escreval("_________________________________")
   Escreval("     CONSULTAR CLIENTES          ")
   Escreval("_________________________________")
   Escreval("")
   Escreval("  ID            Nome")
   Escreval("_________________________________")

   se(clienteNome[1] = "") entao
      Escreval("")
      Escreval("   Não existe registros ainda,")
      Escreval("   volte e realize o cadastro.")
      Escreval("_________________________________")
      Escreva("[ ENTER ] - para voltar")
      Leia(opcao)
      LimpaTela
      Menu()
   fimse


   se (clienteNome[1] <> "") entao
      Escreval("")
      Para i  De 1 Ate 2 Faca
         Escreval("[ ",i," ]  " ,clienteNome[i])
      fimPara

      detalhesCliente()
   senao
      Menu()
   fimse
fimProcedimento

procedimento consultaDestino()
inicio
   Escreval("_________________________________")
   Escreval("       CONSULTAR DESTINOS        ")
   Escreval("_________________________________")
   Escreval("")
   Escreval("   ID            Nome")
   Escreval("_________________________________")

   se(destinoOrigem[1] = "") entao
      Escreval("")
      Escreval("   Não existe registros ainda,")
      Escreval("   volte e realize o cadastro.")
      Escreval("")
      Escreval("_________________________________")
      Escreva("[ ENTER ] - para voltar")
      Leia(opcao)
      LimpaTela
      Menu()
   fimse

   se (destinoOrigem[1] <> "") entao
      Escreval("")
      Para i  De 1 Ate 2 Faca
         Escreva("[ ",i," ] " ,destinoOrigem[i])
         Escreval(" para " ,destinoDestino[i])
         Escreval("")

      fimPara
      detalhesDestino()
   senao
      Menu()
   fimse

fimProcedimento

procedimento detalhesDestino()
inicio
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("para mais detalhes, informar o ID.")
   Escreval("_________________________________")
   Escreval("[  0 ] - voltar")
   Escreval("")
   Escreva("opção ->")
   Leia(opcao)

   se (opcao = 0) entao
      LimpaTela
      Menu()
   senao
      se (opcao <> 0) entao
         LimpaTela
         Escreval("_________________________________")
         Escreval("              DESTINOS           ")
         Escreval("_________________________________")
         Escreval("")
         Escreval("Origem: ", destinoOrigem[opcao])
         Escreval("")
         Escreval("Destino: ", destinoDestino[opcao])
         Escreval("")
         Escreval("Hora: ", destinoHora[opcao])
         Escreval("")
         Escreval("Data: ", destinoData[opcao])
         Escreval("")
         Escreval("Portão: ", destinoPortao[opcao])
         Escreval("")
         Escreval("Terminal: ", destinoTerminal[opcao])
         Escreval("")
         Escreval("País: ", destinoPais[opcao])
         Escreval("")
         Escreval("_________________________________")
         Escreval("[ ENTER ] - voltar menu")
         Escreval("")
         Escreva("opção -> ")
         Leia(opcao)

         se((opcao <> 0) ou (opcao <> 1)) entao
            LimpaTela
            Menu()
         senao
            se(opcao = 0)entao
               LimpaTela
               consultaDestino()
            senao
               se(opcao = 1) entao
                  LimpaTela
                  Menu()
               fimse
            fimse
         fimse
      fimse
   fimSe
fimProcedimento

procedimento detalhesCliente()
inicio
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("para mais detalhes, informar o ID.")
   Escreval("_________________________________")
   Escreval("[  0 ] - voltar")
   Escreval("")
   Escreva("opção ->")
   Leia(opcao)

   se (opcao = 0) entao
      LimpaTela
      Menu()
   senao
      se (opcao <> 0) entao
         LimpaTela
         Escreval("_________________________________")
         Escreval("              CLIENTES             ")
         Escreval("_________________________________")
         Escreval("")
         Escreval("Nome: ", clienteNome[opcao])
         Escreval("Idade: ", clienteIdade[opcao])
         Escreval("Sexo: ", clienteSexo[opcao])
         Escreval("Contato: ", clienteTelefone[opcao])
         Escreval("")
         Escreval("_________________________________")
         Escreval("[ 0 ] - voltar")
         Escreval("[ 1 ] - menu")
         Escreval("")
         Escreva("opção -> ")
         Leia(opcao)
         se(opcao = 0)entao
            LimpaTela
            consultaClinte()
         senao
            se(opcao = 1) entao
               LimpaTela
               Menu()
            fimse
         fimse
      fimse
   fimSe
fimProcedimento

procedimento Sobre()
inicio

   Escreval("_________________________________")
   Escreval("              SOBRE             ")
   Escreval("_________________________________")
   Escreval("")

   Escreval("Empresa: Recode Pro")
   Escreval("")
   Escreval("Desenvolvedor: Naassom Pedro")
   Escreval("")
   Escreval("Licença: Free Limitado a 2 cadastros")
   Escreval("")
   Escreval("_________________________________")
   Escreval("[ ENTER ] - menu")
   Escreval("")
   Escreva("opção ->")
   Leia(opcao)
   se(opcao = 0) entao
      LimpaTela
      Menu()
   fimse
fimProcedimento

procedimento Welcome()
inicio
   Escreval("OBSERVAÇÕES INICIAIS")
   Escreval("__________________________________")
   Escreval("")
   Escreval("Seja bem vindo(a)")
   Escreval("")
   Escreval("1.")
   Escreval("Para uma avaliação mais rápida e objetiva,")
   Escreval("o programa está limitado a 2 cadastros.")
   Escreval("")
   Escreval("")
   Escreval("2.")
   Escreval("Usando Pseudocódigo:")
   Escreval("Usando conceitos de programação estruturada (Vetor),")
   Escreval("criar em pseudocódigo um menu para simular um")
   Escreval("cadastro para uma agência de viagens com os seguintes dados:")
   Escreval("2.1 - cadastro de clientes;")
   Escreval("2.2 - cadastro de destinos")
   Escreval("2.3 - também uma consulta para cada estrutura de dados.")
   Escreval("")
   Escreval("_________________________________")
   Escreval("[ ENTER ] - continuar")
   Leia(opcao)
   LimpaTela
fimProcedimento

inicio
   Welcome()
   Menu()

fimalgoritmo
