Feature: US30 - Explicación asistente IA 
Como usuario quiero que la aplicación me explique cómo efectuar las recomendaciones 
y resuelva mis posibles dudas para cumplir con ellas correctamente 

Scenario: ES01 - Explicación detallada de una recomendación
TA01
Given que el <usuario> ya conoce las <recomendaciones de ahorro>  
And se encuentra en el <apartado de asistente IA>  
When el <usuario> escribe el <nombre de la recomendacion>  
And pregunta <como realizarla>  
Then el <asistente IA> brindará una <serie de pasos> como <respuesta facil de comprender>

Examples:
  | usuario | nombre de la recomendación       | respuesta esperada                             |
  | Jhon    | Desenchufar electrodomésticos    | Se muestran pasos claros para desconectarlos   |
  | Andrés  | 	Uso eficiente del refrigerador | Se detallan pasos para ajustar temperatura     |

Scenario: ES02 - Resolución de dudas sobre los pasos sugeridos
TA02
Given que al <usuario> se le ha brindado una <serie de pasos> para realizar una <recomendacion>  
When el <usuario> escribe una <duda> sobre los <pasos> o la <recomendacion>  
Then el <asistente IA> brindará una <respuesta> facil de comprender

Examples:
  | usuario | duda formulada                             | respuesta esperada                              |
  | Jhon    | ¿Qué pasa si olvido desenchufar algo?      | Recomendación de soluciones alternativas        |
  | Andrés  | ¿Por qué debo desconectar el microondas?   | Expliación técnica y ahorro asociado explicados |


