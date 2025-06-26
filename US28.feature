Feature: US28 - Accesibilidad mejorada
Como usuario, quiero opciones de accesibilidad (tamaño de letra, etc.) para que la aplicación sea más inclusiva.

Scenario: ES01 - Ajuste de tamaño de texto
TA01
Given que el [usuario] tiene alguna [necesidad visual específica]
And la [aplicación] debe brindar una [buena experiencia]
When el [usuario] accede a la [configuración] y ajusta el [tamaño de letra]
Then el [texto de la aplicación] se adaptará al [tamaño seleccionado]

Examples:
  | usuario   | tamaño de letra elegido | resultado esperado                  |
  | Gumi      | Grande                  | Texto se muestra en tamaño grande   |
  | Robert    | Pequeño                 | Texto se muestra en tamaño pequeño  |
  | Lourdes   | Mediano                 | Texto se muestra en tamaño mediano  |
