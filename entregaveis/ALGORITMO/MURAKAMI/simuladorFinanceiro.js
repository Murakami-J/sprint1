function comecarForm(){
    div_box.innerHTML = ` 

    <p class="p_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <div class="div_box2">
        <p class="p_p1"> Qual o valor médio de uma dose das vacinas transportadas?</p> 
        <input type="number" min="1" id="input_valorMedioVacina">
        <br>

        <button class="box_bt" onclick="pergunta1()">
            Próximo
        </button>
       
    </div>
    `
}

function pergunta1(){
valorMedioVacina = Number(input_valorMedioVacina.value)

div_box.innerHTML = ` 

    <p class="p_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <div class="div_box2">
        <p class="p_p1">  Quantas doses são armazenadas em uma caixa?</p> 
        <input type="number" min="1" id="input_qtdDose">
        <br>

        <button class="box_bt" onclick="pergunta2()">
            Próximo
        </button>
    
    </div>
    `

}

function pergunta2(){
    qtdDose = Number(input_qtdDose.value)

    div_box.innerHTML = ` 

    <p class="p_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <div class="div_box2">
        <p class="p_p1">  Quantas caixas são transportadas?</p> 
        <input type="number" min="1" id="input_qtdCaixa">
        <br>

        <button class="box_bt" onclick="pergunta3()">
            Próximo
        </button>
    
    </div>
    `

}

function pergunta3(){
    qtdCaixa = Number(input_qtdCaixa.value)

    div_box.innerHTML = ` 

    <p class="p_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <div class="div_box2">
        <p class="p_p1">  Utiliza Caminhões Refrigerados para o transporte de vacinas?</p> 

        <button class="box_btEscolha" onclick="pergunta4()">
            Sim
        </button>

        <button class="box_btEscolha" onclick="exibirPrecoCaminhao()">
            Não
        </button>
    
    </div>
    `
    
}

function pergunta4(){
    div_box.innerHTML = ` 

    <p class="p_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <div class="div_box2">
        <p class="p_p1">  Quantos quilômetros são percorridos até a entrega das  vacinas?</p> 
        <input type="number" min="1" id="input_qtdKM">
        <br>

        <button class="box_bt" onclick="pergunta6()">
            Próximo
        </button>
    
    </div>
    `
}

function pergunta6(){
    qtdKM = Number(input_qtdKM.value)

    div_box.innerHTML = ` 

    <p class="p_titulo"> Responda as perguntas abaixo: </p> <br><br>

    <div class="div_box2">
        <p class="p_p1"> Já utiliza algum tipo de sensor de temperatura e/ou umidade?</p> 

        <button class="box_btEscolha" onclick="exibirDadosOMS()">
            Sim
        </button>

        <button class="box_btEscolha" onclick="exibirDadosANVISA()">
            Não
        </button>
    
    </div>
    `
}

function exibirDadosOMS(){

    div_box.innerHTML = ` 

    <p class="p_titulo2"> Você Sabia?</p> <br>

    <div class="div_box3">
        <p class="p_p1"> De acordo com a Organização Mundial de Saúde (OMS), cerca de <b> 50% </b> das vacinas produzidas, em todo o mundo, chegam ao seu destino em condições precárias e inadequadas para uso. Aproximadamente <b>40%</b> desses problemas decorrem principalmente por variações de temperatura durante o <b>transporte</b>...</p> 

        <button class="box_bt" onclick="">
            Próximo
        </button>
    
    </div>
    `

}