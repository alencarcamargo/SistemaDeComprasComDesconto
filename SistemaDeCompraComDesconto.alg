Algoritmo "SistemaDeCompra"

Var
   saldo, preco, saldo_Restante, desconto, total : real



Inicio
   escreva ("Digite o saldo disponivél: ")
   leia (saldo)
   enquanto (saldo < 0) faca
      escreval("Saldo invalido")
      escreva("Digite um novo saldo: ")
      leia (saldo)
   fimenquanto
   escreva ("Digite o valor do produto: ")
   leia (preco)
   enquanto (preco <= 0) faca
      escreval("Valor do produto invalido ")
      escreva("Digite um valor valido: ")
      leia (preco)
   fimenquanto

   se (preco >= 200) e ( preco <= 499.99) entao
      desconto <- preco * 0.10
      escreval("Valor do desconto é: R$ ", desconto:8:2)
   fimse
   se (preco >=500) então
      desconto <- preco * 0.15
      escreval("valor do desconto é: R$ ", desconto:8:2)
      fimse
      total <- preco - desconto
      escreval("O valor total é: R$ ", total:8:2)
      se (preco < 200) entao
      total <- preco
      escreval("Valor sem desconto é: R$ ", total)
   fimse


   se (saldo >= total) então
      escreval("Compra autorizada")
      saldo_restante <- saldo - total
      escreval ("Saldo restante: R$ ", saldo_restante :8:2)
   senao
      escreval ("Compra negada por falta de saldo")
   fimse

Fimalgoritmo