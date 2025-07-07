Feature: US01 - Precisión al encontrar picos de consumo
Como usuario, quiero que la aplicación actualice los datos de consumo eléctrico con una latencia 
máxima de 5 segundos, para identificar posibles picos de consumo apenas aparezcan.

Scenario: ES01 - Actualización en tiempo real 
TA01
Given que el <usuario> ha <iniciado sesion> en la aplicación
And el <sistema> está conectado al <medidor inteligente>
When el <consumo electrico> varía
Then la <aplicacion> debe actualizar los <datos en pantalla> con una latencia máxima de 5 segundos

Examples:
  | usuario | estado del medidor | consumo eléctrico | mensaje mostrado                      |
  | Lucía   | Conectado          | 4.2 kWh/min       | Datos actualizados correctamente      |
  | Diego   | Conectado          | 3.8 kWh/min       | Datos actualizados correctamente      |


Scenario: ES02 - Detección de pico visible en la interfaz 
TA02
Given que la <aplicacion> está mostrando los <datos en tiempo real>  
When se detecta un <aumento repentino> que supera el <umbral predefinido>  
Then se debe resaltar el <pico> en el <grafico>  
And mostrar un <mensaje> indicando “Pico de consumo detectado”  

Examples:
  | usuario | consumo detectado  | umbral | mensaje                      |
  | Lucía   | 9.8 kWh/min        | 7.5    | Pico de consumo detectado    |
  | Diego   | 10.2 kWh/min       | 7.0    | Pico de consumo detectado    |


