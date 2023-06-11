# Cerradura Digital
Proyecto final de electrónica digital haciendo uso de una FPGA con Quartus

![Texto alternativo](img/ESCUDO.png)


**Laboratorio Electrónica Digital I**

**Proyecto Final: Cerradura Digital**

Programas de:

Ingeniería Eléctrica y Mecatrónica


**Felipe Cruz Vásquez**

**Juan Sebastian Perdomo Caicedo**

**Juan Diego Tovar Cárdenas**


Profesor:
**Diego Alexander Tibaduiza Burgos**


Materia:

Electrónica Digital I


Universidad Nacional de Colombia

Bogotá D.C.

Facultad de Ingeniería

2023


# Planteamiento del problema
## Identificación del problema

La poca seguridad que brindan las cerraduras tradicionales en el acceso a una casa en la ciudad de Bogotá. Las cerraduras tradicionales basan su seguridad en una llave que puede ser robada y duplicada, o la cerradura puede ser forzada y abierta de manera sencilla.

## Datos respecto al problema
+ Más de 6.000 Viviendas fueron robadas en Bogotá. (Infobae, I. (2022, December 31). Más de 6.000 Viviendas Fueron robadas en Bogotá. Retrieved April 30, 2023, from https://www.infobae.com/america/colombia/2022/12/31/mas-de-6000-viviendas-fueron-robadas-en-bogota/).
+ Aumentan los robos en casas según el informe del Ministerio del Interior. (Ficarazzi, G. (2023, January 27). Aumentan los robos en Casas según el informe del ministerio del interior. Retrieved April 30, 2023, from https://cuadernosdeseguridad.com/2022/12/aumentan-robos-casa/).
+ Los Robos con fuerza en viviendas aumentan un 22\%. (Jaenes, M. (2022, December 15). Los Robos con fuerza en viviendas aumentan un 22\% ¿Qué hacer en estos casos? Retrieved April 30, 2023, from https://www.lasexta.com/noticias/sociedad/robos-fuerza-viviendas-aumentan-22-que-hacer-estos-casos-20221215639b29a04954a50001c5813a.html).

## Análisis PESTAL
+ **Político:** Las políticas de regulación y control en la fabricación y venta de cerraduras pueden influir en la calidad y resistencia de estas. Además, las políticas de aplicación de una ley en torno al desarrollo de estas, pueden afectar la capacidad de las autoridades para prevenir y responder ante los problemas de seguridad en las residencias.
+ **Económico:** La poca seguridad de las cerraduras comunes permite una cantidad de robos a hogares mayor, lo cual se ve reflejado en gastos económicos para los afectados. Los ladrones generalmente se llevan cosas cuyo valor económico es alto, y las víctimas solo pueden recuperar lo robado comprando cosas nuevas, es decir, gastando dinero extra.      
+ **Social:** La percepción de inseguridad en Bogotá es alta, y muchas personas dependen de su cerradura como mayor elemento de seguridad entre su hogar y la calle. La falta de seguridad en las cerraduras puede aumentar la vulnerabilidad de los ciudadanos ante la delincuencia, lo que afecta su calidad de vida y su sensación de seguridad, por lo que el proyecto podría tener una buena acogida entre la población, especialmente en áreas de alto riesgo.
+ **Tecnológico:** La tecnología está en constante evolución y existen sistemas de cerraduras más avanzados y seguros que se están desarrollando y comercializando. Las cerraduras tradicionales no suelen aplicar tecnologías modernas para mantener la seguridad, ya que se basan en una llave que puede ser robada y duplicada fácilmente.
+ **Ambiental:** El proyecto no tiene un impacto directo en el medio ambiente.
+ **Legal:** A pesar de que existe la Ley 1801 de 2016 (Código Nacional de Policía y Convivencia), que establece sanciones para los propietarios de viviendas que no adopten medidas de seguridad adecuadas, como el uso de cerraduras seguras y el artículo 277 de este código establece la obligación de los propietarios de viviendas de mantener en buen estado las cerraduras y dispositivos de seguridad, no existe ningún organismo que vele por el cumplimento de estas normas. Además, en la sentencia C-519-07 de la Corte Constitucional de Colombia se menciona el derecho a la inviolabilidad del domicilio, que se resume en que un domicilio (vivienda, habitación, etc.) no puede ser invadida por otras personas sin la autorización del dueño.

## Antecedentes

La ciudad de Bogotá ha experimentado una creciente preocupación por la seguridad ciudadana en los últimos años, particularmente en relación con la delincuencia en los hogares y los robos.

Los informes indican que la mayoría de los robos en hogares en Bogotá ocurren durante el día, y la mayoría de los ladrones ingresan por la puerta principal.

Existen diferentes tipos de cerraduras, algunas más seguras que otras, y algunos fabricantes han desarrollado tecnologías más avanzadas para mejorar la seguridad de las cerraduras.

Sin embargo, la falta de conocimiento o de acceso a estas tecnologías por parte de algunos sectores de la población puede limitar su efectividad en la mejora de la seguridad en la ciudad. Además, la implementación de políticas públicas y regulaciones que establezcan los requisitos mínimos de seguridad para las cerraduras, y la promoción de tecnologías de seguridad más avanzadas y accesibles, pueden ser importantes para abordar el problema de la poca seguridad que brindan las cerraduras tradicionales en el acceso a una casa en Bogotá.

## Posibles soluciones
+ Modificar la normatividad relacionada con la fabricación e implementación de las cerraduras actuales para que estas cumplan con los mínimos estipulados en la Ley.
+ Crear y promover el uso de alarmas vinculadas con las estaciones de policía cercanas a los hogares con el objetivo de mejorar el tiempo de respuesta y contar con el apoyo de la fuerza pública.
+ Creación de nuevas cerraduras que brinden seguridad en las viviendas sin necesidad de depender tanto de la fuerza pública.

## Objetivos
+ **Principal**
    + Diseñar un sistema que mejore la seguridad, sobre una puerta, para el ingreso de personas.
+ **Secundarios**
    + Aplicar reconocimiento biométrico de huellas dactilares.
    + Diseñar e implementar un sistema de contraseña con pulsadores.
    + Permitir o restringir el ingreso de personas mediante un proceso de autenticación.
    + Informar el estado de autenticación con señal lumínica.

## Actores y roles del proyecto
+ Fabricantes de cerraduras: diseñan, producen y distribuyen cerraduras para uso residencial y comercial.
+ Residentes o consumidores: Utilizan las cerraduras para proteger sus propiedades, son los clientes del producto y el colectivo principal del problema.
+ Ladrones: Causantes de los robos a propiedades y bienes debido a la falta de seguridad de las cerraduras.
+ Ingenieros: Responsables del diseño y desarrollo del proyecto (cerraduras).
+ Proveedores y fabricantes: Producen y suministran los materiales para el desarrollo del proyecto y suministran las cerraduras actuales al mercado.
+ Distribuidores y vendedores: Venden y reparten para los diferentes puntos de venta las cerraduras.
+ Gerente del proyecto: Coordina todos los aspectos del proyecto y es responsable de garantizar la seguridad y eficacia del producto final.

## Presupuesto
El presupuesto estimado para un mes se presenta a continuación:

| Elemento                             | Precio      |
| ------------------------------------ | ----------- |
| **Ingeniero 1**                      | \$2'500.000 |
| **Ingeniero 2**                      | \$2'500.000 |
| **Ingeniero 3**                      | \$2'500.000 |
| Tarjeta de desarrollo FPGA           | \$659.974   |
| Módulo LED RGB                       | \$5.018     |
| Micro Servomotor SG90 9G             | \$13.328    |
| Servicio de Impresión 3D             | \$20.000    |
| Módulo lector de huella As608        | \$56.000    |
| Arduino UNO                          | \$53.550    |
| Insumos (PC, Internet, Luz, etc.)    | \$3'000.000 |
| **Total**                            | **\$11'303.550** |
