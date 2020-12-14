# Exploratory-Proyect1
## Introducción
Esta tarea utiliza datos del repositorio de aprendizaje automático de UC Irvine , un repositorio popular para conjuntos de datos de aprendizaje automático. En particular, utilizaremos el "Conjunto de datos de consumo de energía eléctrica de un hogar individual" que he puesto a disposición en el sitio web del curso:

1. Conjunto de datos : consumo de energía eléctrica [20 Mb]

2. Descripción : Mediciones del consumo de energía eléctrica en un hogar con una frecuencia de muestreo de un minuto durante un período de casi 4 años. Están disponibles diferentes magnitudes eléctricas y algunos valores de submedición.

Las siguientes descripciones de las 9 variables en el conjunto de datos se tomaron del sitio web de la UCI :

1. Fecha : fecha en formato dd / mm / aaaa
2. Hora : hora en formato hh: mm: ss
3. Potencia_activa_global : potencia activa promedio por minuto global del hogar (en kilovatios)
4. Potencia_reactiva_global : potencia reactiva promediada por minuto global de los hogares (en kilovatios)
5. Voltaje : voltaje promediado por minutos (en voltios)
6. Intensidad_global : intensidad de corriente promedio por minuto global del hogar (en amperios)
7. Sub_metering_1 : submedición de energía nº 1 (en vatios-hora de energía activa). Corresponde a la cocina, que contiene principalmente lavavajillas, horno y microondas (los fogones no son eléctricos sino de gas).
8. Sub_metering_2 : submedición de energía nº 2 (en vatios-hora de energía activa). Corresponde al lavadero, que contiene una lavadora, una secadora, un frigorífico y una luz.
9. Sub_metering_3 : submedición de energía nº 3 (en vatios-hora de energía activa). Corresponde a un calentador de agua eléctrico y un acondicionador de aire.

## Cargando los datos
Al cargar el conjunto de datos en R, tenga en cuenta lo siguiente:

* El conjunto de datos tiene 2,075,259 filas y 9 columnas. Primero calcule una estimación aproximada de cuánta memoria requerirá el conjunto de datos antes de leer en R. Asegúrese de que su computadora tenga suficiente memoria (la mayoría de las computadoras modernas deberían estar bien).

* Solo usaremos datos de las fechas 2007-02-01 y 2007-02-02. Una alternativa es leer los datos solo de esas fechas en lugar de leer todo el conjunto de datos y realizar subconjuntos de esas fechas.

* Puede resultarle útil convertir las variables de fecha y hora en clases de fecha / hora en R usando las funciones strptime()y as.Date().

* Tenga en cuenta que en este conjunto de datos los valores perdidos se codifican como ?.

## Hacer tramas

Nuestro objetivo general aquí es simplemente examinar cómo varía el uso de energía de los hogares durante un período de 2 días en febrero de 2007. Su tarea es reconstruir las siguientes parcelas, todas las cuales fueron construidas usando el sistema de trazado base.

Primero deberá bifurcar y clonar el siguiente repositorio de GitHub: https://github.com/rdpeng/ExData_Plotting1

Para cada parcela debes

* Construya el gráfico y guárdelo en un archivo PNG con un ancho de 480 píxeles y una altura de 480 píxeles.

* Nombrar cada uno de los archivos de trazado como plot1.png, plot2.png, etc.

* Crear un archivo de código R separado ( plot1.R, plot2.R, etc.) que construye la trama correspondiente, es decir el código en plot1.Rconstrucciones de la plot1.pngtrama. Su archivo de código debe incluir código para leer los datos para que la trama se pueda reproducir por completo. También debe incluir el código que crea el archivo PNG.

* Agregue el archivo PNG y el archivo de código R a su repositorio de git

Cuando haya terminado con la tarea, envíe su repositorio de git a GitHub para que la versión de GitHub de su repositorio esté actualizada. Debe haber cuatro archivos PNG y cuatro archivos de código R.

