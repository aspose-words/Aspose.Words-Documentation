---
title: Uso de `DocumentBuilder` para Modificar un documento
second_title: Aspose.Words por Java
articleTitle: Uso de `DocumentBuilder` para Modificar un documento
linktitle: Uso de `DocumentBuilder` para Modificar un documento
type: docs
description: "Utilice el generador de documentos para modificar un documento fácilmente en Java."
weight: 20
url: /es/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Especificación del Formato

### Formato de Fuente

El formato de fuente actual está representado por un objeto `Font` devuelto por la propiedad `DocumentBuilder.Font`. La clase `Font` contiene una amplia variedad de propiedades de fuente posibles en Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
El siguiente ejemplo de código muestra cómo configurar el formato de fuente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formato de Celda

El formato de celda se usa durante la creación de una tabla. Está representado por un objeto `CellFormat` devuelto por la propiedad `DocumentBuilder.CellFormat`. CellFormat encapsula varias propiedades de celda de tabla, como ancho o alineación vertical.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
El siguiente ejemplo de código muestra cómo crear una tabla que contenga una sola celda formateada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formato de Filas

El formato de fila actual está determinado por un objeto `RowFormat` que devuelve la propiedad `DocumentBuilder.RowFormat`. El objeto encapsula información sobre el formato de todas las filas de la tabla.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
El ejemplo below code muestra cómo crear una tabla que contenga una sola celda y aplicar formato de fila.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formato de Lista

Aspose.Words permite la creación sencilla de listas aplicando formato de lista. DocumentBuilder proporciona la propiedad `DocumentBuilder.ListFormat` que devuelve un objeto `ListFormat`. Este objeto tiene varios métodos para iniciar y finalizar una lista y para aumentar/disminuir la sangría.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Hay dos tipos generales de listas en Microsoft Word: con viñetas y numeradas.

- Para iniciar una lista con viñetas, llame a [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Para iniciar una lista numerada, llame a [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

La viñeta o el número y el formato se agregan al párrafo actual y a todos los párrafos adicionales creados con **DocumentBuilder** hasta que se llame a [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) para detener el formato de la lista con viñetas.

En los documentos de Word, las listas pueden constar de hasta nueve niveles. El formato de lista para cada nivel especifica qué viñeta o número se usa, sangría izquierda, espacio entre la viñeta y el texto, etc.

- Para aumentar el nivel de lista del párrafo actual en un nivel, llame a [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Para disminuir el nivel de lista del párrafo actual en un nivel, llame a [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Los métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel.

{{% alert color="primary" %}}

También puede usar la propiedad [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) para obtener o establecer el nivel de lista del párrafo. Los niveles de la lista están numerados del 0 al 8.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una lista multinivel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Configuración de la Página y Formato de la Sección

Las propiedades de configuración de página y sección están encapsuladas en el objeto `PageSetup` que devuelve la propiedad `DocumentBuilder.PageSetup`. El objeto contiene todos los atributos de configuración de página de una sección (margen izquierdo, margen inferior, tamaño del papel, etc.) como propiedades.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
El siguiente ejemplo de código muestra cómo establecer propiedades como el tamaño de página y la orientación para la sección actual.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Aplicar un Estilo

Algunos objetos de formato, como Font o ParagraphFormat, admiten estilos. Un único estilo integrado o definido por el usuario se representa mediante un objeto `Style` que contiene las propiedades de estilo correspondientes, como el nombre, el estilo base, la fuente y el formato de párrafo del estilo,etc.

Además, un objeto **Style** proporciona la propiedad [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) que devuelve un identificador de estilo independiente de la configuración regional representado por un valor de enumeración **Style.StyleIdentifier**. El punto es que los nombres de los estilos integrados en Microsoft Word están localizados para diferentes idiomas. Con un identificador de estilo, puede encontrar el estilo correcto independientemente del idioma del documento. Los valores de enumeración corresponden a los Microsoft Word estilos integrados, como Normal, Heading 1, Heading 2, etc. A todos los estilos definidos por el usuario se les asigna el **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
El siguiente ejemplo de código muestra cómo aplicar un estilo de párrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Bordes y Sombreado

Los bordes están representados por BorderCollection. Se trata de una colección de objetos de borde a los que se accede por índice o por tipo de borde. El tipo de borde está representado por la enumeración `BorderType`. Algunos valores de la enumeración son aplicables a varios o solo a un elemento de documento. Por ejemplo, `BorderType.Bottom` se aplica a un párrafo o celda de tabla, mientras que `BorderType.DiagonalDown` especifica el borde diagonal solo en una celda de tabla.

Tanto la colección de bordes como cada borde separado tienen atributos similares, como color, estilo de línea, ancho de línea, distancia del texto y sombra opcional. Están representados por propiedades del mismo nombre. Puede lograr diferentes tipos de bordes combinando valores de propiedad. Además, los objetos **BorderCollection** y **Border** le permiten restablecer estos valores predeterminados llamando al método [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Tenga en cuenta que cuando las propiedades del borde se restablecen a los valores predeterminados, el borde es invisible.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
La clase [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) contiene atributos de sombreado para los elementos del documento. Puede establecer la textura de sombreado deseada y los colores que se aplican al fondo y al primer plano del elemento.

La textura de sombreado se establece con un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor de enumeración que permite la aplicación de varios patrones al objeto **Shading**. Por ejemplo, para establecer un color de fondo para un elemento de documento, utilice la opción [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valore y establezca el color de sombreado de primer plano según corresponda.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
El siguiente ejemplo muestra cómo aplicar bordes y sombreado a un párrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Ajustar a la cuadrícula

Aspose.Words proporciona dos propiedades `ParagraphFormat.SnapToGrid` y `Font.SnapToGrid` para obtener y establecer el ajuste de la propiedad del párrafo a la cuadrícula.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Mover el Cursor

### Detectar la Posición Actual del Cursor

Puede obtener dónde se encuentra actualmente el cursor del constructor en cualquier momento. La propiedad [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) devuelve el nodo que está seleccionado actualmente en este generador. El nodo es un hijo directo de un párrafo. Cualquier operación de inserción que realice con `DocumentBuilder` se insertará antes de `DocumentBuilder.CurrentNode`. Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, `DocumentBuilder.CurrentNode` devuelve nulo.

Además, puede usar la propiedad [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), que obtiene el párrafo que está seleccionado actualmente en este **DocumentBuilder**. El ejemplo below code muestra cómo acceder al nodo actual en un generador de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Mover a Cualquier Nodo (Párrafos y sus Hijos)

Si tiene un nodo de objeto de documento, que es un párrafo o un elemento secundario directo de un párrafo, puede apuntar el cursor del generador a este nodo. Utilice el método [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) para realizar esto.
El siguiente ejemplo de código muestra cómo mover una posición del cursor a un nodo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Ir al Inicio/Fin del documento

Si necesita moverse al principio del documento, llame a [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Si necesita desplazarse hasta el final del documento, llame a [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Mover a una Sección

Si está trabajando con un documento que contiene varias secciones, puede moverse a la sección deseada usando [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Este método mueve el cursor al principio de una sección especificada y acepta el índice de la sección requerida. Cuando el índice de sección es mayor o igual a 0, especifica un índice desde el principio del documento, siendo 0 la primera sección. Cuando el índice de la sección es menor que 0, especifica un índice desde el final del documento, siendo -1 la última sección. El ejemplo below code muestra cómo mover una posición del cursor a la sección especificada. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Mover a un Encabezado/Pie de página

Cuando necesite colocar algunos datos en un encabezado o pie de página, primero debe moverse allí usando [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).El método acepta un valor de enumeración HeaderFooterType que identifica el tipo de encabezado o pie de página al que se debe mover el cursor.

Si desea crear encabezados y pies de página que sean diferentes para la primera página, debe establecer la propiedad [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) en **true**. Si desea crear encabezados y pies de página que sean diferentes para las páginas pares e impares, debe establecer [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) en **true**.

Si necesita volver a la historia principal, use[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) para salir del encabezado o pie de página. El siguiente ejemplo crea encabezados y pies de página en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Pasar a un Párrafo

Use[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) para mover el cursor al párrafo deseado en la sección actual. Debe pasar dos parámetros a este método: paragraphIndex (el índice del párrafo al que moverse) y characterIndex (el índice del carácter dentro del párrafo).

La navegación se realiza dentro de la historia actual de la sección actual. Es decir, si movió el cursor al encabezado principal de la primera sección, paragraphIndex especifica el índice del párrafo dentro de ese encabezado de esa sección.

Cuando paragraphIndex es mayor o igual que 0, especifica un índice desde el principio de la sección, siendo 0 el primer párrafo. Cuando paragraphIndex es menor que 0, especifica un índice desde el final de la sección, siendo -1 el último párrafo. Actualmente, el índice de caracteres solo se puede especificar como 0 para ir al principio del párrafo o -1 para ir al final del párrafo. El siguiente ejemplo de código muestra cómo mover una posición del cursor al párrafo especificado. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Mover a una Celda de Tabla

Utilice [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) si necesita mover el cursor a una celda de la tabla en la sección actual. Este método acepta cuatro parámetros:

- tableIndex - el índice de la tabla a la que se moverá.
- rowIndex - el índice de la fila en la tabla.
- columnIndex - el índice de la columna en la tabla.
- characterIndex - el índice del carácter dentro de la celda.

La navegación se realiza dentro de la historia actual de la sección actual.

Para los parámetros de índice, cuando el índice es mayor o igual a 0, especifica un índice desde el principio siendo 0 el primer elemento. Cuando el índice es menor que 0, especifica un índice desde el final siendo -1 el último elemento.

Además, tenga en cuenta que characterIndex actualmente solo puede especificar 0 para moverse al principio de la celda o -1 para moverse al final de la celda. El siguiente ejemplo de código muestra cómo mover una posición del cursor a la celda de la tabla especificada. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Mover a un marcador

Los marcadores se utilizan con frecuencia para marcar lugares particulares del documento donde se van a insertar nuevos elementos. Para desplazarse a un marcador, utilice [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Este método tiene dos sobrecargas. El más simple no acepta nada más que el nombre del marcador donde se moverá el cursor. El siguiente ejemplo de código muestra cómo mover una posición del cursor a un marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Esta sobrecarga mueve el cursor a una posición justo después del inicio del marcador con el nombre especificado. Otra sobrecarga [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) mueve el cursor a un marcador con mayor precisión. Acepta dos parámetros booleanos adicionales:

- isStart determina si se mueve el cursor al principio o al final del marcador.
- isAfter determina si se mueve el cursor para que esté después de la posición inicial o final del marcador, o si se mueve el cursor para que esté antes de la posición inicial o final del marcador.

El siguiente ejemplo de código muestra cómo mover la posición del cursor justo después del final del marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Insertar texto nuevo de esta manera no reemplaza el texto existente del marcador. Tenga en cuenta que algunos marcadores del documento están asignados a campos de formulario. Moverse a dicho marcador e insertar texto allí inserta el texto en el código del campo del formulario. Aunque esto no invalidará el campo del formulario, el texto insertado no será visible porque se convierte en parte del código del campo.

### Mover a un campo `Merge`

A veces, es posible que deba realizar un Mail Merge "manual" usando `DocumentBuilder` o completar un campo de combinación de una manera especial dentro de un controlador de eventos Mail Merge. Ahí es cuando [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) podría ser útil. El método acepta el nombre del campo de combinación. Mueve el cursor a una posición justo más allá del campo de combinación especificado y elimina el campo de combinación. El siguiente ejemplo de código muestra cómo mover el cursor a una posición justo más allá del campo de combinación especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Cómo Convertir entre Unidades de Medida

La mayoría de las propiedades de objeto proporcionadas en el Aspose.Words API que representa algunas medidas (ancho / alto, márgenes y varias distancias) aceptan valores en puntos (1 pulgada equivale a 72 puntos). A veces, esto no es conveniente, por lo que existe la clase `ConvertUtil` que proporciona funciones auxiliares para convertir entre varias unidades de medida. Permite convertir pulgadas en puntos, puntos en pulgadas, píxeles en puntos y puntos en píxeles. Cuando los píxeles se convierten en puntos y viceversa, se puede realizar con resoluciones de 96 ppp (puntos por pulgada) o con la resolución de ppp especificada.

**ConvertUtil**

El siguiente ejemplo de código muestra cómo especificar las propiedades de la página en pulgadas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
