---
title: Conversión a formato de página fija
second_title: Aspose.Words para Python via .NET
articleTitle: Conversión a formato de página fija
linktitle: Conversión a formato de página fija
description: "Guarde documentos en formatos PDF, XPS, HTML, XAML, PostScript y PCL mediante Python."
type: docs
weight: 10
url: /es/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementa su propio motor de diseño de páginas. Antes de profundizar en sus especificaciones, vale la pena discutir primero el documento a alto nivel. Cuando piensan en un documento, los usuarios suelen imaginar varias hojas de papel que contienen palabras, imágenes, tablas y gráficos. Los documentos pueden ser de varios tipos, como texto, hojas de cálculo, diapositivas, dibujos CAD, diagramas de flujo y, por lo tanto, pueden tener diseños esencialmente diferentes. La mayoría de las aplicaciones permiten enviar documentos a una impresora; aquí es cuando un usuario puede ver realmente la apariencia final prevista del documento.

## Mostrar un documento en varias aplicaciones

Varias aplicaciones de visualización o publicación de documentos permiten a los usuarios abrir (Adobe Acrobat, XPS Viewer) y, a veces, editar (Adobe InDesign) documentos de formatos específicos. Estas aplicaciones suelen producir documentos en formato de "página fija". Este formato de documento describe con precisión dónde se coloca el contenido de un documento en cada página. Internamente, el formato PDF o XPS contiene una descripción de cada página, así como instrucciones de dibujo, especificando el diseño del contenido de la página. Esto es similar a los formatos de imagen, y describe dónde se muestra el contenido, ya sea en forma rasterizada o vectorial.

Por el contrario, algunas aplicaciones de edición de texto no admiten la visualización de las páginas de un documento. Por ejemplo, Microsoft Notepad admite muy pocas funciones además de simplemente mostrar, editar e imprimir texto. La observación importante aquí es que dichas aplicaciones no pueden mostrar páginas del documento ni decirle al usuario cuántas de ellas se imprimirían, solo permiten ver el contenido del documento. El documento se puede guardar en formato de texto sin formato y muchas otras aplicaciones pueden abrirlo. Usando una aplicación que permite ver el contenido binario de un archivo arbitrario, se puede ver lo que está almacenado en el archivo del documento: es simplemente texto sin formato, no hay nada más en él.

Las aplicaciones de edición de texto un poco más sofisticadas, como Microsoft WordPad, guardan el documento en formato de texto enriquecido (RTF), que admite más funciones de formato, como la inserción de imágenes, el formato de caracteres, los márgenes de párrafo y el espaciado. Sin embargo, el formato RTF también contiene sólo el contenido del documento, sin información sobre las páginas.

Microsoft Word es la aplicación de edición de texto en Windows más avanzada en la actualidad. Formatea archivos en formato DOCX, que describe el contenido del documento de manera flexible y extensa, lo que permite a los usuarios especificar el tamaño de página, la orientación de una sección del documento y, al ser una aplicación WYSIWYG, incluso mostrar páginas del documento en la pantalla. Sin embargo, todavía no hay información sobre cómo se muestra el contenido del documento en las páginas disponibles en el archivo del documento. El archivo de documento solo describe el contenido en sí y la relación de los objetos del documento entre sí, junto con algunas restricciones geométricas. Como resultado, antes de mostrar un documento, Microsoft Word calcula esa información por sí mismo. Aquí es donde entra en juego el diseño de página.

## ¿Qué es un diseño de página?

El diseño de página de un documento es una estructura de datos que describe dónde se encuentra un objeto particular en las páginas de todos los objetos del documento. Además, dado que los objetos tienen propiedades que afectan su apariencia, como el tamaño de fuente, el sombreado o los efectos de dibujo, es necesario no sólo saber dónde está el objeto, sino también qué área(s) de la página ocupa y si aparecerá. se aplican a varias páginas para que otros objetos no se superpongan en las mismas áreas.

Aspose.Words implementa internamente la funcionalidad de diseño de página, lo que le permite producir todos los formatos de página fijos, como PDF, XPS y varios formatos de imagen. Sin el diseño de página, la información almacenada en el archivo del documento de página fija no estaría disponible y no se admitirían todos estos formatos.

La relación entre un documento y un diseño de página es bastante sencilla. Mientras que un documento describe el contenido, el diseño de página correspondiente describe la geometría de ese contenido. Tenga en cuenta que un diseño de página no puede existir sin un documento ya que no habría contenido para calcular la geometría, pero un documento puede existir sin un diseño de página. Por ejemplo, cuando un documento DOCX se convierte en un documento RTF, normalmente no es necesario conocer la geometría, ya que ninguno de los formatos la almacena.

## Crear diseño de página

Crear un diseño de página puede ser un procedimiento costoso, tanto en términos de velocidad como de memoria. Esto se debe a varias razones:

- El documento puede tener una gran cantidad de contenido, que puede necesitar mostrarse en miles de páginas. Sería necesario describir la geometría de cada objeto en cada página, lo que consumiría recursos de memoria.
- El documento puede tener muchas reglas, lo que impone restricciones a la geometría. Se puede dedicar un tiempo de cálculo considerable para garantizar que se cumplan todas las restricciones.
- Algunas características del documento, por ejemplo, el campo `NUMPAGES`, crean dependencias recursivas para futuros valores de propiedad, que no están disponibles en el momento del cálculo. Esto conduce a cálculos repetitivos y suma tiempo de cálculo.

Por las razones antes mencionadas, Aspose.Words creará un diseño de página sólo cuando sea necesario. Una razón típica para esto sería una solicitud para representar páginas de documentos u obtener un valor de campo que depende de la información disponible en el diseño de la página. Una razón menos obvia podría ser exportar un documento a HTML. Aunque HTML no es un formato de página fija y no describe la geometría de los objetos de contenido, aún admite imágenes. Estas imágenes pueden tener la forma de formas creadas en Microsoft Word con un texto dentro de ellas. Por ejemplo, un gráfico con etiquetas de eje se puede exportar a HTML como una imagen, pero antes de hacerlo, Aspose.Words necesita representar esa imagen y, por lo tanto, necesita saber dónde mostrar la etiqueta. Vea el ejemplo del gráfico a continuación:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="conversión-a-formato-de-página-fija_1" style="width:800px"/>

### Propiedades no geométricas

Además de manejar información geométrica, un diseño de página también es responsable de calcular colores y estilos de borde. En Microsoft Word, el color del texto se puede especificar como automático, lo que implica que la selección del color debe basarse en el color de sombreado de la celda o párrafo, o en el color de la página donde aparece el texto.

El diseño de página calcula dónde aparecerá el texto y qué contenido se mostrará detrás de él, lo que permite calcular el color. Hay otros cálculos específicos realizados por el diseño de página. Por ejemplo, un borde horizontal en una tabla depende de si una fila de la tabla es la última en una columna de texto y de si está dividida entre columnas. Si una fila se representa al final de una columna, se utiliza el borde inferior en lugar del horizontal.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

En Aspose.Words, un usuario puede solicitar si desea crear un nuevo diseño de página o actualizar uno existente. Ambos pueden realizarse mediante el método [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/), proporcionado por la clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Si no existe un diseño de página, pero es necesario (por ejemplo, cuando el documento se exporta a un formato de página fija), Aspose.Words llamará automáticamente a este método. Sin embargo, si ya existe un diseño de página, Aspose.Words utilizará el existente para evitar consumir los recursos necesarios para actualizarlo. En este caso, el usuario debe llamar al método [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) para asegurarse de que el diseño de la página esté actualizado con el modelo del documento.

### Estructura dinámica

El proceso de creación de un diseño de página consta de los siguientes pasos:

- *Conversion*: enumera el contenido del modelo de documento y prepara los objetos de diseño correspondientes.
- *Build*: organización de objetos de diseño para representar el contenido del documento en páginas.
- *Reflow*: actualización de la disposición de los objetos para satisfacer las restricciones geométricas.
- *Proyectar objetos de diseño en una presentación de página fija y finalizar la información de color*.
- *Creación y redistribución del contenido de la forma*: un paso necesario si el documento contiene formas con contenido de texto anidado.

Tenga en cuenta que el diseño de la página es una estructura dinámica que se puede reconstruir parcialmente. Esto es especialmente necesario cuando es imposible calcular los valores de los campos sin reconstruir la estructura de diseño del documento. El campo puede hacer referencia a la ubicación de un objeto en una página y, al mismo tiempo, el valor del campo en sí también se representa en la página, lo que afecta la ubicación del objeto al que se hace referencia. Un diseño de página no se puede crear de una sola vez, porque es posible que los valores de los campos aún no estén disponibles en el momento de posicionarse en una página.

Considere el escenario típico cuando el campo `NUMPAGES` aparece en el pie de página de la primera página del documento. El valor de este campo es el número total de páginas. Para posicionar el campo en una página, se debe conocer su valor. Si actualmente solo se está creando la primera página, aún no se conoce el número total de páginas. En este caso, el diseño de la página tiene que usar el valor predeterminado y luego volver a ese campo y cambiar su valor de acuerdo con los cálculos reales. Sin embargo, cambiar el valor del campo puede afectar el contenido de otro documento en una página y, en última instancia, hacer que se agregue una nueva página o se elimine una página existente, lo que hace que el valor calculado quede obsoleto. Este problema se puede resolver haciendo posible actualizar el diseño de página existente.

Al crear un diseño, también es posible configurar propiedades [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) que afectan la salida del documento en las páginas.

## Guardar en formato de página fija

Una vez creado el diseño de la página y calculada la geometría de los objetos y su posición en la página, el documento se puede guardar en un formato de página fija compatible con Aspose.Words. Al guardar documentos en formatos de página fija, se pueden utilizar las opciones de representación comunes a todos estos formatos. Permiten controlar:

- El número y rango de páginas contenidas en el documento de salida ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- Un conjunto de caracteres que se utilizan para representar números ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- Un reproductor de metarchivos ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). Para obtener más detalles, consulte el artículo [Manejo de metarchivos Windows](/words/es/python-net/handling-windows-metafiles/).
- Una tasa de calidad para recomprimir imágenes JPEG, cuyo valor puede variar ligeramente, dependiendo del formato de guardado seleccionado ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- Optimización de gráficos vectoriales en salida Aspose.Words ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- Opciones de gráficos al guardar en formatos Tiff, Png, Bmp, Jpeg, Emf ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- Guardar el documento en escala de grises ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- Cambio entre la representación de formas DrawingML y formas alternativas ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- Cambio entre modos de renderizado de efectos DML ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

El siguiente ejemplo demuestra cómo guardar un documento en formato JPEG utilizando el método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) y las opciones de renderizado:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
