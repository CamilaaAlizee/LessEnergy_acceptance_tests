Feature: US03 - Detección del grado de alerta en las fuentes de consumo
Como usuario, quiero que la aplicación me muestre el grado de alerta de cada electrodoméstico o área de mi 
casa (alto, medio o bajo), para poder tomar decisiones sobre su uso y optimizar mi consumo.

Scenario: ES01 - Visualización de niveles de alerta
TA01
Given que el <usuario> se encuentra en la <sección de consumo por dispositivo>
And el <usuario> visualiza la <lista de dispositivos conectados>
When el <consumo> supera ciertos <umbrales>
Then debe mostrarse un <icono de nivel de alerta> alto, medio, bajo
And cada <casilla de dispositivo> se pinta con un <color> correspondiente

Examples:
  | usuario | dispositivo     | consumo actual | umbral alerta | nivel de alerta | color indicador |
  | Katy    | Horno eléctrico | 160 kWh        | 120 kWh       | Alto            | Rojo            |
  | Jason   | Laptop          | 45 kWh         | 100 kWh       | Bajo            | Verde           |
  | María   | Lavadora        | 100 kWh        | 100 kWh       | Medio           | Amarillo        |

Scenario: ES02 - Detalles de dispositivo
TA02
Given que el <usuario> está observando las <alertas> en la lista de dispositivos
When el <usuario> presione sobre un <dispositivo de la lista>
Then se debe mostrar un <panel con informacion> adicional
And el <panel> debe mostrar el <valor exacto de kWh> y un <grafico>

Examples:
  | usuario | dispositivo     | consumo actual | contenido del panel                                      |
  | Katy    | Horno eléctrico | 160 kWh        | Consumo: 160 kWh / Gráfico de sobrepaso de umbral        |
  | Jason   | Laptop          | 45 kWh         | Consumo: 45 kWh / Gráfico en zona segura                 |
  | María   | Lavadora        | 110 kWh        | Consumo: 110 kWh / Gráfico con advertencia visual        |


