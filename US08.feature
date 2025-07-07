Feature: US08 - Apagado automático de dispositivo
Como usuario quiero que la aplicación me permita programar el apagado automático de
ciertos dispositivos conectados a mi red cuando no estén en uso o cuando se detecte un
consumo anómalo, para ahorrar energía. 

Scenario: ES01 - apagado automático 
TA01
Given que el <usuario> a elegido cuales son los <dispositivos> que se <apagaran>
When la hora <concuerde> con la <hora de apagado> guardada 
Then el sistema debe mandar una <notificacion> de <confirmacion de apagado>.

Examples:
  | usuario | dispositivos | apagado de dispositivo |
  | Mateo   | Televisor    | confirmación de apagado|
  | Carla   | Lavadora     | confirmación de apagado|

Scenario: ES02 - confirmación automática 
TA02
Given que el <usuario> a recibido la <notificacion> de <confirmacion> 
When <confirme> el <apagado> o pase un periodo de tiempo sin respuesta 
Then el <sistema> debe <apagar> todos los <dispositivos seleccionados> anteriormente 

Examples:
  | usuario |   dispositivo sin uso   | 
  | Lizbeth | Apagado automaticamente |                  
  | Paola   | Apagado automaticamente |                  
