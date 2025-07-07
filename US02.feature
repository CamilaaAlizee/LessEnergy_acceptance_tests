Feature: US02 - Configuración de fuentes de consumo 
Como usuario, quiero modificar el orden en el que se visualizan las fuentes de consumo eléctrico, 
ya sea del más alto al más bajo o viceversa, para modificarlo según mi criterio.

Scenario: ES01 - Visualización de consumo ordenado mayor a menor  
TA01
Given que el <usuario> accede a la sección de <consumo por dispositivo>  
And el <sistema> ha <registrado el consumo> por cada electrodoméstico  
When el <usuario> elige <ordenar los dispositivos> por consumo mayor  
Then se mostrará la <lista ordenada> de mayor a menor consumo  

Examples:
  | usuario | dispositivos               | consumo registrado  | orden seleccionado     | resultado esperado                        |
  | Mary    | Refrigeradora, Foco        | 120 kWh, 20 kWh     | Mayor a menor consumo  | Refrigeradora (120 kWh), Foco (20 kWh)    |
  | Pedro   | Aire acondicionado, Laptop | 140 kWh, 65 kWh     | Mayor a menor consumo  | Aire (140 kWh), Laptop (65 kWh)           |

Scenario: ES02 - Visualización de consumo ordenado menor a mayor
TA02
Given que el <usuario> accede a la <seccion de consumo por dispositivo>
And el <sistema> ha <registrado el consumo> por cada electrodoméstico
When el <usuario> elige <ordenar los dispositivos> por consumo menor
Then se mostrará la <lista ordenada> de menor a mayor consumo

Examples:
  | usuario | dispositivos                | consumo registrado | orden seleccionado     | resultado esperado                        |
  | Mary    | Televisor, Cargador         | 60 kWh, 10 kWh     | Menor a mayor consumo  | Cargador (10 kWh), Televisor (60 kWh)     |
  | Pedro   | Router, Aire acondicionado  | 15 kWh, 130 kWh    | Menor a mayor consumo  | Router (15 kWh), Aire (130 kWh)           |
