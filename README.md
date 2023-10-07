 * Linkedin: https://www.linkedin.com/in/robruschini/ 📢
   # 🏍️ 🚨 Proyecto_siniestros_viales 🚗🚦
 ## Período comprendido entre el 2016 | 2021 en la Ciudad Autónoma de Buenos Aires 📅
## 💻 Data Analyst -  Dashboard💡

![image](https://github.com/RosanaBruschini/Proyecto_siniestros_viales/assets/110840020/de660f66-9a6d-4f19-a20d-3f0228cc944c)

# Detalle de archivos/carpeta 📚
* Carpeta (imágenes): imagenes ilustrativas(png/jpg), PDF archivo complementario como fuente de información de contexto.
* Archivos
* homicidios.xlsx : archivo original
* homicidiosEDA.ipynb : se transforma en DF para realizar ETL y EDA, luego a csv.
* df_hechos_victimas.csv: resultado del archivo homicidiosEDA.ipynb, para trabajar métricas y KPIs (se realizan métricas)
* carga_incremental: se generón la conexión y carga a MsQL
* proyecto_pbi.sql: archivo creado con el DATABASE y estructura de la tabla.
* KPIs.ipynb : se realiza la medición de 3 KPIs y la construcción de pequeños archivos con métricas para ser transformado a csv.
* KPIs1_df.csv : se un csv con las variables obtenidas 
* KPIs_3.csv : se un csv con las variables obtenidas 
* df_KPI2.csv :se un csv con las variables obtenidas 
* rango_hora.csv: se un csv con las variables obtenidas 



## Objetivo Principal 🎯

Generar un análisis de los datos, de forma exhaustiva, con el fin de  obtener hallazgos con información clave, que permita generar un mejor entendimiento del problema y brinde la posibilidad de proyectar pautas resolutivas de manera integral y eficiente.

## Introducción 🚀

Es importante mencionar que el archivo recibido en formato csv, contaba con datos de buena calidad , con pocos valores nulos y duplicados,  y una estructura bien definida, permitiendo lograr un óptimo trabajo, obteniendo una comprensión profunda de las relaciones entre las distintas variables existentes.
Para llevar a cabo la búsqueda y el análisis de la información de manera efectiva, se emplearon métricas como una herramienta central en el proceso. Esta metodología permitió medir y evaluar con precisión diversos aspectos relacionados con los siniestros en CABA entre los años 2020 y 2021. Además, la utilización y visualización de gráficos, como una técnica valiosa, dió lugrar a la generación de representaciones y comprención intuitiva de los patrones y tendencias emergentes en los datos.
Estas prácticas de análisis no solo han contribuido a la consecución de los KPIs requeridos, sino que también han enriquecido significativamente la comprensión del conjunto de datos, proporcionando una base sólida para la toma de decisiones estratégicas, sobre el tratamiento a seguir con los datos y la estructura en la cual serán presentados.

1. ## Extracción, transformación | Análisis Exploratorio de Datos| 📈 

** Objetivo: Explorar el archivo recibido para una buena interpretación del estado general de los datos para luego generar el tratamiento de normalización adecuado para lograr un mejor análisis en la toma de decisiones.Descripción de acciones en el archivo  Es importante mencionar que en el presente documento se hará referencia sobre las acciones más relevantes y representativas del proyecto.  Encontrando la totalidad y los comentarios detallados sobre cada código y paso realizado , disponibles en el archivo denominado: homicidiosEDA.ipynb, donde se documenta exhaustivamente el proceso, proporcionando una visión completa y clara de cada decisión tomada durante el análisis y la transformación del archivo.  
El archivo recibido "homicidioscsv" fue importado a Python con el propósito de someterlo a un exhaustivo proceso de evaluación y exploración, así como a una transformación adecuada. Inicialmente, el archivo se componía de dos páginas de datos, las cuales se convirtieron en dos DataFrames (DF) utilizando la librería Pandas, dándo origen a  los DataFrames "df_hechos" y "df_victimas".

→ A medida que avanzaba la exploración y se profundizaba el análisis de los datos , se tomaron decisiones estratégicas en relación con ambos DF., basadas en la comprensión de la naturaleza de los datos y en la identificación de las necesidades específicas del proyecto. Después de un minucioso proceso de selección y refinamiento, se llegó a una versión final del conjunto de datos que resultó ser la más adecuada y relevante para los objetivos de la investigación o análisis en cuestión.
En el proceso de análisis de los datos contenidos en los DataFrames "df_hechos" y "df_victimas," se llevaron a cabo una serie de evaluaciones y transformaciones fundamentales.Dentro del proceso de preparación de los datos, se realizó una importante transformación en los DataFrames "df_hechos" y "df_victimas" relacionada con la estandarización de la información. Esto implicó las acciones principales:

→ *Evaluación de Datos Nulos, Duplicados y Únicos:* En una etapa inicial, se realizó una  revisión de los datos en busca de valores nulos  y duplicados en ambos DataFrames ("df_hechos" y "df_victimas"). Con el fin de  comprender la integridad de los datos . Además, se verificó la existencia de  duplicados en columnas específicas como "id", para garantizar la calidad y la precisión de los datos. Asimismo, se evaluaron los valores únicos para obtener información sobre la variedad y diversidad de los datos. Asimosmo, se decidió convertir la columna "id" en un tipo de dato string (str), considerando la naturaleza de la información contenida en ella, previniendo posibles complicaciones en el futuro. Además, se optó por eliminar las columnas relacionadas con coordenadas, ya que no se consideraban esenciales para el análisis y opciones de visualización que se tenía en mente.
→ * Conversión de letras mayúsculas a minúsculas *: se transformó el contenido y títulos de ambos DF para asegurar la uniformidad de los  datos en un formato consistente,  para evitar posibles discrepancias o errores debido a la diferencia en el uso de mayúsculas y minúsculas en los datos. 

→ *Filtrado por Año (2020 y 2021):*  se aplicó un filtro en ambos DataFrames, para seleccionar únicamente las filas relacionadas con el período temporal requerido para trabajar, y al mismo tiempo reducir el tamaño del conjunto de datos a una escala más manejable.

→ *Unión de DataFrames (Merge):* se realizó una operación de unión (merge) entre los DataFrames "df_hechos" y "df_victimas." Esto dio como resultado un nuevo DataFrame denominado "df_hechos_victimas," que contiene la información seleccionada de ambos conjuntos de datos. Esta fusión facilita un análisis más completo al tener todos los datos relacionados en un solo lugar.

→ *Transformación en CSV y Almacenamiento:*   se procedió a transformar "df_hechos_victimas," en un archivo CSV. y almacenado en la carpeta de trabajo.

2. ## Análisis de métricas y Visualización de Datos 🔍 :
Esta etapa fue  clave en el proceso de análisis, ya que permitió profundizar en la comprensión de los datos y extraer información relevante que contribuyó a la evaluación de los Key Performance Indicators (KPIs) 
Durante esta etapa, se llevaron a cabo una serie de cálculos y análisis estadísticos para obtener métricas significativas, las cuales, abarcaron una amplia gama de aspectos, desde resúmenes estadísticos básicos hasta medidas más avanzadas y específicas según los requerimientos que iba demandano el proyecto a medida que se avanzaba. Se seleccionaron los siguientes graficos para visualizar de forma apropiada los datos buscados: barras, barras agrupadas, dispersión. 
Estos gráficos proporcionaron, información sobre tendencias y relaciones presentes entre las variables, las cuales se detallan en el informe. Por otra parte, las métricas obtenidas,  representaron la base del análisis, para entender el escenario y resultaron el complemento necesarios para situar y explicar los KPIs. Algunas métricas calculadas son: franja horaria con mayor incidencia de siniestros, tipo de calles con mayor accidentes, sexo , edad, entre otras. El análisis de tendencias no solo permitió identificar patrones, sino también fluctuaciones y posibles factores que influyentes.

3. ## Carga incremental desde Python a MySQL | MySQL a Power BI🔧:
Se creó un archivo denominado " carga_incremental.ipynb", donde se estableció la carga incremental mediante una conexión entre Python y una base de datos creada en MySQL, donde además, se diseñó la estructura de la tabla para asegurarse de que coincidiera con la estructura de los datos existentes en Python, que posteriormente se transfirieron.
Luego, utilizando la librería de Python pymysq , se realizó la transferencia de datos desde Python a MySQL. 

* De MySQL a Power BI :
Se configuró una conexión en Power BI para acceder a la base de datos MySQL que contenía los datos transferidos desde Python. 

4. ## Análisis de KPIs y Tendencias de Comportamiento en python 📋📈
En el archivo "KPIs.ipynb", se realizaró la visualización y el análisis de los Key Performance Indicators (KPIs), donde se utilizó la librería  matplotlib y seaborn en Python para crear los gráficos necesarios que pudieran reflejar los dos KPIs solicitados. Estos gráficos permitieron visualizar las tendencias y los valores de los KPIs, a lo largo del tiempo requerido, de manera comparativa y en el contexto específico en el que se situaba el período, con el fin de comprender su desempeño y su evolución.

→ Reducir en un 10% la tasa de homicidios en siniestros viales de los últimos seis meses, en CABA, en comparación con la tasa de homicidios en siniestros viales del semestre anterior
→ Reducir en un 7% la cantidad de accidentes mortales de motociclistas en el último año, en CABA, respecto al año anterior

* Creación de un Tercer KPI: además de los KPIs solicitados, se creó un tercer indicador de rendimiento (KPI), el cual se diseñó con el propósito de complementar y enriquecer la evaluación de los KPIs otorgados como requerimiento básico, logrando una perspectiva más completa y profunda.
  
→ Reducir en un 5% la cantidad de accidentes mortales de autos en el último añsemestre del año 2021,  respecto al semestre anterior.

5. ## Despliegue en Power Bi | Análisis de KPIs y Tendencias 📊

El enfoque se centró en el análisis de las tendencias de comportamiento de los KPIs. Esto implicó examinar cómo los KPIs se comportan a lo largo del tiempo como también en función de otras variables como franja horaria, tipo de calles, sexo, edad, entre otras. Esto permitió identificar patrones, fluctuaciones y posibles factores que podrían estar relacionados a las causas del problema. 
Se diagramó una lógica que parte de lo general, reflejada en los gráficos seleccionados, que permite ubicar una información particular en el tiempo, para no perder el contexto de la información. Asimismo la visualización de los KPIs se complementaron con los hallazgos encontrados en las metricas realizadas con Python.
Por otra parte, con el fin de generar un optimo desempeño y calculos, se realizó una tabla calendario, nuevas medidas, medidas rápidas, transformación de columnas. Asimismo se contó con pequeños archivos csv con datos seleccionados , mas pequeños para una mejor manipulación.

→ * Portada:
Se diseñó una portada llamativa que incluye una imagen representativa de la Ciudad de Buenos Aires, con el icónico Obelisco en el centro. Esta imagen no solo proporciona un contexto visual atractivo sino que también sirve como un símbolo reconocible de la ciudad.
Se agregó el título del proyecto, claro, descriptivo  y conciso, que captura la esencia del análisis de datos y su importancia, "Análisis de Siniestros Viales", Período comprendido entre el 2016 y 2021 de CABA.
Se añadió un adelanto breve que brinda a los usuarios una visión general de lo que encontrarán en las conclusiones y los KPIs desarrollados, generando interés desde el principio.

→ * Diseño | Colores Institucionales:
Se utilizaron los colores institucionales del Gobierno de la Ciudad (amarillo, gris, negro y celeste) en todo el dashboard para garantizar la coherencia visual y reforzar la identidad de la entidad. Pero al mismo tiempo se buscó inspiración mediante la plataforma Color Hut, para obtener una paleta de colores que contenga los antes mencionado de manera estética.
Estos colores se aplicaron en la selección de gráficos, elementos dvisuales y botones a lo largo de todo el informe, creando una experiencia visual consistente.

→ *Inclusión del Isologotipo:
El isologotipo del Gobierno de la Ciudad se integró al dashboard para generar presencia de marca, visible en todas las páginas del informe, proporcionando una conexión constante con la entidad.

→ * Páginas y Tooltips:
Se diseñaron dos páginas adicionales a la portada para presentar los KPIs y métricas complementarias, proporcionando una visión más holística de la situación.
Se desarrolló una tercera página que contiene un tooltip interactivo vinculado a la línea de tiempo general y el total de mediciones. Este tooltip permite a los usuarios obtener información adicional al pasar el cursor sobre elementos específicos del gráfico.


##  Informe👍 | Conclusiones 📊 
Durante el período comprendido entre 2020 y 2021, la Ciudad Autónoma de Buenos Aires experimentó un incremento significativo en cuanto a accidentes viales hacia el último año. Según los datos obtenidos, se observó un aumento importante en accidentes mortales durante el 2021 respecto al 2020, donde se documentó una suba del 11,6 % y un 11.49% contemplando el mismo período en accidentes sin desenlace fatal. La diferencia puede ser justificada debido a que la implementación de la cuarentena, como medida para contener la propagación del coronavirus, tuvo un fuerte impacto en la reducción de la circulación vehicular y, como resultado redujo drásticamente los accidentes de tránsito, ya que no se reportaron víctimas viales en los últimos 61 días dentro del primer cuatrimestre del 2020. (Fuente: Diario digital Perfil, mayo 2020).
Dentro de los años antes mencionados, se hicieron diversas mediciones mediante el cruce de variables para comprender tendencias y patrones sobre los datos que crean el escenario a explorar y analizar

Detalle del análisis (2021)
Se buscaron las zonas más afectadas, con el fin de entender las particularidades de cada una y a partir de ello interpretar el grado de afección y posibles medidas a tomar por el responsable. Para lo cual se determinó analizar las 5 comunas(*referencia de comunas por barrio) con mayor incidencia en accidentes durante el 2021, donde las tres más rankeadas denotaron un comportamiento similar: comuna 1 (10.67%), comuna  3 y 9  ( 10.11%), Comuna 4( 9.55%) y Comuna 8( 7.87%), las cuales demuestran estar dentro de un mismo rango, en cuanto a porcentaje arrojado, a partir de allí la cantidad de accidentes en el resto de las comunas baja drásticamente.
Es importante mencionar que el porcentaje de accidentes mortales por tipo de Víctima (ciclista, conductor, moto, auto, peaton) se vió representado de forma mayoritaria por un 46.88% por los motociclistas, estos siniestros se ubican en mayor medida en avenidas,  con un total de 24 muertes dentro del 2021 equivalente al 24.74% del total de muertes(combinación: moto, tipo de calle, muertes)
Profundizando en la investigación, se realizó una segmentación por rango horario definido en: "Mañana", "Tarde" y "Noche", buscando comprender la distribución de accidentes expresados en porcentaje, en cada franja horaria. Allí se pudo visualizar que la mayor tasa de accidentes ocurre a la noche (45.36%), seguida por la franja de la mañana (29.90%) y con la menor participación el turno de la tarde (24.74%). Asimismo, mediante el cruce de variables se pudo visualizar que el mayor porcentaje de accidentes contemplando el sexo (M/F) y rol de la víctima (ciclista  conductor  pasajero_acompañante peaton), son  conductores hombres en un % 44.33(moto , auto). Mientras que el mayor porcentaje de accidentes contemplando el sexo (M/F) y acusado ( auto, bicicleta, moto), se define a los hombres conductores de autos,  con un % 25.78 como los mayores causantes de accidentes de tránsito.

🏆Verificación de objetivos logrados(KPIs):

🎯Reducción de Víctimas Fatales entre semestres 2021: durante el último semestre del 2021, se observó una disminución significativa del 23.64 % en el número de víctimas fatales en accidentes viales en comparación con el semestre anterior. Esta reducción representa la superación del objetivo del 10% planteado como mejora.
 
❌Reducciónen los accidentes mortales de motociclistas en el 2021, respecto al 2020: en el 2021 se detectó un aumento significativo del 20% en cuanto a las víctimas mortales en moto, frente al 2020. En consecuencia el objetivo de reducción del 7% no fue alcanzado. 

❌Reducción en los accidentes mortales de auto en el segundo semestre del 2021, respecto al primero: se evidenció un aumento significatovo del 21.43%  del segundo semestre respecto al primer período,  por lo cual no se ha llegado a cumplir con el objetivo de una reducción del 5%.

Este aumento en los siniestros viales planta desafíos importantes en términos de seguridad vial y movilidad en la ciudad. Las cifras sugieren poner atención a posibles factores como: las avenidas o calles con mayor circulación, un posible aumento de motos, falta de atención a las reglas de tránsito por los conductores masculinos, entre otros. Además, es fundamental destacar que estos accidentes tuvieron un impacto significativo en la vida de los ciudadanos de a pie (peatones) quienes durante el 2021, ya que fueron afectados en un 33.33%, al resultar víctimas fatales o con tragedias irreparables y en casos más leves en lesiones .
Se pone a disposición la información con el fin de aportar en la toma de decisiones para la construcción de medidas preventivas,con el fin de lograr la reducción de víctimas fatales en los siniestros viales.

![KPI_1_](https://github.com/RosanaBruschini/Proyecto_siniestros_viales/assets/110840020/be85cfdb-ae16-4ba6-aebe-9ad0574afdd4)

![KPI_2_](https://github.com/RosanaBruschini/Proyecto_siniestros_viales/assets/110840020/c24f490b-f427-40c5-8506-0999d0936961)

![KPI_3_](https://github.com/RosanaBruschini/Proyecto_siniestros_viales/assets/110840020/3034985f-c7dc-4768-a68b-f740864e402c)


# Referencias de comunas representativas dentro del informe
* Comuna 1. Retiro, San Nicolás, Puerto Madero, San Telmo, Montserrat y Constitución.
* Comuna 2. Recoleta.
* Comuna 3. Balvanera y San Cristóbal.
* Comuna 4. La Boca, Barracas, Parque Patricios, y Nueva Pompeya.
* Comuna 5. Almagro y Boedo.
* Comuna 6. Caballito.
* Comuna 7. Flores y Parque Chacabuco.
* Comuna 8. Villa Soldati, Villa Riachuelo, Villa Lugano
* Comuna 9. Liniers, Mataderos, Parque Avellaneda
* Comuna 10. Villa real, Monte Catro, Versalles, Floresta Velez Sardfield, Villa Luro

# Anexos:
* Color Hunt: https://colorhunt.co/
* Censo CABA 2022: https://censo.gob.ar/index.php/datos_provisionales/
* Comunas CABA: https://buenosaires.gob.ar/comunas                                                        
* Nota Perfil:https://www.perfil.com/noticias/actualidad/otra-cara-cuarentena-ciudad-buenos-aires-lleva-61-dias-sin-accidentes-transito-fatales.phtml
* Plan de Seguridad Vial de la Ciudad 2020-2023: https://buenosaires.gob.ar/plan-de-seguridad-vial-de-la-ciudad-2020-2023
