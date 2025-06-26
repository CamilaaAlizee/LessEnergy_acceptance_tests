Feature: US04 - Configuración de alto consumo
Como usuario quiero modificar el umbral estándar para que se considere un consumo alto,
para ajustarlo a mis preferencias y tomar decisiones más adecuadas según mi consumo.

Scenario: ES01 - Personalización del umbral
TA01
Given que el [usuario] accede a la [configuración de consumo]
When modifica el [valor del umbral de alerta]
Then el [sistema] debe aplicar el nuevo [valor] para futuras detecciones de consumo alto

Examples:
  | usuario | umbral personalizado | nuevo umbral aplicado |
  | Luis    | 120 kWh              | 120 kWh               |
  | Kel     | 95 kWh               | 95 kWh                |

Scenario: ES02 - Regresar valores predeterminados
TA02
Given que el [usuario] accede a la [configuración de consumo]
And el [usuario] tiene una [configuración personalizada]
When presiona el [botón] “Regresar valores predeterminados”
And acepta la [confirmación de cambios]
Then el [sistema] debe aplicar los [valores por defecto] para futuras detecciones de consumo alto

Examples:
  | usuario | configuración previa | valor por defecto aplicado |
  | Luis    | 120 kWh              | 100 kWh                    |
  | Kel     | 95 kWh               | 100 kWh                    |
