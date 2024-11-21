---
title: Uso `DocumentBuilder` para insertar elementos del documento
second_title: Aspose.Words para Java
articleTitle: Uso `DocumentBuilder` para insertar elementos del documento
linktitle: Uso `DocumentBuilder` para insertar elementos del documento
type: docs
description: "Insertar elementos de documento utilizando el constructor de documentos Java."
weight: 10
url: /es/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

El [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) se utiliza para modificar documentos. Este artículo explica y describe cómo realizar una serie de tareas.

## Insertar una cuerda de texto

Simplemente pase la cadena de texto que necesita insertar en el documento al [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) método. El formato de texto es determinado por el `Font` propiedad. Este objeto contiene diferentes atributos de fuentes (nombre de columna, tamaño de fuente, color, etc.). Algunos atributos de fuentes importantes también están representados por [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) propiedades que le permiten acceder directamente a ellas. Estas son propiedades booleanas [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), y [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Tenga en cuenta que el formato de caracteres que establece se aplicará a todo texto insertado desde la posición actual en el documento en adelante.

{{% /alert %}}

El siguiente ejemplo de código Inserta texto formateado usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Inserción de un párrafo

DocumentBuilder.writeln inserta una cadena de texto también en el documento, pero además, añade una interrupción del párrafo. El formato de fuente actual también se especifica en el DocumentBuilder. # La propiedad de la fuente y el formato actual del párrafo se determinan por la propiedad DocumentBuilder.getParagraphFormat

El siguiente ejemplo de código muestra cómo insertar un párrafo en el documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Inserción de una tabla

El algoritmo básico para crear una tabla usando `DocumentBuilder` es simple:

1. Comience la tabla usando [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Insertar una celda usando [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Esto comienza automáticamente una nueva fila. Si es necesario, utilice el [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) propiedad para especificar el formato celular.
1. Insertar contenido celular usando `DocumentBuilder` métodos.
1. Repita los pasos 2 y 3 hasta que la fila esté completa.
1. Call [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) para terminar la fila actual. Si es necesario, use [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) propiedad para especificar formato de fila.
1. Repita los pasos 2 - 5 hasta que la mesa esté completa.
1. Call [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) para terminar el edificio de mesa. A continuación se describen los métodos apropiados de creación de tablas DocumentBuilder.

### Iniciar una tabla

Llamando a DocumentBuilder.start La tabla es el primer paso en construir una tabla. También se puede llamar dentro de una celda, en este caso, comienza una mesa anida. El siguiente método para llamar es DocumentBuilder.insertCell.

### Inserción de una célula

Después de llamar a DocumentBuilder. insertar Celda, se crea una nueva célula y cualquier contenido que agregue usando otros métodos del `DocumentBuilder` la clase se añadirá a la celda actual. Para empezar una nueva celda en la misma fila, llame a DocumentBuilder. insertar Célula otra vez. Utilice el DocumentBuilder.getCell Formato de propiedad para especificar el formato celular. Devuelve a [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) objeto que representa todo el formato para una celda de mesa.

### Ending a Row

Llame a DocumentBuilder.end Rema para terminar la fila actual. Si llamas a DocumentBuilder. insertar Celda inmediatamente después de eso, entonces la mesa continúa en una nueva fila. Usar el `DocumentBuilder.RowFormat` propiedad para especificar formato de fila. Devuelve a [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objeto que representa todo el formato para una fila de mesa.

### Ending a Table

Llame a DocumentBuilder.end Mesa para terminar la tabla actual. Este método debe llamarse sólo una vez después de DocumentBuilder. Dow fue llamado. Cuando se llama, DocumentBuilder.end La tabla mueve el cursor fuera de la celda actual a una posición justo después de la tabla. El siguiente ejemplo demuestra cómo construir una tabla formateada que contenga 2 filas y 2 columnas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Inserción

Si desea iniciar explícitamente una nueva línea, párrafo, columna, sección o página, llame a DocumentBuilder. insertBreak. Pasar a este método el tipo de la rotura que necesita para insertar que está representado por el `BreakType` enumeración
El siguiente ejemplo de código muestra cómo insertar página rompe en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Insertar una imagen

DocumentBuilder ofrece varias sobrecargas de los [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) método que permite insertar una imagen inline o flotante. Si la imagen es un metafile EMF o WMF, se insertará en el documento en formato metafile. Todas las otras imágenes serán almacenadas en formato PNG. El DocumentBuilder.insert El método de imagen puede utilizar imágenes de diferentes fuentes:

- De un archivo o `URL` pasando un parámetro de cuerda
- De un arroyo pasando a `Stream` parámetro
- De un objeto Imagen pasando un parámetro Imagen
- De una matriz byte pasando un parámetro de matriz byte
- Y otros

Para cada uno de los DocumentBuilder. insertar Métodos de imagen, hay más sobrecargas que le permiten insertar una imagen con las siguientes opciones:

- Inline o flotando en una posición específica
- Escala porcentual o tamaño personalizado

Además, el DocumentBuilder.insert Método de imagen devuelve un [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objeto que fue creado e insertado para que pueda modificar más las propiedades de la Forma.

### Insertar una imagen en línea

Pase una sola cadena representando un archivo que contiene la imagen a DocumentBuilder. insertar Imagen para insertar la imagen en el documento como un gráfico en línea. El siguiente ejemplo de código muestra cómo insertar una imagen en línea en la posición del cursor en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserción de una imagen flotante (Posición absoluta)

Este ejemplo inserta una imagen flotante de un archivo o `URL` a una posición y tamaño especificados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Insertar una marca

Para insertar un marcador en el documento, debe hacer lo siguiente:

1. Call [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) pasando el nombre deseado del marcador.
1. Insertar el texto marcador usando `DocumentBuilder` métodos.
1. Call [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) pasando el mismo nombre que usaste con DocumentBuilder.startBookmark.

Los marcadores pueden superponerse y abarcar cualquier rango. Para crear un marcador válido debes llamar a DocumentBuilder.startBookmark y DocumentBuilder.endFavoritos con el mismo nombre de marcadores.

Los marcadores o marcadores mal formados con nombres duplicados serán ignorados cuando se guarda el documento.

El siguiente ejemplo de código muestra cómo insertar un marcador en un documento usando un constructor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Inserción de un campo

Campos en Microsoft Word los documentos consisten en un código de campo y un resultado de campo. El código de campo es como una fórmula y el resultado de campo es el valor que la fórmula produce. El código de campo también puede contener interruptores de campo que son instrucciones adicionales para realizar una acción específica. Puede cambiar entre mostrar códigos de campo y resultados en su documento en Microsoft Word usando el teclado atajo Alt+F9. Los códigos de campo aparecen entre los frenos rizados ( { } ). Uso [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) crear campos en el documento. Necesita especificar un tipo de campo, código de campo y valor de campo. Si no está seguro sobre la sintaxis de código de campo particular, cree el campo en Microsoft Word primero y cambiar para ver su código de campo
El siguiente ejemplo de código inserta un campo de fusión en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Inserción `Form` Campo

Los campos de formulario son un caso particular de campos de Word que permite la "interacción" con el usuario. Campos de formulario en Microsoft Word incluye el buzón de texto, Combobox y la casilla de verificación. DocumentBuilder ofrece métodos especiales para insertar cada tipo de campo de forma en el documento: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), y [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Tenga en cuenta que si especifica un nombre para el campo de formulario, entonces se crea automáticamente un marcador con el mismo nombre.

### Insertar una entrada de texto

DocumentBuilder.insertTextInput para insertar un cuadro de texto en el documento. El siguiente ejemplo de código muestra cómo insertar un campo de formulario de entrada de texto en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserción `CheckBox`

Llama a DocumentBuilder.insert CheckBox para insertar una casilla de verificación en el documento. El siguiente ejemplo de código muestra cómo insertar un campo de formulario de casilla de verificación en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insertar una caja Combo

Llame a DocumentBuilder.insertComboBox para insertar una caja combo en el documento. El siguiente ejemplo de código muestra cómo insertar un campo de forma de caja combo en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Insertar Locale a nivel de campo

Los clientes pueden especificar Locale a nivel de campo ahora y puede lograr un mejor control. Locale Los medicamentos se pueden asociar con cada campo dentro del DocumentBuilder. Los ejemplos que figuran a continuación ilustran cómo utilizar esta opción.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Insertar HTML

Puede insertar fácilmente una cadena HTML que contenga un fragmento HTML o documento HTML completo en el documento de Word. Pasa esta cuerda al DocumentBuilder. insertar Método Html. Una de las implementaciones útiles del método es almacenar una cadena HTML en una base de datos e insertarla en el documento durante mail merge para obtener el contenido formateado añadido en lugar de construirlo utilizando varios métodos del constructor de documentos. El siguiente ejemplo de código muestra insertar HTML en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Insertar un hipervínculo

Use DocumentBuilder.insertHyperlink para insertar un hipervínculo en el documento. Este método acepta tres parámetros: texto del enlace que se mostrará en el documento, destino de enlace (URL o nombre de un marcador dentro del documento), y un parámetro booleano que debe ser true si `URL` es un nombre de un marcador dentro del documento. DocumentBuilder.insertHyperlink llamadas internas DocumentBuilder.insertField. El método siempre añade apostrofes al principio y al final de la URL. Tenga en cuenta que necesita especificar el formato de fuente para el texto de visualización de hipervínculo explícitamente utilizando el `Font` propiedad. El siguiente ejemplo de código inserta un hipervínculo en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inserción de una tabla de contenidos

Puede insertar un `TOC` (tabla de contenidos) campo en el documento en la posición actual llamando al [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) método. El método DocumentBuilder.insertTableOfContents sólo insertará un `TOC` campo en el documento. Para construir la tabla de contenidos y mostrarlos según números de página, los dos **Document.UpdateFields**método debe ser llamado después de la inserción del campo. El siguiente ejemplo de código muestra cómo insertar un campo Tabla de contenidos en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Inserción del objeto Ole

Si quieres llamar a Ole Object [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Establecer el nombre y la extensión de archivo al insertar objetos Ole

El paquete OLE es una forma heredada y "indocumentada" para almacenar objetos embebidos si el manipulador OLE es desconocido. Principios Windows versiones tales como Windows 3.1, 95 y 98 tenían Packager. exe aplicación que podría utilizarse para incorporar cualquier tipo de datos en el documento. Ahora, esta solicitud está excluida Windows pero MS Word y otras aplicaciones todavía lo utilizan para incrustar datos si el controlador OLE está desaparecido o desconocido. Clase OlePackage permite acceder a propiedades OLE Package. El siguiente ejemplo de código muestra cómo configurar el nombre de archivo, la extensión y el nombre de visualización de OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Obtener acceso a OLE Object Raw Data

El siguiente ejemplo de código muestra cómo conseguir OLE Objeción de datos brutos utilizando `OleFormat.GetRawData`() método.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insertar horizontal Regla en el documento

El siguiente ejemplo de código muestra cómo insertar la forma de regla horizontal en un documento utilizando `DocumentBuilder.InsertHorizontalRule` método.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Trabajando con Formas

### Inserción de formas de inlineación y libre flotante

Puede insertar una forma en línea con un tipo y tamaño especificados y una forma de plantación libre con el tipo de posición, tamaño y texto especificado en un documento utilizando `DocumentBuilder.InsertShape` método. El `DocumentBuilder.InsertShape` método permite insertar la forma DML en el modelo de documento. El documento debe guardarse en el formato, que admite formas DML, de lo contrario tales nodos se convertirán en forma VML, mientras que el ahorro de documentos. El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Crear el rectángulo de esquina Snip

Usted puede crear un rectángulo de esquina chispa usando Aspose.Words. Los tipos de formas son SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded, y DiagonalCornersRounded. La forma DML se crea utilizando `DocumentBuilder.InsertShape` método con estos tipos de forma. Estos tipos no pueden utilizarse para crear formas VML. El intento de crear una forma utilizando el constructor público de la clase "Shape" eleva la excepción "NotSupportedException". El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Formas de importación con XML de matemáticas como formas en DOM

Puedes usar `LoadOptions.ConvertShapeToOfficeMath` propiedad para convertir las formas con EquationXML a objetos Office Math. El valor predeterminado de esta propiedad corresponde al comportamiento de MS Word, es decir, las formas con ecuación XML no se convierten en objetos matemáticos de Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
