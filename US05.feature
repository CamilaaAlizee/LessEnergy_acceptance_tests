Feature: US05 - Cifrado y protección de datos
Como usuario quiero que la información, como datos de consumo e identificación de
dispositivo esté cifrada y protegida para reconocer accesos no autorizados.

Scenario: ES01 - Cifrado de datos personales 
TA01
Given que el [usuario] ha ingresado [datos personales] y de [consumo] 
When la información se [almacena] en la base de datos 
Then debe ser [cifrada] mediante un algoritmo seguro.

Examples:
  |usuario     |datos personales   | datos de consumo |
  |  Lucia     |     90807241      | 86 kWh/mes       |
  |  José      |     43215678      | 93 kWh/mes       |

Scenario: ES02 - Bloqueo ante intento de acceso no autorizado 
TA02
Given que un tercero intenta [acceder] sin [credenciales válidas] 
When el sistema [detecta] el intento 
Then debe [bloquear el acceso] y [registrar el evento] en el historial de seguridad 

Examples:
  |usuario | credencial no identificado |              mensaje                 |
  | Lucía  | luc123@gmail.com           |  Acceso bloqueado, evento registrado |
  | Maia   | Maia@gmail.com             |  Acceso bloqueado, evento registrado |

