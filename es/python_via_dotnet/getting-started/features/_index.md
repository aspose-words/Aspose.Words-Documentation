---
title: Características
second_title: Aspose.Words para Python via .NET
articleTitle: Funciones admitidas
linktitle: Funciones admitidas
description: "Aspose.Words para Python via .NET ofrece a los usuarios una amplia gama de funciones, desde simplemente convertir y modificar documentos hasta crear documentos estructurados y visualmente atractivos o automatizar informes."
type: docs
weight: 30
url: /es/python-net/features/
---

Aspose.Words ofrece a los usuarios una amplia gama de funciones. Los usuarios pueden realizar una gran cantidad de tareas relacionadas con documentos, desde simplemente convertir documentos de un formato compatible a otro y modificarlos durante el proceso de conversión hasta tareas comerciales, como crear documentos estructurados y visualmente atractivos o automatizar informes.

Los formatos y estándares de documentos modernos son complejos, y cuando necesita conversión de documentos u otras funciones de procesamiento de documentos en su proyecto, la única solución práctica suele ser confiar en un componente de terceros que implemente la funcionalidad deseada. Pero utilizar un componente de terceros siempre conlleva algún riesgo. Uno de los riesgos únicos en el procesamiento de documentos es la cuestión de cuán completa y correctamente la biblioteca implementa un formato o estándar de documento en particular.

Aspose se compromete a ofrecer las implementaciones más completas y precisas de formatos y estándares de documentos. El equipo Aspose.Words demuestra su compromiso con la interoperabilidad al proporcionar notas de implementación detalladas para los formatos de documentos admitidos en múltiples plataformas.

Las siguientes tablas resumen y comparan la disponibilidad de las funciones Aspose.Words para Python via .NET y proporcionan enlaces a descripciones detalladas de las funciones.

## Plataformas compatibles

Las plataformas Aspose.Words para Python via .NET se pueden utilizar en Windows x64 o x86 y en una amplia gama de distribuciones Linux con Python 3.5 o posterior instalado. Existen requisitos adicionales para la plataforma Linux de destino:
- Bibliotecas de tiempo de ejecución GCC-6 (o posterior)
- Dependencias de .NET Core Runtime. Se requiere `NOT` para instalar .NET Core Runtime
- Para Python 3.5-3.7: se necesita la compilación `pymalloc` de Python. La opción de compilación `--with-pymalloc` Python está habilitada de forma predeterminada. Normalmente, la compilación `pymalloc` de Python está marcada con el sufijo `m` en el nombre del archivo.
- Biblioteca Python compartida `libpython`. La opción de compilación `--enable-shared` Python está deshabilitada de forma predeterminada; algunas distribuciones de Python no contienen la biblioteca compartida `libpython`. Para algunas plataformas Linux, la biblioteca compartida `libpython` se puede instalar utilizando el administrador de paquetes, por ejemplo: `sudo apt-get install libpython3.7`. El problema común es que la biblioteca `libpython` está instalada en una ubicación diferente a la ubicación estándar del sistema para las bibliotecas compartidas. El problema se puede solucionar utilizando las opciones de compilación de Python para establecer rutas de biblioteca alternativas al compilar Python, o se puede solucionar creando un enlace simbólico al archivo de biblioteca `libpython` en la ubicación estándar del sistema para bibliotecas compartidas. Normalmente, el nombre del archivo de la biblioteca compartida `libpython` es `libpythonX.Ym.so.1.0` para Python 3.5-3.7 o libpythonX.Y.so.1.0 para Python 3.8 o posterior (por ejemplo: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Si necesita soporte para más plataformas, busque los productos "hermano gemelo" Aspose.Words para .NET o Aspose.Words para Java.

## Formatos de archivos y conversiones

Muchos clientes de todo el mundo confían en las completas funciones de importación y exportación de documentos que ofrece Aspose.Words.

|  Característica | Descripción | Python via .NET |
|  :-  |  :-  |  :-  |
| Palabra Microsoft - DOC | La implementación de formato DOC más rápida y completa que puedas encontrar. | {{< emoticons/tick >}} |
| Procesamiento de textosML - DOCX y XML | Aspose.Words proporciona soporte exhaustivo para OOXML, Flat OPC y también Word 2003 XML. | {{< emoticons/tick >}} |
| Formato de texto enriquecido: RTF | Soporte integral del formato RTF para interactuar con una variedad de aplicaciones. | {{< emoticons/tick >}} |
| HTML, XHTML y MHTML | Cargue y guarde HTML/XHTML para una interoperabilidad aún mayor. Guardar como MHTML también está disponible. | {{< emoticons/tick >}} |
| Documento abierto - ODT | Aspose.Words puede cargar y guardar documentos en formato `OpenDocument` Text (.odt). | {{< emoticons/tick >}} |
| Formato de documento portátil de Adobe: PDF | Convierte cualquier documento a PDF con alta fidelidad. Se admite PDF/A. | {{< emoticons/tick >}} |
| Especificación de papel XML: XPS | Convierta cualquier documento a XPS con alta fidelidad. | {{< emoticons/tick >}} |
| Texto sin formato - TXT | Extraiga texto fácilmente guardándolo en formato de texto sin formato. | {{< emoticons/tick >}} |
| Publicación digital EPUB | EPUB es un formato popular para libros electrónicos. Puede convertir cualquier documento de Aspose.Words al formato IDPF EPUB. | {{< emoticons/tick >}} |
| Lenguaje de comandos de impresora (PCL) | Aspose.Words para .NET brinda soporte para guardar documentos en formato PCL. | {{< emoticons/tick >}} |

## Representación e impresión

Aspose.Words ahora proporciona representación de alta fidelidad de las páginas de los documentos.

|  Característica | Python via .NET |
|  :-  |  :-  |
| Diseñe el documento en páginas con alta fidelidad (exactamente como lo haría Microsoft Word®) en todos los formatos siguientes. | {{< emoticons/tick >}} |
| Renderice páginas individuales o documentos completos a PDF o XPS. | {{< emoticons/tick >}} |
| Renderizar páginas de documentos a imágenes BMP | {{< emoticons/tick >}} |
| Renderice páginas de documentos en imágenes (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Renderice formas individuales del documento en imágenes rasterizadas o vectoriales. | {{< emoticons/tick >}} |
| Especifique la resolución de la imagen, la calidad, la compresión y otras opciones. | {{< emoticons/tick >}} |
| Renderice páginas o formas en un objeto de gráficos .NET con transformaciones, a un tamaño específico. | {{< emoticons/tick >}} |
| Imprima páginas de documentos utilizando la infraestructura de impresión .NET. | {{< emoticons/cross >}} |
| Actualice `TOC`, números de página y otros campos antes de renderizar o imprimir. | {{< emoticons/tick >}} |

## Funciones del contenido del documento

Aspose.Words proporciona un modelo de objetos enriquecido que consta de más de 100 clases públicas, que le permiten generar, combinar, modificar, analizar o examinar mediante programación documentos cargados.

|  Característica | Python via .NET |
|  :-  |  :-  |
| Acceder, crear y modificar párrafos y texto. | {{< emoticons/tick >}} |
| Acceda, cree y modifique imágenes, cuadros de texto y formas. | {{< emoticons/tick >}} |
| Acceda, cree y modifique tablas, filas y celdas. | {{< emoticons/tick >}} |
| Acceda, cree y modifique campos, campos de formulario, hipervínculos y marcadores. | {{< emoticons/tick >}} |
| Acceda, cree y modifique secciones, encabezados y pies de página del documento. | {{< emoticons/tick >}} |
| Acceda, cree y modifique notas al pie, notas finales y comentarios. | {{< emoticons/tick >}} |
| Acceda, cree y modifique XML personalizados, etiquetas inteligentes y etiquetas de documentos estructurados (controles de contenido). | {{< emoticons/tick >}} |
| Acceda y modifique todos los elementos del documento utilizando clases y métodos similares a **XmlDocument**. | {{< emoticons/tick >}} |
| Actualice los resultados de los campos `IF`, fórmulas y otros tipos de campos populares. | {{< emoticons/tick >}} |
| Reconstruya y actualice los campos de la tabla de contenido (TOC) exactamente como lo hace Microsoft Word. | {{< emoticons/tick >}} |
| Copie y mueva elementos del documento entre documentos. | {{< emoticons/tick >}} |
| Unir y dividir documentos. | {{< emoticons/tick >}} |
| Obtenga y establezca propiedades de documentos integradas y personalizadas. | {{< emoticons/tick >}} |
| Especifique la protección de documentos, abra documentos protegidos y cifrados. | {{< emoticons/tick >}} |
| Busque y reemplace texto, enumere el contenido del documento. | {{< emoticons/tick >}} |
| Aceptar todas las revisiones de un documento. | {{< emoticons/tick >}} |
| Conservar o extraer objetos OLE y controles ActiveX del documento. | {{< emoticons/tick >}} |
| Conservar o eliminar macros VBA del documento. Preservar la firma digital de las macros de VBA. | {{< emoticons/tick >}} |
| Detectar y verificar firmas digitales en documentos. | {{< emoticons/tick >}} |
| Insertar texto HTML. | {{< emoticons/tick >}} |
| Extraiga macros de VBA de un documento de Word. | {{< emoticons/tick >}} |

## Funciones de formato de documentos

Aspose.Words proporciona acceso programático detallado a las propiedades de formato de todos los elementos del documento.

|  Característica | Python via .NET |
|  :-  |  :-  |
| Acceda y modifique todos los formatos de caracteres, incluidas fuentes, colores, efectos, bordes y sombreados. | {{< emoticons/tick >}} |
| Acceda y modifique todo el formato de párrafo, incluidas sangrías, espaciado, bordes y sombreado, tabulaciones. | {{< emoticons/tick >}} |
| Acceda y modifique todos los formatos de listas numeradas y con viñetas, incluida la numeración y los niveles. | {{< emoticons/tick >}} |
| Acceda y modifique el formato de la tabla, incluida la alineación, la orientación, los bordes y el sombreado. | {{< emoticons/tick >}} |
| Acceda y modifique todas las propiedades de la sección, incluido el tamaño del papel, los márgenes y la orientación. | {{< emoticons/tick >}} |
| Acceda, cree y modifique estilos de documentos. | {{< emoticons/tick >}} |
| Acceda y modifique objetos de dibujo, incluidas las propiedades de posición, tamaño, línea y relleno, y bytes de imagen. | {{< emoticons/tick >}} |

## Funciones Mail Merge

Puede utilizar Aspose.Words como solución de informes por sí sola. Diseñe sus informes en Microsoft Word y luego haga que Aspose.Words complete los documentos con datos de varias fuentes de datos.

|  Característica | Python via .NET |
|  :-  |  :-  |
| Utilice todos los campos Microsoft Word mail merge estándar en sus informes, incluidos `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK` y GREETINGLINE. | {{< emoticons/tick >}} |
| Ejecute mail merge para documentos que contengan incluso los campos y fórmulas `IF` más complejos y anidados. | {{< emoticons/tick >}} |
| Complete y haga crecer dinámicamente tablas o fragmentos en el documento desde su fuente de datos utilizando regiones mail merge. | {{< emoticons/cross >}} |
| Genere fácilmente informes que contengan datos principales y detallados (principal-secundario), como Pedido/Detalles del pedido. | {{< emoticons/cross >}} |
| Complete documentos con datos de cualquier fuente de datos .NET, como DataSet, DataTable, DataView, DataReader o ADO Recordset. | {{< emoticons/cross >}} |
| Complete documentos desde cualquier fuente de datos, como una consulta LINQ, un archivo XML u objetos comerciales, mediante la implementación de la interfaz [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/). | {{< emoticons/cross >}} |
| Tome un control preciso, como el formato de números, sobre cómo se combinan sus datos mediante eventos. | {{< emoticons/cross >}} |
| Insertar imágenes durante mail merge. | {{< emoticons/tick >}} |
| Cree o modifique mediante programación una fuente de datos Microsoft Word mail merge para un documento. Preservar la configuración de mail merge y las fuentes de datos. | {{< emoticons/tick >}} |
| Recuperar nombres de campos mail merge. | {{< emoticons/tick >}} |

## Funciones de informes

LINQ Reporting Engine es una herramienta de informes avanzada que le permite generar documentos basados en documentos de plantilla y datos obtenidos de diversas fuentes, incluidas bases de datos, XML, JSON, OData, objetos de tipos CLR personalizados, documentos externos y más, listos para usar.

| Características clave | Python via .NET |
|  :-  |  :-  |
| Compatibilidad con la sintaxis C# y los métodos de extensión LINQ directamente en plantillas (incluso para fuentes de datos `ADO.NET`) | {{< emoticons/tick >}} |
| Soporte de bloques de documentos repetibles y condicionales (bucles y condiciones) para tablas, listas y contenido común | {{< emoticons/tick >}} |
| Soporte de gráficos e imágenes generados dinámicamente. | {{< emoticons/tick >}} |
| Soporte de inserción de documentos externos y bloques HTML en un documento. | {{< emoticons/tick >}} |
| Soporte de múltiples fuentes de datos (incluso de diferentes tipos) para la generación de un solo documento | {{< emoticons/tick >}} |
| Soporte integrado para relaciones de datos (maestro-detalle) | {{< emoticons/tick >}} |
| Soporte integral de diversas manipulaciones de datos, como agrupar, ordenar, filtrar y otras directamente en plantillas. | {{< emoticons/tick >}} |
| WYSIWYG: un documento generado conserva el mismo formato de sus elementos que la plantilla correspondiente. | {{< emoticons/tick >}} |
