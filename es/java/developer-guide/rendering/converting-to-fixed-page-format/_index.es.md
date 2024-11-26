---
title: Conversión a Formato de página fija en Java
second_title: Aspose.Words por Java
articleTitle: Conversión a Formato de página fija
linktitle: Conversión a Formato de página fija
description: "Aspose.Words para Java implementa su propio motor de diseño de página que le permite producir todos los formatos de página fijos, como PDF, XPS y varios formatos de imagen."
type: docs
weight: 10
url: /es/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementa su propio motor de diseño de página. Antes de profundizar en sus especificaciones, vale la pena discutir primero el documento a un alto nivel. Al pensar en un documento, los usuarios suelen imaginar una serie de hojas de papel que contienen palabras, imágenes, tablas y gráficos. Los documentos pueden ser de varios tipos, como texto, hojas de cálculo, diapositivas, CAD dibujos, diagramas de flujo y, por lo tanto, pueden tener diseños esencialmente diferentes. La mayoría de las aplicaciones permiten enviar documentos a una impresora; aquí es cuando un usuario puede ver realmente la apariencia final prevista del documento.

## Visualización de un Documento en Varias Aplicaciones

Varias aplicaciones de visualización o publicación de documentos permiten a los usuarios abrir (Adobe Acrobat, XPS Visor) y, a veces, editar (Adobe InDesign) documentos de formatos específicos. Estas aplicaciones suelen producir los denominados documentos en formato de "página fija". Dicho formato de documento describe con precisión dónde se coloca el contenido de un documento en cada página. Internamente, el formato PDF o XPS contiene una descripción de cada página, así como instrucciones de dibujo, especificando el diseño del contenido en la página. Esto es similar a los formatos de imagen, que describen dónde se muestra el contenido, ya sea en forma de trama o vector.

Por el contrario, algunas aplicaciones de edición de texto no admiten la visualización de las páginas de un documento. Por ejemplo, el bloc de notas Microsoft admite muy pocas funciones además de mostrar, editar e imprimir texto. La observación importante aquí es que tales aplicaciones no pueden mostrar páginas del documento ni decirle al usuario cuántas de ellas se imprimirían, solo permitiendo ver el contenido del documento. El documento se puede guardar en formato de texto sin formato y se puede abrir con muchas otras aplicaciones. Usando una aplicación que permite ver el contenido binario de un archivo arbitrario, se puede ver lo que está almacenado en el archivo del documento: es solo texto sin formato, no hay nada más en él.

Las aplicaciones de edición de texto un poco más sofisticadas, como Microsoft WordPad, guardan el documento en formato de texto enriquecido (RTF), que admite más funciones de formato, como inserción de imágenes, formato de caracteres, márgenes de párrafo y espaciado. Sin embargo, el formato RTF también contiene solo el contenido del documento, sin información sobre las páginas.

Microsoft Word es la aplicación de edición de texto más avanzada en Windows en la actualidad. Formatea los archivos en el formato DOCX, que describe el contenido del documento de manera flexible y extensa, lo que permite a los usuarios especificar el tamaño de la página, la orientación de una sección del documento y, al ser una aplicación WYSIWYG, incluso muestra las páginas del documento en la pantalla. Sin embargo, todavía no hay información sobre cómo se muestra el contenido del documento en las páginas disponibles en el archivo del documento. El archivo de documento solo describe el contenido en sí mismo y la relación de los objetos de documento entre sí, junto con algunas restricciones geométricas. Como resultado, antes de mostrar un documento, Microsoft Word calcula esa información por sí mismo. Aquí es donde entra en juego un diseño de página.

## Qué es un Diseño de Página

Un diseño de página de documento es una estructura de datos que describe dónde se encuentra un objeto en particular en las páginas de todos los objetos de documento. Además, dado que los objetos tienen propiedades que afectan su apariencia, como el tamaño de fuente, el sombreado o los efectos de dibujo, no solo necesita saber dónde está el objeto, sino también qué área (s) de la página ocupa y si se aplicará a varias páginas para que otros objetos no se superpongan en la misma área (s).

Aspose.Words implementa internamente la funcionalidad de diseño de página, lo que le permite producir todos los formatos de página fijos, como PDF, XPS y varios formatos de imagen. Sin el diseño de la página, la información almacenada en el archivo de documento de página fija no estaría disponible y no se admitirían todos estos formatos.

La relación entre un documento y un diseño de página es bastante simple. Mientras que un documento describe el contenido, el diseño de página correspondiente describe la geometría de ese contenido. Tenga en cuenta que un diseño de página no puede existir sin un documento, ya que no habría contenido para calcular la geometría, pero un documento puede existir sin un diseño de página. Por ejemplo, cuando un documento DOCX se convierte en un documento RTF, normalmente no es necesario conocer la geometría, ya que ninguno de los formatos la almacena.

## Crear un Diseño de Página

Crear un diseño de página puede ser un procedimiento costoso, tanto en términos de velocidad como de memoria. Esto se debe a varias razones:

- El documento puede tener una gran cantidad de contenido, que puede necesitar mostrarse en miles de páginas. Sería necesario describir la geometría de cada objeto en cada página, consumiendo recursos de memoria.
- El documento puede tener muchas reglas, imponiendo restricciones a la geometría. Se puede gastar un tiempo computacional considerable, asegurando que se satisfagan todas las restricciones.
- Algunas características del documento, por ejemplo, el campo `NUMPAGES`, crean dependencias recursivas para valores de propiedad futuros, que no están disponibles en el momento del cálculo. Esto conduce a cálculos repetitivos y suma en tiempo de cálculo.

Debido a las razones mencionadas anteriormente, Aspose.Words creará un diseño de página solo cuando sea necesario. Una razón típica para esto sería una solicitud para representar páginas de documentos u obtener un valor de campo que dependa de la información disponible en el diseño de la página. Una razón menos obvia podría ser exportar un documento a HTML. Aunque HTML no es un formato de página fija y no describe la geometría de los objetos de contenido, aún admite imágenes. Dichas imágenes pueden tener la forma de formas creadas en Microsoft Word con un texto dentro de ellas. Por ejemplo, un gráfico con etiquetas de eje se puede exportar a HTML como una imagen, pero antes de que esto se pueda hacer, Aspose.Words necesita representar esa imagen y, por lo tanto, necesita saber dónde mostrar la etiqueta. Vea el ejemplo de la tabla a continuación:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Propiedades No Geométricas

Además de manejar información geométrica, un diseño de página también es responsable de calcular colores y estilos de borde. En Microsoft Word, el color del texto se puede especificar como automático, lo que implica que la selección del color debe basarse en el color de sombreado de la celda o párrafo, o en el color de la página donde aparece el texto.

El diseño de la página calcula dónde aparecerá el texto y qué contenido se representará detrás de él, lo que permite el cálculo del color. Hay otros cálculos específicos realizados por el diseño de la página. Por ejemplo, un borde horizontal en una tabla depende de si una fila de la tabla es la última en una columna de texto y de si está dividida en columnas. Si una fila se representa al final de una columna, se usa el borde inferior en lugar de horizontal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

En Aspose.Words, un usuario puede solicitar si desea crear un nuevo diseño de página o actualizar uno existente. Ambos pueden realizarse mediante el método [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), proporcionado por la clase [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Si no existe un diseño de página, pero es necesario (por ejemplo, cuando el documento se exporta a un formato de página fija), Aspose.Words llamará automáticamente a este método. Sin embargo, si ya existe un diseño de página, Aspose.Words utilizará el existente para evitar consumir los recursos necesarios para actualizarlo. En este caso, el usuario debe llamar al método `UpdatePageLayout` para asegurarse de que el diseño de la página esté actualizado con el modelo de documento.

### Estructura Dinámica

El proceso de creación del diseño de página consta de los siguientes pasos:

- *Conversion* - enumerar el contenido del modelo de documento y preparar los objetos de diseño correspondientes.
- *Build* - organizar objetos de diseño para representar el contenido del documento en páginas.
- *Reflow* – actualización de la disposición de los objetos para satisfacer las restricciones de geometría.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content*: un paso necesario si el documento contiene formas con contenido de texto anidado.

Tenga en cuenta que el diseño de la página es una estructura dinámica que se puede reconstruir parcialmente. Esto es especialmente necesario cuando es imposible calcular valores de campo sin reconstruir la estructura de diseño del documento. El campo puede hacer referencia a la ubicación de un objeto en una página y, al mismo tiempo, el valor del campo en sí también se representa en la página, lo que afecta a la ubicación del objeto al que se hace referencia. Un diseño de página no se puede crear de una vez, porque es posible que los valores de campo aún no estén disponibles en el momento de la colocación en una página..

Considere el escenario típico cuando el campo `NUMPAGES` aparece en el pie de página de la primera página del documento. El valor de este campo es el número total de páginas. Para posicionar el campo en una página, se debe conocer su valor. Si solo se está construyendo la primera página, aún no se conoce el número total de páginas. En este caso, el diseño de la página debe usar el valor predeterminado y luego volver a ese campo y cambiar su valor de acuerdo con los cálculos reales. Sin embargo, cambiar el valor del campo puede afectar al contenido de otros documentos en una página y, en última instancia, hacer que se agregue una página nueva o se elimine una página existente, lo que hace que el valor calculado quede obsoleto. Este problema se puede resolver haciendo posible actualizar el diseño de página existente.

Al crear un diseño, también es posible configurar las propiedades [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) que afectan la salida del documento en pages.

## Guardar en Formato de página fija

Una vez creado el diseño de la página y calculada la geometría de los objetos y su posición en la página, el documento se puede guardar en un formato de página fija compatible con Aspose.Words. Al guardar documentos en formatos de página fija, se pueden utilizar las opciones de representación comunes a todos estos formatos. Permiten controlar:

- El número y el rango de páginas contenidas en el documento de salida ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progreso del guardado de documentos página por página ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un conjunto de caracteres que se utilizan para representar números ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un reproductor de metarchivos ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Para obtener más detalles, consulte el [Manejo de Metarchivos Windows](/words/java/handling-windows-metafiles/) artículo.
- Una tasa de calidad para recomprimir JPEG imágenes, cuyo valor puede diferir ligeramente, según el formato de guardado seleccionado ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimización de gráficos vectoriales en la salida Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opciones de gráficos al guardar en formatos Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Guardar el documento en escala de grises ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Alternar entre la representación de DrawingML formas y formas alternativas ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Cambio entre los modos de renderizado de efectos DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

El siguiente ejemplo muestra cómo guardar un documento en formato JPEG utilizando el método `Save` y las opciones de representación:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
