Feature: US09 - Personalizar apagado automático
Como usuario quiero la aplicación me permita configurar los parámetros que rigen el
apagado automático de dispositivos, para que esta función se adecue a mi estilo de vida.

Scenario: ES01 - Dispositivos a apagar
TA01
Given que el <usuario> se encuentra en el apartado de selección de <dispositivos a apagar> 
And puede <visualizar> la lista de todos los <dispositivos conectados> y tienen la capacidad de ser apagados 
When <escoja> alguno de los <dispositivos no seleccionados> de la lista general 
Then el sistema debe mostrarlo como <seleccionado> para <apagar> 

Examples:
  | usuario | dispositivos a apagar | dispositivos conectados | dispositivo para apagar |
  | Cesar   | microondas            | televisor               |           x             |
  | Leonor  | refrigerador          | lavadora                |           x             |

Scenario: ES02 - Quitar dispositivos a apagar 
TA02
Given que el <usuario> se encuentra en el apartado de <seleccion de dispositivos a apagar> 
When <escoja> alguno de los <dispositivos ya seleccionados> 
Then el sistema debe <mostrarle> un <mensaje de confirmacion>, por si quiere <quitarle> la <etiqueta de seleccionado>.

Examples:
  | usuario | dispositivos a apagar | selección de dispositivo |           mensaje         |
  | Edith   | microondas            |           x              | confirmar si desea quitar |
  | Daniel  | televisor             |           x              | confirmar si desea quitar |

Scenario: ES03 - establecer hora para apagar
TA03
Given que el <usuario> se encuentra en el apartado de <seleccion de dispositivos> a apagar 
And puede visualizar la <caja de texto> con la <hora> que se encuentra sobre la lista de dispositivos 
When el <usuario> interactúe con la <caja de texto> hora  
Then el sistema debe <permitirle> ingresar <una hora> para tomarla como <referencia> al <apagar los dispositivos>.

Examples:
  | usuario | seleccion de dispositivos | hora de dispositivo apagado |
  | Alex    |    lavadora               |           23:45             |
  | Jhordan |    televisor              |           00:23             |