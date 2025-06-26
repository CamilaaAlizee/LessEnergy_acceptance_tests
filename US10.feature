Feature: US10 - Detección automática de dispositivos
Como usuario, quiero que la app detecte nuevos dispositivos IoT conectados a mi
red y me permita agregarlos fácilmente al monitoreo.

Scenario: ES01 - Agregar dispositivos 
TA01
Given que el [usuario] se encuentra en el apartado de [agregar dispositivos] 
And la aplicación ha realizado un [escaneo] de los posibles [dispositivos] a [evaluar] 
And [muestra] esos [dispositivos] como [lista] 
When [escoja] alguno de los dispositivos 
Then el [sistema] debe mostrarlo como seleccionado para [monitorear] y [agregarlos] a la lista de los [dispositivos monitoreados]. 

Examples:
  | usuario | dispositivo seleccionado | dispositivos monitoreados            |
  | Lucia   | Microondas               | Microondas agregado al monitoreo     |
  | Anahí   | Lavadora                 | Lavadora agregada al monitoreo       |

Scenario: ES02 - Quitar dispositivos 
TA02
Given que el [usuario] puede ver la lista de los [dispositivos detectados] por la app 
When [escoja] alguno de los [dispositivos] ya [seleccionados] para [monitorear] 
Then el [sistema] debe [mostrarle] un [mensaje de confirmación], antes de [quitarlo] de los [dispositivos monitoreados]. 

Examples:
  | usuario  | dispositivo a quitar | mensaje mostrado                   |
  | Alessia  | Refrigerador         | ¿Desea quitar este dispositivo?    |
  | Abraham  | Microondas           | ¿Desea quitar este dispositivo?    |
