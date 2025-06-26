Feature: US07 - Eliminación de Datos Personales
Como usuario, quiero tener control sobre mis datos y poder eliminar la información personal
 recopilada por la aplicación cuando quiera para estar seguro.

Scenario: ES01 - Eliminación de datos personales desde la aplicación 
TA01
Given que el [usuario] accede a la [sección de privacidad] 
When [selecciona] la opción ["Eliminar mis datos personales"] 
Then el [sistema] debe [solicitar] una [confirmación] 
And tras confirmar, [eliminar] toda la [información] personal [vinculada] al usuario.

Examples:
  |usuario |        privacidad             | 
  | Juan   | Eliminar mis datos personales |                  
  | Ada    | Eliminar mis datos personales |                  

Scenario: ES02 - Revocación del consentimiento 
TA02
Given que el [usuario] revisa la [sección de privacidad], 
When [desactiva] el [consentimiento] de [uso de datos] 
Then la app debe [deshabilitar] funciones que requieran esos datos y [guardar] la preferencia. 

Examples:
  | usuario |          privacidad            | 
  | Jeffry  | Consentimiento de uso de datos |                  
  | Xiomara | Consentimiento de uso de datos |                  