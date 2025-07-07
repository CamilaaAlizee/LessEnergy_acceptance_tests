Feature: US28 - Accesibilidad mejorada
Como usuario, quiero opciones de accesibilidad (tamaño de letra, etc.) para que la aplicación sea más inclusiva.

Scenario: ES01 - Ajuste de tamaño de texto
TA01
Given que el <usuario> tiene alguna <necesidad visual especifica>
And la <aplicacion> debe brindar una <buena experiencia>
When el <usuario> accede a la <configuracion> y ajusta el <tamano de letra>
Then el <texto de la aplicacion> se adaptará al <tamano seleccionado>

Examples:
  | usuario   | tamaño de letra elegido | resultado esperado                  |
  | Gumi      | Grande                  | Texto se muestra en tamaño grande   |
  | Robert    | Pequeño                 | Texto se muestra en tamaño pequeño  |
  | Lourdes   | Mediano                 | Texto se muestra en tamaño mediano  |
