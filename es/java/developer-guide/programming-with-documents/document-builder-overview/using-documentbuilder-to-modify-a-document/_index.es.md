---
title: Uso `DocumentBuilder` Modificar un documento
second_title: Aspose.Words para Java
articleTitle: Uso `DocumentBuilder` Modificar un documento
linktitle: Uso `DocumentBuilder` Modificar un documento
type: docs
description: "Utilice el constructor de documentos para modificar fácilmente un documento Java."
weight: 20
url: /es/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Formato de especificación

### Formato de fuente

Formato de fuente actual está representado por un `Font` objeto devuelto por el `DocumentBuilder.Font` propiedad. El `Font` clase contiene una amplia variedad de propiedades de fuentes posibles en Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
El siguiente ejemplo de código muestra cómo configurar el formato de fuente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Cell Formatting

El formato celular se utiliza durante la construcción de una tabla. Está representado por un `CellFormat` objeto devuelto por el `DocumentBuilder.CellFormat` propiedad. CellFormat encapsula varias propiedades de células de mesa como ancho o alineación vertical.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
El siguiente ejemplo de código muestra cómo crear una tabla que contenga una sola célula formateada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Row Formatting

Formato de fila actual es determinado por un `RowFormat` objeto que es devuelto por el `DocumentBuilder.RowFormat` propiedad. El objeto encapsula información sobre todo el formato de fila de mesa.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
El serlow code ejemplo muestra cómo crear una tabla que contiene una sola célula y aplicar formato de fila.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formato de lista

Aspose.Words permite la fácil creación de listas aplicando formato de lista. DocumentBuilder proporciona el `DocumentBuilder.ListFormat` propiedad que devuelve un `ListFormat` objeto. Este objeto tiene varios métodos para iniciar y terminar una lista y aumentar/disminuir el indent.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Hay dos tipos generales de listas en Microsoft Word: balada y numerada.

- Para empezar una lista de balas, llama [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Para empezar una lista numerada, llame [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

La bala o el número y el formato se añaden al párrafo actual y todos los párrafos adicionales creados utilizando **DocumentBuilder** hasta [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) se llama para detener el formato de lista de balas.

En documentos de Word, las listas pueden consistir en hasta nueve niveles. El formato de lista para cada nivel especifica qué bala o número se utiliza, indent izquierdo, espacio entre la bala y el texto, etc.

- To increase the list level of the current paragraph by one level, call [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Para reducir el nivel de lista del párrafo actual por un nivel, llame [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Los métodos cambian el nivel de lista y aplican las propiedades de formato del nuevo nivel.

{{% alert color="primary" %}}

También puede utilizar el [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) propiedad para obtener o establecer el nivel de lista para el párrafo. Los niveles de lista son de 0 a 8.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo construir una lista multinivel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Configuración de página y formato de sección

Configuración de página y propiedades de sección se encapsulan en el `PageSetup` objeto que es devuelto por el `DocumentBuilder.PageSetup` propiedad. El objeto contiene todos los atributos de configuración de página de una sección (míngeno izquierdo, margen inferior, tamaño de papel, etc.) como propiedades.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
El siguiente ejemplo de código muestra cómo establecer tales propiedades como tamaño de página y orientación para la sección actual.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Aplicar un estilo

Algunos objetos de formato como los estilos de soporte Font o ParagraphFormat. Un solo estilo integrado o definido por el usuario está representado por un `Style` objeto que contiene las propiedades de estilo correspondiente como nombre, estilo base, fuente y formato párrafo del estilo, y así sucesivamente.

Además, a **Style** objeto proporciona el [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) propiedad que devuelve un identificador de estilo locale-independiente representado por un **Style.StyleIdentifier** Valor de enumeración. El punto es que los nombres de estilos incorporados en Microsoft Word se localizan para diferentes idiomas. Utilizando un identificador de estilo, puede encontrar el estilo correcto independientemente del idioma de documento. Los valores de enumeración corresponden a los Microsoft Word estilos incorporados como Normal , Cabeza 1 , Cabeza 2 etc. Todos los estilos definidos por el usuario son asignados **StyleIdentifier. Valor de usuario**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
El siguiente ejemplo de código muestra cómo aplicar un estilo de párrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Borders and Shading

Las fronteras están representadas por la Coleccion Fronteriza. Se trata de una colección de objetos fronterizos a los que se accede por índice o por tipo de frontera. Tipo de frontera está representado por `BorderType` enumeración. Algunos valores de la enumeración son aplicables a varios o sólo un elemento de documento. Por ejemplo, `BorderType.Bottom` es aplicable a un párrafo o celda de mesa mientras `BorderType.DiagonalDown` especifica la frontera diagonal en una celda de mesa solamente.

Tanto la colección fronteriza como cada frontera separada tienen atributos similares como color, estilo de línea, ancho de línea, distancia del texto, y sombra opcional. Están representados por propiedades del mismo nombre. Puede lograr diferentes tipos de frontera combinando valores de propiedad. Además, ambos **BorderCollection** y **Border** objetos le permiten restablecer estos valores por defecto llamando al [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) método. Tenga en cuenta que cuando las propiedades fronterizas se reasientan a valores predeterminados, la frontera es invisible.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
El [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) class contains shading atributos for document elements. Puede configurar la textura de afeitado deseada y los colores que se aplican al fondo y primer plano del elemento.

La textura de la sombra se establece con un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor de enumeración que permite la aplicación de diversos patrones al **Shading** objeto. Por ejemplo, para establecer un color de fondo para un elemento de documento, utilice el [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor y establecer el color de la sombra del primer plano según corresponda.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
El siguiente ejemplo muestra cómo aplicar las fronteras y afeitarse con un párrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Apriete a la plancha

Aspose.Words proporciona dos propiedades `ParagraphFormat.SnapToGrid` y `Font.SnapToGrid` para conseguir y establecer la propiedad del párrafo rápido a la red

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Moving the Cursor

### Detección de la posición actual del cursor

Usted puede obtener donde el cursor del constructor está actualmente posicionado en cualquier momento. El [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) propiedad devuelve el nodo que está actualmente seleccionado en este constructor. El nodo es un niño directo de un párrafo. Cualquier operación de inserción que realice utilizando `DocumentBuilder` insertará antes `DocumentBuilder.CurrentNode`. Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, `DocumentBuilder.CurrentNode` vuelve nulo.

Además, puede utilizar el [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) propiedad, que obtiene el párrafo que se selecciona actualmente en este **DocumentBuilder**. El serlow code ejemplo muestra cómo acceder al nodo actual en un constructor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Moviéndose a cualquier nodo (paragraphs y sus hijos)

Si tiene un nodo de objeto de documento, que es un párrafo o un niño directo de un párrafo, puede señalar el cursor del constructor a este nodo. Usar el [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) método para realizar esto.
El siguiente ejemplo de código muestra cómo mover una posición del cursor a un nodo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Moving to the Document Start/End

Si necesita pasar al comienzo del documento, llame [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Si necesita pasar al final del documento, llame [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Mover a una sección

Si usted está trabajando con un documento que contiene múltiples secciones, puede moverse a una sección deseada utilizando [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Este método mueve el cursor al comienzo de una sección especificada y acepta el índice de la sección requerida. Cuando el índice de sección es mayor o igual a 0, especifica un índice desde el comienzo del documento con 0 siendo la primera sección. Cuando el índice de sección es inferior a 0, especifica un índice desde el final del documento con -1 siendo la última sección. El serlow code ejemplo muestra cómo mover una posición del cursor a la sección especificada. Puede descargar el archivo de plantilla de este ejemplo desde [Aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Mover a un Header/Footer

Cuando usted necesita colocar algunos datos en una cabecera o un pie de página, debe moverse allí primero utilizando [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). El método acepta un valor de enumeración HeaderFooterType que identifica el tipo de cabecera o calzado a donde debe mover el cursor.

Si quieres crear encabezados y calzados que son diferentes para la primera página, tienes que establecer el [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) propiedad a **true**. Si quieres crear encabezados y calzados que son diferentes para páginas incluso y extrañas, necesitas establecer [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) a **true**.

Si necesitas volver a la historia principal, usa[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) para salir de la cabecera o del pie. A continuación, el ejemplo crea cabeceras y calzados en un documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Moving to a Paragraph

Uso[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) mover el cursor a un párrafo deseado en la sección actual. Usted debe pasar dos parámetros a este método: párrafoIndex (el índice del párrafo a seguir) y carácterIndex (el índice del carácter dentro del párrafo).

La navegación se realiza dentro de la historia actual de la sección actual. Es decir, si usted movió el cursor al encabezado primario de la primera sección, entonces el párrafoIndex especifica el índice del párrafo dentro de ese encabezado de esa sección.

Cuando el párrafoIndex es mayor o igual a 0, especifica un índice desde el principio de la sección con 0 siendo el primer párrafo. Cuando el párrafoIndex es inferior a 0, especifica un índice desde el final de la sección con -1 siendo el último párrafo. El índice de caracteres sólo se puede especificar como 0 para pasar al comienzo del párrafo o -1 para pasar al final del párrafo. El siguiente ejemplo de código muestra cómo mover una posición del cursor al párrafo especificado. Puede descargar el archivo de plantilla de este ejemplo desde [Aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Mover a una célula de mesa

Uso [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) si necesita mover el cursor a una celda de mesa en la sección actual. Este método acepta cuatro parámetros:

- tablaIndex - el índice de la tabla a seguir.
- rowIndex - el índice de la fila en la mesa.
- columnaIndex - el índice de la columna en la tabla.
- carácterIndex - el índice del personaje dentro de la celda.

La navegación se realiza dentro de la historia actual de la sección actual.

Para los parámetros índice, cuando el índice es mayor o igual a 0, especifica un índice desde el principio con 0 siendo el primer elemento. Cuando el índice es inferior a 0, especifica un índice desde el extremo con -1 siendo el último elemento.

Además, tenga en cuenta que el personajeIndex actualmente sólo puede especificar 0 para pasar al comienzo de la celda o -1 para moverse al final de la célula. El siguiente ejemplo de código muestra cómo mover una posición del cursor a la celda de tabla especificada. Puede descargar el archivo de plantilla de este ejemplo desde [Aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Mover a un marcador

Los marcadores se utilizan frecuentemente para marcar lugares particulares en el documento donde se deben insertar nuevos elementos. Para pasar a un marcador, utilice [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Este método tiene dos sobrecargas. El más simple no acepta nada más que el nombre del marcador donde se mueve el cursor. El siguiente ejemplo de código muestra cómo mover una posición del cursor a un marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Esta sobrecarga mueve el cursor a una posición justo después del inicio del marcador con el nombre especificado. Otra sobrecarga [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) mueve el cursor a un marcador con mayor precisión. Acepta dos parámetros booleanos adicionales:

- isStart determina si mover el cursor al principio o al final del marcador.
- isDespués determina si mover el cursor para ser después de la posición de inicio o final del marcador, o para mover el cursor para ser antes de la posición de inicio o final del marcador.

El siguiente ejemplo de código muestra cómo mover una posición del cursor hasta justo después del extremo de marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

La inserción del nuevo texto de esta manera no sustituye el texto existente del marcador. Tenga en cuenta que algunos marcadores en el documento se asignan a campos de forma. Moviéndose a tal marcador e insertando texto, inserta el texto en el código de campo de formularios. Aunque esto no invalidará el campo de forma, el texto insertado no será visible porque se convierte en parte del código de campo.

### Mover a un `Merge` Campo

A veces es posible que necesite realizar un "manual" Mail Merge utilizando `DocumentBuilder` o llenar un campo de fusión de una manera especial dentro de un Mail Merge Manejador del evento. Eso es cuando [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) podría ser útil. El método acepta el nombre del campo de fusión. Se mueve el cursor a una posición justo más allá del campo de fusión especificado y elimina el campo de fusión. El siguiente ejemplo de código muestra cómo mover el cursor a una posición justo más allá del campo de fusión especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Cómo convertir entre unidades de medición

La mayoría de las propiedades del objeto proporcionadas en Aspose.Words API que representa algunas mediciones (ancho/altura, márgenes y diversas distancias) aceptan valores en puntos (1 pulgada equivale a 72 puntos). A veces esto no es conveniente así que hay `ConvertUtil` clase que proporciona funciones de ayuda para convertir entre varias unidades de medición. Permite convertir pulgadas a puntos, puntos a pulgadas, píxeles a puntos y puntos a píxeles. Cuando los píxeles se convierten en puntos y viceversa, se puede realizar en 96 dpi (puntos por pulgada) resoluciones o en la resolución dpi especificada.

**ConvertUtil** es muy útil cuando se establecen diferentes propiedades de página porque, por ejemplo, las pulgadas son unidades de medición más habituales que los puntos. El siguiente ejemplo muestra cómo configurar las propiedades de la página en pulgadas.

El siguiente ejemplo de código muestra cómo especificar las propiedades de la página en pulgadas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
