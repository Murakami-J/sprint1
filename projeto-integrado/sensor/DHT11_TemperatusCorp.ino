// Declaração de variáveis e bibliotecas
#include "DHT.h"
#define dht_type DHT11

int dht_pin = A1;
DHT dht_1 = DHT(dht_pin, dht_type);


// Sincronismo na conexão entre o arduino e a máquina
void setup() {
  Serial.begin(9600);
  dht_1.begin();
}

// Função de loop para mostrar os dados na tela
void loop() {
  float umidade = dht_1.readHumidity();
  float temperatura = dht_1.readTemperature();
  if(isnan(temperatura) or isnan(umidade)){
    Serial.println("Erro ao ler"); 
  } else {
    Serial.print(temperatura - 26);
    Serial.print(" ");
    Serial.println(umidade - 17);
    
    
  }
  delay(2000);
}
