---
title: Utilice DocumentBuilder para Insertar Elementos de Documento
second_title: Aspose.Words por Java
articleTitle: Utilice DocumentBuilder para Insertar Elementos de Documento
linktitle: Utilice DocumentBuilder para Insertar Elementos de Documento
type: docs
description: "Inserte elementos de documento utilizando el generador de documentos en Java."
weight: 10
url: /es/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

El [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) se usa para modificar documentos. Este artículo explica y describe cómo realizar una serie de tareas.

## Insertar una Cadena de Texto

Simplemente pase la cadena de texto que necesita insertar en el documento al método [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). El formato del texto está determinado por la propiedad `Font`. Este objeto contiene diferentes atributos de fuente( nombre de fuente, tamaño de fuente, color, etc.). Algunos atributos de fuente importantes también están representados por las propiedades [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) para permitirle acceder a ellos directamente. Estas son propiedades booleanas [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) y [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Tenga en cuenta que el formato de caracteres que establezca se aplicará a todo el texto insertado desde la posición actual en el documento en adelante.

{{% /alert %}}

El siguiente ejemplo de código Inserta texto formateado usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Insertar un Párrafo

DocumentBuilder.writeln también inserta una cadena de texto en el documento, pero además, agrega un salto de párrafo. El formato de fuente actual también se especifica mediante DocumentBuilder.la propiedad getFont y el formato de párrafo actual están determinados por DocumentBuilder.getParagraphFormat propiedad.

El siguiente ejemplo de código muestra cómo insertar un párrafo en el documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Insertar una Tabla

El algoritmo básico para crear una tabla usando `DocumentBuilder` es simple:

1. Comience la tabla usando [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Inserte una celda usando [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Esto inicia automáticamente una nueva fila. Si es necesario, use la propiedad [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) para especificar el formato de celda.
1. Inserte el contenido de la celda utilizando los métodos `DocumentBuilder`.
1. Repita los pasos 2 y 3 hasta completar la fila.
1. Llame a [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) para finalizar la fila actual. Si es necesario, use la propiedad [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) para especificar el formato de fila.
1. Repita los pasos 2 a 5 hasta completar la tabla.
1. Llama a [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) para terminar de construir la mesa. Los métodos apropiados de creación de la tabla DocumentBuilder se describen a continuación.

### Comenzando una Mesa

Llamando a DocumentBuilder.startTable es el primer paso para construir una tabla. También se puede llamar dentro de una celda, en este caso, inicia una tabla anidada. El siguiente método a llamar es DocumentBuilder.insertCell.

### Insertar una Celda

Después de llamar DocumentBuilder.insertCell, se crea una nueva celda y cualquier contenido que agregue utilizando otros métodos de la clase `DocumentBuilder` se agregará a la celda actual. Para iniciar una celda nueva en la misma fila, llame a DocumentBuilder.insertCell otra vez. Utilice el DocumentBuilder.getCellFormat propiedad para especificar el formato de celda. Devuelve un objeto [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) que representa todo el formato de una celda de la tabla.

### Terminando una Fila

Llame a DocumentBuilder.endRow para terminar la fila actual. Si llamas DocumentBuilder.insertCell inmediatamente después de eso, la tabla continúa en una nueva fila. Utilice la propiedad `DocumentBuilder.RowFormat` para especificar el formato de fila. Devuelve un objeto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) que representa todo el formato de una fila de la tabla.

### Poner fin a una Mesa

Llame a DocumentBuilder.endTable para terminar la tabla actual. Este método debe llamarse solo una vez después de DocumentBuilder.endRow fue llamado. Cuando se llama, DocumentBuilder.endTable mueve el cursor fuera de la celda actual a una posición justo después de la tabla. El siguiente ejemplo demuestra cómo crear una tabla formateada que contenga 2 filas y 2 columnas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Insertar una Pausa

Si desea iniciar explícitamente una nueva línea, párrafo, columna, sección o página, llame a DocumentBuilder.insertBreak. Pase a este método el tipo de interrupción que necesita insertar que está representado por la enumeración `BreakType`.
El siguiente ejemplo de código muestra cómo insertar saltos de página en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Insertar una Imagen

DocumentBuilder proporciona varias sobrecargas del método [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) que le permiten insertar una imagen en línea o flotante. Si la imagen es un metarchivo EMF o WMF, se insertará en el documento en formato de metarchivo. Todas las demás imágenes se almacenarán en formato PNG. El DocumentBuilder.insertImage el método puede usar imágenes de diferentes fuentes:

- Desde un archivo o `URL` pasando un parámetro de cadena
- De una secuencia pasando un parámetro `Stream`
- A partir de un objeto Image pasando un parámetro Image
- Desde una matriz de bytes pasando un parámetro de matriz de bytes
- Y otros

Para cada uno de los DocumentBuilder.insertImage métodos ,hay sobrecargas adicionales que le permiten insertar una imagen con las siguientes opciones:

- En línea o flotando en una posición específica
- Escala de porcentaje o tamaño personalizado

Además, el DocumentBuilder.el método insertImage devuelve un objeto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) que se acaba de crear e insertar para que pueda modificar aún más las propiedades de la Forma.

### Insertar una Imagen en Línea

Pase una sola cadena que represente un archivo que contenga la imagen a DocumentBuilder.insertImage para insertar la imagen en el documento como un gráfico en línea. El siguiente ejemplo de código muestra cómo insertar una imagen en línea en la posición del cursor en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Insertar una Imagen Flotante (Posicionada Absolutamente)

Este ejemplo inserta una imagen flotante de un archivo o `URL` en una posición y tamaño especificados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Insertar un Marcador

Para insertar un marcador en el documento, debe hacer lo siguiente:

1. Llame a [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) pasándole el nombre deseado del marcador.
1. Inserte el texto del marcador utilizando los métodos `DocumentBuilder`.
1. Llame a [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) pasándole el mismo nombre que usó con DocumentBuilder.startBookmark.

Los marcadores pueden superponerse y abarcar cualquier rango. Para crear un marcador válido, debe llamar a ambos DocumentBuilder.startBookmark y DocumentBuilder.endBookmark con el mismo nombre de marcador.

Los marcadores mal formados o los marcadores con nombres duplicados se ignorarán cuando se guarde el documento.

El siguiente ejemplo de código muestra cómo insertar un marcador en un documento mediante un generador de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Insertar un Campo

Los campos de los documentos Microsoft Word constan de un código de campo y un resultado de campo. El código del campo es como una fórmula y el resultado del campo es el valor que produce la fórmula. El código de campo también puede contener conmutadores de campo que son instrucciones adicionales para realizar una acción específica. Puede alternar entre mostrar códigos de campo y resultados en su documento en Microsoft Word usando el método abreviado de teclado Alt+F9. Los códigos de campo aparecen entre llaves (`{ }`).Utilice [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) para crear campos en el documento. Debe especificar un tipo de campo, un código de campo y un valor de campo. Si no está seguro de la sintaxis del código de campo en particular, cree primero el campo en Microsoft Word y cambie para ver su código de campo.
El siguiente ejemplo de código inserta un campo de combinación en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Insertar un campo `Form`

Los campos de formulario son un caso particular de campos de palabras que permiten la "interacción" con el usuario. Los campos de formulario en Microsoft Word incluyen cuadro de texto, Combobox y checkbox.DocumentBuilder proporciona métodos especiales para insertar cada tipo de campo de formulario en el documento: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) y [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Tenga en cuenta que si especifica un nombre para el campo del formulario, se creará automáticamente un marcador con el mismo nombre.

### Insertar una Entrada de texto

DocumentBuilder.insertTextInput para insertar un cuadro de texto en el documento. El siguiente ejemplo de código muestra cómo insertar un campo de formulario de entrada de texto en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insertando un `CheckBox`

Llame a DocumentBuilder.insertCheckBox para insertar un checkbox en el documento. El siguiente ejemplo de código muestra cómo insertar un campo de formulario checkbox en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insertar un Cuadro Combinado

Llame a DocumentBuilder.insertComboBox para insertar un cuadro combinado en el documento. El siguiente ejemplo de código muestra cómo insertar un campo de formulario de cuadro combinado en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Insertar Configuración regional a Nivel de Campo

Los clientes pueden especificar la configuración regional a nivel de campo ahora y pueden lograr un mejor control. Los ID de configuración regional se pueden asociar con cada campo dentro del DocumentBuilder. Los ejemplos a continuación ilustran cómo hacer uso de esta opción.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Insertando HTML

Puede insertar fácilmente una cadena HTML que contenga un fragmento HTML o un documento HTML completo en el documento de Word. Simplemente pase esta cadena al DocumentBuilder.insertHtml método. Una de las implementaciones útiles del método es almacenar una cadena HTML en una base de datos e insertarla en el documento durante Mail Merge para agregar el contenido formateado en lugar de compilarlo utilizando varios métodos del generador de documentos. El siguiente ejemplo de código muestra inserciones HTML en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Insertar un Hipervínculo

Utilice DocumentBuilder.insertHyperlink para insertar un hipervínculo en el documento. Este método acepta tres parámetros: texto del enlace que se mostrará en el documento, destino del enlace (URL o el nombre de un marcador dentro del documento) y un parámetro booleano que debería ser verdadero si el `URL` es el nombre de un marcador dentro del documento.DocumentBuilder.insertHyperlink llamadas internas DocumentBuilder.insertField. El método siempre agrega apóstrofes al principio y al final de URL. Tenga en cuenta que debe especificar el formato de fuente para el texto de visualización del hipervínculo explícitamente utilizando la propiedad `Font`. El siguiente ejemplo de código inserta un hipervínculo en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Insertar una Tabla de Contenido

Puede insertar un campo `TOC` (tabla de contenido) en el documento en la posición actual llamando al método [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). El DocumentBuilder.El método insertTableOfContents solo insertará un campo `TOC` en el documento. Para crear la tabla de contenido y mostrarla de acuerdo con los números de página, se debe llamar al método both **Document.UpdateFields**después de insertar el campo. El siguiente ejemplo de código muestra cómo insertar un campo de tabla de contenido en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Insertando Ole Objeto

Si desea Ole Objeto, llame a [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Establezca el Nombre y la Extensión del Archivo al Insertar el Objeto Ole

El paquete OLE es una forma heredada e "indocumentada"de almacenar objetos incrustados si se desconoce el controlador OLE. Las primeras versiones de Windows, como Windows 3.1, 95 y 98, tenían una aplicación Packager.exe que podía usarse para incrustar cualquier tipo de datos en el documento. Ahora, esta aplicación está excluida de Windows, pero MS Word y otras aplicaciones aún la usan para incrustar datos si falta el controlador OLE o se desconoce. la clase OlePackage permite acceder a OLE Package propiedades.El siguiente ejemplo de código muestra cómo configurar el nombre de archivo, la extensión y el nombre para mostrar de OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Obtenga Acceso a los Datos sin Procesar del Objeto OLE

El siguiente ejemplo de código demuestra cómo obtener datos sin procesar del objeto OLE utilizando el método `OleFormat.GetRawData` ().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insertar Regla Horizontal en el Documento

El siguiente ejemplo de código muestra cómo insertar una forma de regla horizontal en un documento utilizando el método `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Trabajar con Formas

### Inserción de Formas en línea y flotantes Libres

Puede insertar una forma en línea con un tipo y tamaño especificados y una forma flotante con la posición, el tamaño y el tipo de ajuste de texto especificados en un documento utilizando el método `DocumentBuilder.InsertShape`. El método `DocumentBuilder.InsertShape` permite insertar la forma DML en el modelo de documento. El documento debe guardarse en el formato que admita formas DML; de lo contrario, dichos nodos se convertirán a formas VML mientras se guarda el documento. El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Crear Rectángulo de Esquina Recortada

Puedes crear un rectángulo de esquina recortada usando Aspose.Words. Los tipos de forma son SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, y DiagonalCornersRounded. La forma DML se crea utilizando el método `DocumentBuilder.InsertShape` con estos tipos de formas. Estos tipos no se pueden usar para crear VML formas. Intentar crear una forma utilizando el constructor público de la clase" Forma "genera la excepción" NotSupportedException". El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importe Formas con Math XML como Formas en DOM

Puede usar la propiedad `LoadOptions.ConvertShapeToOfficeMath` para convertir las formas con EquationXML en objetos matemáticos de Office. El valor predeterminado de esta propiedad corresponde al comportamiento de MS Palabras, es decir, las formas con la ecuación XML no se convierten en objetos matemáticos de Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
