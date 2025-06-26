Feature: US24 - Cambiar tema de la interfaz
Como usuario quiero cambiar entre tema (claro/oscuro) para sentirme más cómodo al usar la aplicación.

Scenario: ES01 - Cambio de tema exitoso
TA01
Given que el [usuario] tiene acceso a la [configuración de la aplicación]
And vea los [temas disponibles]
When el [usuario] seleccione el [tema de su preferencia]
Then la [interfaz] de la aplicación cambia al [tema seleccionado]

Examples:
  | usuario  | tema seleccionado | visualización del tema |
  | Camila   | Claro             | Tema Claro aplicado    |
  | Sebastián| Oscuro            | Tema Oscuro aplicado   |

Scenario: ES02 - Preferencia de tema registrada
TA02
Given que el [usuario] ha cambiado el [tema de la aplicación]
And el [sistema] registre esta [configuración]
When el [usuario] cierra y abre la aplicación
Then la [aplicación] mantendrá el [tema previamente elegido]

Examples:
  | usuario  | tema previamente elegido | configuración registrada |
  | Camila   | Oscuro                   | Sí                       |
  | Sebastián| Claro                    | Sí                       |
