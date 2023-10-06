# Proyecto_siniestros_viales
Analysis Data - Presentación de Dashboard
# Proyecto_siniestros_viales 

Data Analyst

## Objetivo Principal 🎯

Generar un análisis profundo de los datos, con el fin de  obtener hallazgos con información clave, que permita generar un mejor entendimiento del problema y pautas resolutivas de manera integral.

## Introducción 

Es importante mencionar que el archivo en formato csv, contaba con datos de buena calidad , con pocos valores nulos y duplicados,  y una estructura bien definida, permitiendo lograr un óptimo trabajo. Estas cualidades  facilitaron un trabajo eficiente, permitiendo una comprensión profunda de las relaciones entre las distintas variables presentes en los datos.Para llevar a cabo la búsqueda y el análisis de información de manera efectiva, se emplearon métricas como una herramienta central en el proceso. Esta metodología permitió medir y evaluar con precisión diversos aspectos relacionados con los siniestros en CABA entre los años 2020 y 2021. Además,  la utilización y visualización de gráficos como una técnica valiosa para representar y comprender intuitivamente los patrones y tendencias emergentes en los datos.

Estas prácticas de análisis no solo han contribuido a la consecución de los KPIs requeridos, sino que también han enriquecido significativamente la comprensión del conjunto de datos, proporcionando una base sólida para la toma de decisiones informadas y estratégicas .

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

2. ## Análisis Métrico y Visualización de Datos para la Evaluación de KPIs :
Esta etapa fue  clave en el proceso de análisis, ya que permitió profundizar en la comprensión de los datos y extraer información relevante que contribuyó a la evaluación de los Key Performance Indicators (KPIs) 

Durante esta etapa, se llevaron a cabo una serie de cálculos y análisis estadísticos para obtener métricas significativas, las cuales, abarcaron una amplia gama de aspectos, desde resúmenes estadísticos básicos hasta medidas más avanzadas y específicas según los requisitos del proyecto. Se seleccionaron los siguientes graficos para visualizar de forma apropiada los datos buscados: barras, barras agrupadas, dispersión 

Una vez que se obtuvieron estas métricas, se procedió a visualizarlas a través de gráficos y representaciones visuales. Estos gráficos proporcionan una visión intuitiva y clara de los patrones, tendencias y relaciones presentes en los datos. Al examinar estos gráficos, podemos identificar insights y tendencias que ayudaron a comprender mejor los KPIs y, en última instancia, a tomar decisiones informadas y estratégicas basadas en los datos.


3. ## Transferencia de Datos entre Python y MySQL y Conexión a Power BI De Python a MySQL:
Se creó un archivo denominado " carga_incremental.ipynb", donde se estableció la carga incremental mediante una conexión entre Python y una base de datos creada en MySQL, donde además, se diseñó la estructura de la tabla para asegurarse de que coincidiera con la estructura de los datos en Python que se transfirieron.
Luego, utilizando la librería de Python pymysq , se realizó la transferencia de datos desde Python a MySQL. 

* De MySQL a Power BI :
Se configuró una conexión en Power BI para acceder a la base de datos MySQL que contenía los datos transferidos desde Python. 

4. ## Análisis de KPIs y Tendencias de Comportamiento  en python 
En el archivo "KPIs.ipynb", se realizaró la visualización y el análisis de los Key Performance Indicators (KPIs)., Se utilizó la librería  matplotlib, seaborn o alguna otra librería de visualización de datos en Python para crear gráficos que representaran los dos KPIs solicitados. Estos gráficos permitieron visualizar claramente las tendencias y los valores de los KPIs a lo largo del tiempo o en el contexto específico en el que se estaban evaluando. La visualización de los KPIs es fundamental para comprender su desempeño y su evolución.

* Creación de un Tercer KPI: además de los KPIs solicitados, se creó un tercer indicador de rendimiento (KPI), el cual se diseñó con el propósito de complementar y enriquecer la evaluación de los KPIs otorgados como requerimiento básico, logrando una perspectiva más completa y profunda del comportamiento de los datos o de la conducta de un sistema en particular.

* Visualización de los KPIs: se buscó examinar cómo los KPIs en función de los posibles gráficos, se explorose comportan a lo largo del tiempo como también en función de otras variables como franja horaria, tipo de calles, sexo, edad, entre otras. El análisis de tendencias permitió identificar patrones, fluctuaciones y posibles factores que influyen en el rendimiento de los KPIs.

5. ## Análisis de KPIs y Tendencias de Comportamiento  en Power Bi

* El enfoque se centró en el análisis de las tendencias de comportamiento de los KPIs. Esto implicó examinar cómo los KPIs se comportan a lo largo del tiempo como también en función de otras variables como franja horaria, tipo de calles, sexo, edad, entre otras. Esto permitió identificar patrones, fluctuaciones y posibles factores que relacionados a las  causas del problema. 
Se diagramó una lógica que parte de lo general, desde los gráficos seleccionados, que permite ubicar una información particular en el tiempo, para no perder contexto de la información. Asimismo la visualización de los KPIs se complementaron con los hallazgos encontrados en las metricas realizadas con Python.

→ * Diseño
Para el desarrollo de los KPIs en Power BI y el diseño del dashboard, se siguió un enfoque que combina la presentación de datos con una estética que refleja los colores institucionales del Gobierno de la Ciudad Autónoma de Buenos Aires (amarillo, gris, negro, celeste) y la inclusión del isologotipo para reforzar la presencia de la marca de la entidad. A continuación, se describen en detalle los aspectos clave de este desarrollo:

→ * Portada:
Se diseñó una portada llamativa que incluye una imagen representativa de la Ciudad de Buenos Aires, con el icónico Obelisco en el centro. Esta imagen no solo proporciona un contexto visual atractivo sino que también sirve como un símbolo reconocible de la ciudad.
Se agregó un título representativo del proyecto, claro y conciso, que captura la esencia del análisis de datos y su importancia. Por ejemplo: "Análisis de Accidentes Viales en CABA: Reducción de Víctimas".
En la portada se incluyó el objetivo principal del proyecto, que es proporcionar información valiosa para reducir las víctimas de accidentes viales en la Ciudad de Buenos Aires.
Se añadió un adelanto breve que brinda a los usuarios una visión general de lo que encontrarán en las conclusiones y los KPIs desarrollados, generando interés desde el principio.

→ * Colores Institucionales:
Se utilizaron los colores institucionales del Gobierno de la Ciudad (amarillo, gris, negro y celeste) en todo el dashboard para garantizar la coherencia visual y reforzar la identidad de la entidad.
Estos colores se aplicaron en la selección de gráficos, elementos de texto y botones a lo largo de todo el informe, creando una experiencia visual consistente.
Inclusión del Isologotipo:
El isologotipo del Gobierno de la Ciudad se integró en la parte superior del dashboard para generar presencia de marca. Esto refuerza la autenticidad y la autoridad del informe.
Se colocó el isologotipo de manera que sea visible en todas las páginas del informe, proporcionando una conexión constante con la entidad.

→ * Desarrollo de KPIs:
Se trabajaron tres KPIs fundamentales para el proyecto, cada uno presentado en su propia página del informe. Estos KPIs se desarrollaron en función de los datos disponibles y las métricas relevantes para la reducción de víctimas de accidentes viales.
En cada página de KPI, se siguió una estructura que partió de lo general para proporcionar contexto y luego profundizó en las particularidades de cada métrica. Esto permitió a los usuarios comprender la importancia de cada KPI antes de explorar los detalles.
Se seleccionaron gráficos y visualizaciones efectivas que mejor representaban cada métrica y su evolución a lo largo del tiempo.
Se incluyeron medidas adicionales y complementarias que ofrecieron una visión más completa de cada métrica y ayudaron a los usuarios a interpretar los resultados.

→ * Páginas y Tooltips:
Se diseñaron dos páginas adicionales para presentar métricas complementarias, proporcionando una visión más holística de la situación.
Se desarrolló una cuarta página que contiene un tooltip interactivo vinculado al primer KPI. Este tooltip permite a los usuarios obtener información adicional al pasar el cursor sobre elementos específicos del gráfico.
En resumen, el desarrollo del dashboard en Power BI combinó hábilmente la presentación de datos significativos con un diseño estético que respeta los colores institucionales y la presencia de marca del Gobierno de la Ciudad de Buenos Aires. Además, se siguió un enfoque estructurado para presentar los KPIs y métricas complementarias, brindando a los usuarios una comprensión completa y contextualizada de los datos. Esto no solo facilita la toma de decisiones informadas sino que también brinda una experiencia visual atractiva y coherente.

## Conclusiones
El análisis de datos sobre los accidentes ocurridos en la Ciudad Autónoma de Buenos Aires durante el período 2020-2021 ha proporcionado información valiosa que puede influir positivamente en la toma de decisiones para reducir las víctimas fatales en los siniestros viales. A continuación, se presentan las principales conclusiones derivadas de este proyecto:

Reducción de Víctimas Fatales: Durante el último año, se observó una disminución significativa en el número de víctimas fatales en accidentes viales en comparación con el año anterior. Esta reducción representa un logro importante en el objetivo de mejorar la seguridad vial en la ciudad.

Tasa de Homicidios Viales: Se calculó una tasa de homicidios viales por cada 100,000 habitantes para evaluar la gravedad de los accidentes. Esta métrica proporciona información esencial para identificar áreas de alto riesgo y tomar medidas preventivas específicas.

Comparación Semestral: Se realizó una comparación detallada entre el segundo semestre de 2021 y el primer semestre del mismo año. Los resultados indican que se logró una reducción considerable en el número de víctimas fatales en el segundo semestre, lo que demuestra un progreso significativo en términos de seguridad vial.

Desarrollo de KPIs: Tres indicadores clave de rendimiento (KPIs) se desarrollaron para medir el progreso en la reducción de accidentes viales. Cada KPI se diseñó para ofrecer información específica y detallada sobre diferentes aspectos de la seguridad vial.

Presencia de Marca: El diseño del dashboard se realizó cuidadosamente, incorporando los colores institucionales del Gobierno de la Ciudad y el isologotipo para crear una identidad visual sólida. Esto no solo proporciona una apariencia coherente sino que también refuerza la presencia de la marca de la entidad.

Visualizaciones Efectivas: Se seleccionaron gráficos y visualizaciones efectivas que representan claramente los datos. Cada visualización se diseñó para comunicar de manera efectiva la información relevante a los usuarios.

Interactividad: Se agregaron elementos interactivos, como tooltips, que permiten a los usuarios obtener más información al interactuar con el dashboard. Esto mejora la experiencia del usuario y facilita la exploración de los datos.

En resumen, el análisis de datos y el diseño del dashboard han proporcionado una plataforma sólida para la toma de decisiones informadas con respecto a la seguridad vial en la Ciudad de Buenos Aires. Las conclusiones destacan los logros alcanzados, la importancia de las métricas desarrolladas y la atención prestada a la presentación visual de los datos. Este proyecto sienta las bases para futuras iniciativas destinadas a reducir aún más las víctimas fatales en los siniestros viales y mejorar la seguridad en las calles de la ciudad.

Anexos:
Censo CABA 2022: https://censo.gob.ar/index.php/datos_provisionales/
