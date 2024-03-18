info.innerHTML =
`<h3>💡Você Sabia?</h3><br>
<p>De acordo com a Organização Mundial de Saúde (OMS), cerca de <b> 50% </b> das vacinas produzidas, em todo o mundo, chegam ao seu destino em condições precárias e
inadequadas para uso.</p><br>
<p>Aproximadamente <b>40%</b> desses problemas decorrem principalmente por variações de temperatura durante o <b>transporte</b> de acordo com a Resolução da Anvisa
(RDC Nº 430 -  Artigo 4º), diz que todas as partes envolvidas a produção, armazenagem, distribuição e <b>transporte</b> devem se responsabilizar pela qualidade e segurança dos
medicamentos. O descumprimento das disposições constitui infração sanitária, levando à <b>multa</b>!</p>
`

function calcularSolucao() {
    var qtdEntrega = Number(inputQtdEntrega.value)
    var qtdLote = Number(inputQtdLote.value)
    var qtdVacina = Number(inputQtdVacina.value)
    var valorVacina = Number(inputValorVacina.value)

    var vacinaTotalAno = ((qtdVacina * qtdLote) * qtdEntrega) * 12
    // var vacinaPerdida = vacinaTotalAno * 0.4
    var dinheiroPerdido = (valorVacina * vacinaTotalAno) * 0.4

resolucao.innerHTML =
`<p>De acordo com os dados divulgados pela Anvisa, suas perdas nas entregas por variação de temperatura dão aproximadamente <b style=color:red>${vacinaTotalAno}</b> doses de vacinas por ano! Ou seja, <b style=color:red>R$${dinheiroPerdido}</b> por ano!</p><br>
Ao utilizar nosso sensor inteligente, você poderá monitorar em tempo real a temperatura e umidade, podendo reduzir esse valor em até <b>40%</b> por variação de temperatura. <a href="#" style="color: black"><b>ADQUIRA JÁ!</b></a></p>`}

