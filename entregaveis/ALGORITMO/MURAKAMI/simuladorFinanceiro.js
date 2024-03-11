function comecarForm(){
    div_box.innerHTML = ` 

    <p class="box_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <p class="box_p"> Qual o valor médio de uma dose das vacinas transportadas?</p> 
    <input type="number" min="1" id="input_valorMedioVacina" class="box_input">
    <br>

        <button class="box_btInicio box_bt" onclick="pergunta1()">
            Próximo
        </button>
       
    `
}

function pergunta1(){
    valorMedioVacina = Number(input_valorMedioVacina.value)
    
    div_box.innerHTML = ` 
    
        <p class="box_titulo"> Responda as perguntas abaixo: </p> <br><br>

            <p class="box_p">  Quantas doses são armazenadas em uma caixa?</p> 
            <input type="number" min="1" id="input_qtdDose" class="box_input">
            <br>
    
            <button class="box_btInicio box_bt" onclick="pergunta2()">
                Próximo
            </button>

        `
    
    }

    function pergunta2(){
        qtdDose = Number(input_qtdDose.value)
    
        div_box.innerHTML = ` 
    
        <p class="box_titulo"> Responda as perguntas abaixo: </p> <br><br>
    
            <p class="box_p">  Quantas caixas são transportadas por mês?</p> 
            <input type="number" min="1" id="input_qtdCaixa" class="box_input">
            <br>
    
            <button class="box_btInicio box_bt" onclick="pergunta3()">
                Próximo
            </button>
        
        `
    }

    function pergunta3(){
        qtdCaixa = Number(input_qtdCaixa.value)
    
        div_box.innerHTML = ` 
    
        <p class="box_titulo"> Responda as perguntas abaixo: </p> <br><br>

            <p class="box_p">  Utiliza Caminhões Refrigerados para o transporte de vacinas?</p> 
    
            <div class="pai div_box2">
                <button class="box_btInicio box_btEscolha" onclick="pergunta5()">
                    Sim
                </button>
        
                <button class="box_btInicio box_btEscolha" onclick="pergunta4()">
                    Não
                </button>
            </div>
        `
    }

    function pergunta4(){
        div_box.innerHTML = ` 
    
        <p class="box_titulo"> Responda as perguntas abaixo: </p> <br><br>
 
            <p class="box_p">  Quantos caminhões são utilizados no transporte das  vacinas?</p> 
            <input type="number" min="1" id="input_qtdCaminhao" class="box_input">
            <br>
    
            <button class="box_btInicio box_bt" onclick="exibirDadosCaminhao()">
                Próximo
            </button>
        
        `
    }

    function exibirDadosCaminhao(){
        var qtdCaminhao = Number(input_qtdCaminhao.value)
        var valorCaminhao = qtdCaminhao * 410000

        div_box.innerHTML = `
        
        <p class="box_titulo"> Você Sabia?</p> <br>

        <p class="box_p"> O preço médio de um Caminhão Refrigerado de 29.000 km é de aproximadamente <b>R$410.000,00</b>. Ao utilizar nossos sensores, além de economizar <b>R$${valorCaminhao}</b>, sem precisar comprar Caminhões Refrigerados, você não corre o risco de perder vacinas por variação de temperatura!<br> Além disso...</p> 

        <button class="box_btInicio box_bt" onclick="exibirDadosPerda()">
            Próximo
        </button>
        
        `
    }

    function pergunta5(){
        div_box.innerHTML = ` 

        <p class="box_titulo"> Responda as perguntas abaixo: </p> <br><br>
    
            <p class="box_p"> Já utiliza algum tipo de sensor de temperatura e/ou umidade?</p> 

            <div class="pai div_box2">
                <button class="box_btInicio box_btEscolha" onclick="exibirDadosOMS()">
                    Sim
                </button>
        
                <button class="box_btInicio box_btEscolha" onclick="exibirDadosANVISA()">
                    Não
                </button>
            </div>
        `
    }

    function exibirDadosOMS(){

        div_box.innerHTML = ` 
    
        <p class="box_titulo"> Você Sabia?</p> <br>
    
            <p class="box_p"> De acordo com a Organização Mundial de Saúde (OMS), cerca de <b> 50% </b> das vacinas produzidas, em todo o mundo, chegam ao seu destino em condições precárias e inadequadas para uso. Aproximadamente <b>40%</b> desses problemas decorrem principalmente por variações de temperatura durante o <b>transporte</b>...</p> 
    
            <button class="box_btInicio box_bt" onclick="exibirDadosPerda()">
                Próximo
            </button>
        `
    }

    function exibirDadosANVISA(){
        div_box.innerHTML = ` 
    
        <p class="box_titulo"> Você Sabia?</p> <br>
    
            <p class="box_p"> De acordo com a Resolução da Anvisa (RDC Nº 430 -  Artigo 4º), diz que todas as partes envolvidas a produção, armazenagem, distribuição e <b>transporte</b> devem se responsabilizar pela qualidade e segurança dos medicamentos. O descumprimento das disposições constitui infração sanitária, levando à <b>multa</b>!</p> 

            <p class="box_p"> 
                Ao utilizar nossos sensores você pode reduzir esse risco. <br> Além disso...
            </p>
    
            <button class="box_btInicio box_bt" onclick="exibirDadosPerda()">
                Próximo
            </button>
        `
    }

    function exibirDadosPerda(){
        var dosesTotais =  qtdDose * qtdCaixa * 12
        var dosesPerdidas = dosesTotais * 0.4
        var dinheiroPerdido = (valorMedioVacina * dosesTotais) * 0.4

        div_box.innerHTML = ` 
    
        <p class="box_titulo">CUIDADO!</p> <br>
    
            <p class="box_p"> 
                Você está perdendo aproximadamente <b>${dosesPerdidas}</b> doses de vacinas por ano! Ou seja, <b>R$${dinheiroPerdido}</b> por ano! 
            </p> 
            <br>
            <p class="box_p">
                Ao utilizar nosso sensor inteligente, você poderá monitorar em tempo real a temperatura e umidade, podendo reduzir esse valor em até <b>40%</b> por variação de temperatura. <b>ADQUIRA JÁ!</b>
            </p>


            <button class="box_btInicio box_bt">
                <b>OBTER AGORA!</b>
            </button>
        `
    }

