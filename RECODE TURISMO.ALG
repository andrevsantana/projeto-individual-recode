Algoritmo "recode turismo"
// Disciplina   : Projeto individual 1
// Descri��o   : Cadastro de Clientes
// Autor(a)    : Andr� Vin�cius Santana
// Data atual  : 12/07/2022
Var
  clienteExistente: logico
  i, j: inteiro
  op��o: inteiro
  digite: logico
  cliente: personagem
  contato: vetor [0..1] de caracter
  motivo: vetor [0..1] de caracter
  destino: vetor [0..2] de caracter
  clientes : vetor [0..1] de caracter
  documento: vetor [0..1] de caracter
  resid�ncia: vetor [0..1] de caracter
Procedimento inicializa ()


Inicio

  / cadastro do cliente...
enquanto opcao <> 5 faca
      escreval ("BEM-VINDO(A) A AG�NCIA ED-TRAVEL GO")
      escrita ()
      escreval ("(1) Cadastrar Cliente")
      escreval ("(2)Pesquisar Cliente")
      escreval ("(3)Clientes Cadastrados")
      escreval ("(4)Destinos e ofertas")
      escreval ("(5) Sair")
      escreva ("Escolher a op��o desejada: ")
      leia (op��o)

   se opcao = 1 entao
   limpatela
    cadastrar_cliente()
   fim de semana

   se opcao = 2 entao
   limpatela
    pesquisar_cliente ()
    fim de semana

    se opcao = 3 entao
    limpatela
    banco_de_dados()
    fim de semana

    se opcao = 4 entao
    limpatela
    ofertas_destino()
    fim de semana

    se opcao = 5 entao
      para i de 0 at� 1 faca
      clientes[i] <-"x"
      fimpara
      escrita ()
      escreval ("Sistema encerrado, Obrigado at� a pr�xima!")
      leia (entre)
      limpatela
    fim de semana


    se opcao > 5 entao
    escrita ()
    escreval("Op��o inv�lida, aperte enter e escolha uma op��o entre 1 e 5.")
    leia (entre)
    limpatela
    fim de semana


fimenquanto
fimprocedimento


procedimento cadastrar_cliente()
inicio


escreval ("Cadastro do cliente:")
escrita ()


para i de 0 ate 1 fachada
     se (clientes[i]="")entao
     escreva("Nome do(a) cliente: ")
     leia(clientes[i])
     escreva("Documento: ")
     leia(documento[i])
     escreva("Resid�ncia: ")
     leia(resid�ncia[i])
     escreva("Contato: ")
     leia(contato[i])
     escreva("Motivo da viagem: ")
     leia(motivo[i])
     eu <- i+1
     escrita ()
     escreval (" ------------------------------------------ ")
     escreval ("++++++Cadastro realizado com sucesso!++++++++")
     escreval (" ------------------------------------------ ")
     escrita ()
     escreval ("Aperte enter para voltar ao menu principal!")
     leia (entre)
     limpatela
     inicializa ()
fim de semana
fimpara
fimprocedimento


procedimento banco_de_dados()
inicio

se clientes[i] = "" entao
  escrita ()
  escreval ("Nenhum cliente cadastrado!")
  escrita ()
senao
  escreval ("Clientes Cadastrados:")
  escrita ()
  para i de 0 ate 1 fachada
   escrita ()
   escrita ()
   escreval("Nome do(a) cliente: ", clientes[i])
   escreval("Documento: ", documento[i])
   escreval("Resid�ncia: ", residencia[i])
   escreval("Contato: ", contato[i])
   escreval("Motivo da viagem: ", motivo[i])
   escreval()
   fimpara
fim de semana
escreval ("Aperte enter para voltar ao menu principal.")
leia (entre)
limpatela
inicializa ()
limpatela
fimprocedimento

procedimento pesquisa_cliente ()
inicio


escreva ("Digite o nome do(a) cliente que deseja pesquisar: ")
leia (cliente)
clienteExistente <- falso
para i de 0 ate 1 fachada
se cliente=clientes[i] entao
clienteExistente <- verdadeiro
escreval("Nome do(a) cliente: ", clientes[i])
escreval("Documento: ", documento[i])
escreval("Resid�ncia: ", residencia[i])
escreval("Contato: ", contato[i])
escreval("Motivo: ", motivo[i])
escreval()
escreval ("Cliente encontrado")
escrita ()
eu <- 1
escreval ("Aperte enter para voltar � tela inicial.")
leia (entre)
fim de semana
fimpara
se clienteExistente = falso entao
escrita ()
escrita ()
escreval ("Cliente inexistente ou op��o inv�lida! Favor verificar as informa��es!")
leia (entre)
fim de semana
limpatela
inicializa ()
fimprocedimento




procedimento ofertas_destino ()
inicio

escreva ("Digite o nome do(a) cliente")
escreva (" que deseja escolher o destino de 2022: ")
escrita ()
leia (cliente)
para i de 0 ate 1 fachada
  se cliente=clientes[i] entao
   escreval("Nome do(a) cliente: ", clientes[i])
   escreval("Documento: ", documento[i])
   escreval("Resid�ncia: ", residencia[i])
   escreval("Contato: ", contato[i])
   escreval("Motivo da viagem: ", motivo[i])
   escreval()
   escreval()
   escreval ("********************************************")
   escreval ("*Destinos e ofertas dispon�veis para 2022: *")
   escreval ("********************************************")
   escrita ()
   escreval ("(1)Pacote 10 Dias BRASIL: R$ 3.500,00 por pessoa.")
   escreval ("(2)Pacote 10 Dias �FRICA: R$ 7.500,00 por pessoa.")
   escreval ("(3)Pacote 10 Dias JAP�O: R$ 9.500,00 por pessoa.")
   escreval ("(4)Pacote 10 Dias EUA: R$ 4.500,00 por pessoa.")
   escreval ("(5)Pacote 10 Dias SU��A: R$ 6.500,00 por pessoa.")
   escrita ()
   escreval ("Escolher a op��o desejada: ")
     leia (destino[j])
     eu <- i+j
   limpatela
   escreval ("")
   escreval ("Escola realizada com sucesso!")
   escreval ("")
   escreval ("Aperte enter para voltar � tela inicial.")
   leia (entre)
   limpatela
   inicializa ()
  senao
  escrita ()
  escreval ("Cliente inexistente ou op��o inv�lida! Favor verificar os dados!")
  leia (entre)
  limpatela
fim de semana
  limpatela
  inicializa ()



fimpara
limpatela
fimprocedimento


inicio
      inicializa ()
fimalgoritmo

Fimalgoritmo