Feature: US06 - Acceso y Gestión de Políticas de Privacidad
Como usuario, quiero poder ver y gestionar las políticas de privacidad dentro de la 
aplicación para comprender cómo se manejan mis datos.

Scenario: ES01 - Visualización de políticas de privacidad 
TA01
Given que el <usuario> accede al <menú de configuración> 
When <selecciona> la opción <Politicas de privacidad> 
Then el sistema debe <mostrar> el <documento actualizado> con las <politicas vigentes> 
And <permitir> su lectura completa <sin restricciones>. 

Examples:
  |usuario |  configuración           |  
  | Luis   | Políticas de privacidad  |                  
  | Ana    | Políticas de privacidad  |                 

Scenario: ES02 - Gestión del consentimiento de uso de datos 
TA02
Given que el <usuario> revisa la <configuracion de privacidad> 
When <marca> o <desmarca> la casilla de <consentimiento> 
Then el sistema debe <guardar> esa <preferencia>
And <permitir> o <limitar> el uso de <datos personales> según lo <configurado>. 

Examples:
  |usuario | configuración de privacidad | consentimiento   |
  | Paúl   | Consentimiento              |  Si              |
  | Sofía  | Consentimiento              |  No              |
