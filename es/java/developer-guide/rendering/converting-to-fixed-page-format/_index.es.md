---
title: Convertir en Formato de página fija en Java
second_title: Aspose.Words para Java
articleTitle: Convertir en Formato de página fija
linktitle: Convertir en Formato de página fija
description: "Aspose.Words para Java implementa su propio motor de diseño de página que le permite producir todos los formatos de página fijos, como PDF, XPS, y varios formatos de imagen."
type: docs
weight: 10
url: /es/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementa su propio motor de diseño de página. Antes de profundizar en sus especificaciones, vale la pena discutir primero el documento a un alto nivel. Al pensar en un documento, los usuarios suelen imaginar una serie de hojas de papel que contienen palabras, imágenes, tablas y gráficos. Los documentos pueden ser de varios tipos, como texto, hojas de cálculo, diapositivas, dibujos CAD, diagramas de flujo y, por lo tanto, pueden tener diseños esencialmente diferentes. La mayoría de las aplicaciones permiten enviar documentos a una impresora; esto es cuando un usuario realmente puede ver la apariencia final del documento.

## Mostrando un documento en varias aplicaciones

Varias aplicaciones de visualización o publicación de documentos permiten abrir (Adobe Acrobat, XPS Viewer), y a veces editar (Adobe InDesign) documentos de formatos específicos. Estas aplicaciones suelen producir documentos de formato "fixed-page". Tal formato de documento describe precisamente dónde se coloca el contenido de un documento en cada página. Internamente, el PDF o XPS formato contiene una descripción de cada página, así como instrucciones de dibujo, especificando el diseño del contenido en la página. Esto es similar a los formatos de imagen, describiendo donde el contenido se muestra en forma de raster o vector.

En cambio, algunas aplicaciones de edición de texto no apoyan la visualización de las páginas de un documento. Por ejemplo, Microsoft Notepad soporta muy pocas funciones aparte de simplemente mostrar, editar e imprimir texto. La importante observación aquí es que tales aplicaciones no pueden mostrar páginas del documento ni decirle a un usuario cuántos de ellos serían impresos, sólo permitiendo ver el contenido del documento. El documento se puede guardar en formato texto simple y puede ser abierto por muchas otras aplicaciones. Utilizando una aplicación que permite ver contenido binario de un archivo arbitrario se puede ver lo que se almacena en el archivo de documento – es sólo texto simple, no hay nada más en él.

Aplicaciones de edición de texto ligeramente más sofisticadas, como Microsoft WordPad, guarde el documento en formato de texto rico (RTF), que soporta funciones de formato más, como la inserción de imágenes, el formato de caracteres, los márgenes del párrafo y el espaciamiento. Sin embargo, el formato RTF también contiene sólo el contenido del documento, sin tener información sobre páginas.

Microsoft Word es la aplicación más avanzada de edición de texto Windows hoy. Formato archivos en el formato DOCX, que describe el contenido del documento de forma flexible y extensa, permitiendo a los usuarios especificar el tamaño de la página, la orientación para una sección de documentos, y, siendo una aplicación WYSIWYG incluso mostrar páginas de documentos en la pantalla. Sin embargo, todavía no hay información sobre cómo se muestra el contenido del documento en las páginas disponibles en el archivo de documento. El archivo de documento sólo describe el contenido mismo, y la relación de los objetos de documento entre sí, junto con algunas limitaciones geométricas. Como resultado, antes de mostrar un documento, Microsoft Word computes that information itself. Aquí es donde entra en juego un diseño de página.

## ¿Qué es un diseño de página

Un diseño de página de documento es una estructura de datos, describiendo dónde se encuentra un objeto particular en las páginas para todos los objetos de documento. Además, ya que los objetos tienen propiedades que afectan sus apariencias, como el tamaño de la fuente, los efectos de afeitado o dibujo, es necesario no sólo saber dónde está el objeto, sino también qué área (s) de la página ocupa, y si se aplicará a múltiples páginas para que otros objetos no superpongan el mismo área (s).

Aspose.Words implementa funcionalidad de diseño de página internamente permitiéndole producir todos los formatos de página fijos, como PDF, XPS, y varios formatos de imagen. Sin diseño de página, la información almacenada en el archivo de documento de página fija no estaría disponible y todos estos formatos no serían compatibles.

La relación entre un documento y un diseño de página es bastante simple. Mientras que un documento describe el contenido, el diseño de página correspondiente describe la geometría de ese contenido. Nota, que un diseño de página no puede existir sin un documento ya que no habría contenido para computar la geometría, pero un documento puede existir sin un diseño de página. Por ejemplo, cuando un documento DOCX se convierte en un documento RTF, por lo general es innecesario conocer la geometría, ya que ningún formato lo almacena.

## Crear un diseño de página

Crear un diseño de página puede ser un procedimiento costoso, tanto en términos de velocidad y memoria. Esto se debe a varias razones:

- El documento puede tener una gran cantidad de contenido, que puede ser necesario mostrar en miles de páginas. La geometría de cada objeto en cada página necesitaría ser descrita, consumiendo recursos de memoria.
- El documento puede tener muchas reglas, poniendo restricciones a la geometría. Es posible que se gaste un tiempo computacional considerable, asegurando que cada restricción esté satisfecha
- Algunas características de documentos, por ejemplo, las `NUMPAGES` campo, crear dependencias recursivas para los valores de propiedad futuros, que no están disponibles en el momento de la computación. Esto conduce a cálculos repetitivos y se suma en tiempo de cálculo.

Debido a las razones mencionadas, Aspose.Words creará un diseño de página sólo cuando sea necesario. Una razón típica para esto sería una solicitud para presentar páginas de documentos o para obtener un valor de campo que depende de la información disponible en el diseño de página. Una razón menos obvia podría estar exportando un documento a HTML. Aunque HTML no es un formato de página fija y no describe la geometría de los objetos de contenido, todavía soporta imágenes. Tales imágenes pueden estar en forma de formas creadas en Microsoft Word con un texto dentro de ellos. Por ejemplo, un gráfico con etiquetas de eje se puede exportar en HTML como imagen, pero antes de que esto se pueda hacer Aspose.Words necesita hacer esa imagen, y por lo tanto necesita saber dónde mostrar la etiqueta. Vea el ejemplo siguiente:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### No geométrica Propiedades

Además de manejar información geométrica, un diseño de página también es responsable de calcular colores y estilos fronterizos. In Microsoft Word, El color de texto puede especificarse como automático, lo que implica que la selección de color debe basarse en el color de la célula o párrafo, o basado en el color de la página, donde aparece el texto.

La distribución de páginas computa dónde aparecerá el texto y qué contenido se mostrará detrás de él, lo que permite el cálculo de color. Hay otros cálculos específicos realizados por el diseño de la página. Por ejemplo, una frontera horizontal en una tabla depende de si una fila de mesa es la última en una columna de texto, y si se rompe a través de columnas. Si una fila se hace por última vez en una columna, la frontera inferior se utiliza en lugar de horizontal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In <span notrans="<span notrans=" Aspose.Words"=""></span>," un usuario puede solicitar si construir un nuevo diseño de página, o actualizar uno existente. Ambos pueden ser realizados por el [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) método, proporcionado por el [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase. Si no existe un diseño de página, pero es necesario (por ejemplo, cuando el documento se exporta a un formato de página fija), Aspose.Words llamará automáticamente este método. Sin embargo, si un diseño de página ya existe, Aspose.Words utilizará el existente, para evitar consumir los recursos necesarios para actualizarlo. En este caso, el usuario necesita llamar al `UpdatePageLayout` método, para asegurar que el diseño de la página esté actualizado con el modelo de documento.

### Estructura dinámica

El proceso de creación de diseño de página consta de los siguientes pasos:

- *Conversion* – enumerar el contenido del modelo de documento y preparar los objetos de diseño correspondientes.
- *Build* – Organizar objetos de diseño para representar el contenido del documento en páginas.
- *Reflow* – Actualizar el arreglo de objetos para satisfacer las limitaciones de geometría.
- *Proyectar objetos de diseño en la presentación de página fija y finalizar la información de color*.
- *Edificio y reflujo de contenido de forma* – un paso requerido si el documento contiene formas con contenido de texto anidado.

Nota, que el diseño de la página es una estructura dinámica, que se puede reconstruir parcialmente. Esto es especialmente necesario cuando es imposible calcular los valores de campo sin reconstruir la estructura de diseño de documentos. El campo puede hacer referencia a la ubicación de un objeto en una página, y al mismo tiempo el valor de campo en sí también se hace en la página, afectando la ubicación del objeto referenciado. Un diseño de página no se puede construir en una sola dirección, ya que los valores de campo pueden todavía no estar disponibles en el momento de posicionarse en una página.

Considere el escenario típico cuando el `NUMPAGES` campo aparece en el pie de la primera página del documento. El valor de este campo es el número total de páginas. Para posicionar el campo en una página, su valor debe ser conocido. Si sólo se está construyendo la primera página, el número total de páginas aún no se conoce. En este caso, el diseño de la página tiene que utilizar el valor predeterminado y luego volver a ese campo y cambiar su valor de acuerdo con los cálculos reales. Sin embargo, cambiar el valor de campo puede afectar a otro contenido de documento en una página y, en última instancia, hacer que una nueva página sea anexada o una página existente eliminada, lo que hace que el valor calculado sea obsoleto. Este problema se puede resolver haciendo posible actualizar el diseño de página existente.

Al crear un diseño, también es posible configurar [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propiedades que afectan la salida del documento en páginas.

## Ahorro a formato de página fija

Una vez construido el diseño de la página y se calcula la geometría de los objetos y su posición en la página, el documento se puede guardar en un formato de página fija apoyado por Aspose.Words. Al guardar documentos a formatos de página fija, se pueden utilizar las opciones de renderización comunes a todos estos formatos. Permiten controlar:

- Número y rango de páginas contenidas en el documento de salida ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progresos en el ahorro de documentos por página ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un conjunto de caracteres que se utilizan para renderizar números ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un metafiler[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Para más detalles, vea el [Manejo Windows Metafiles](/words/es/java/handling-windows-metafiles/) artículo.
- Una tasa de calidad para las imágenes JPEG recompresionantes, cuyo valor puede variar ligeramente, dependiendo del formato de ahorro seleccionado ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimización de gráficos vectoriales en Aspose.Words Producto ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opciones gráficas cuando se ahorran a formatos Tiff, Png, Bmp, Jpeg, Emf[UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Guardar el documento en grayscale (en inglés)[ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Cambiar entre la representación de formas de DrawingML y formas de retroceso ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Interruptor entre los modos de renderización de efectos DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

El ejemplo a continuación muestra cómo guardar un documento en formato JPEG utilizando el `Save` método y opciones de renderización:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
