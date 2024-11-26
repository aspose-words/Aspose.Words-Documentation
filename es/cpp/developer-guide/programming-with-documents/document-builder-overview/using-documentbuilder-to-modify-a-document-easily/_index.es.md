---
title: Usar DocumentBuilder para Modificar un Documento fácilmente
second_title: Aspose.Words para C++
articleTitle: Usar DocumentBuilder para Modificar un Documento fácilmente
linktitle: Usar DocumentBuilder para Modificar un Documento fácilmente
type: docs
description: "Utilice el generador de documentos para modificar un documento fácilmente en C++."
weight: 190
url: /es/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Especificación del Formato

### Formato de Fuente

El formato de fuente actual está representado por un objeto `Font` devuelto por la propiedad `DocumentBuilder.Font`. La clase `Font` contiene una amplia variedad de propiedades de fuente posibles en Microsoft Word. El siguiente ejemplo muestra cómo configurar el formato de fuente.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Formato de Párrafo

El formato de párrafo actual está representado por un objeto `ParagraphFormat` que devuelve la propiedad `DocumentBuilder.ParagraphFormat`. Este objeto encapsula varias propiedades de formato de párrafo disponibles en Microsoft Word. Puede restablecer fácilmente el formato de párrafo predeterminado al estilo normal, alineado a la izquierda, sin sangría, sin espaciado, sin bordes y sin sombreado llamando a `ParagraphFormat.ClearFormatting`. El siguiente ejemplo muestra cómo configurar el formato de párrafo.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Trabajar con Tipografía Asiática

#### Ajusta automáticamente el espacio entre texto asiático y latino, Números

Si está diseñando una plantilla con texto de Asia Oriental y latín, y desea mejorar la apariencia de la plantilla de formulario controlando los espacios entre ambos tipos de texto, puede configurar su plantilla de formulario para ajustar automáticamente los espacios entre estos dos tipos de texto. Puede usar las propiedades AddSpaceBetweenFarEastAndAlpha y AddSpaceBetweenFarEastAndDigit de la clase ParagraphFormat para lograr esto.

El siguiente ejemplo de código muestra cómo usar las propiedades `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` y `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Cambiar el Espaciado y las Sangrías de los Párrafos Asiáticos

El siguiente ejemplo de código demuestra cómo cambiar el espaciado y las sangrías de los párrafos asiáticos.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Establecer Opciones de Salto de Línea

La pestaña Tipografía asiática del cuadro de diálogo de propiedades `Paragraph` en MS Word tiene un grupo de saltos de línea. Las opciones de este grupo se pueden configurar usando FarEastLineBreakControl, WordWrap, HangingPunctuation propiedades de la clase ParagraphFormat. El ejemplo Below code muestra cómo usar estas propiedades.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Formato de Celda

El formato de celda se usa durante la creación de una tabla. Está representado por un objeto `CellFormat` devuelto por la propiedad `DocumentBuilder.CellFormat`. CellFormat encapsula varias propiedades de celda de tabla, como ancho o alineación vertical. El siguiente ejemplo muestra cómo crear una tabla que contenga una sola celda formateada.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Formato de Filas

El formato de fila actual está determinado por un objeto `RowFormat` que devuelve la propiedad `DocumentBuilder.RowFormat`. El objeto encapsula información sobre el formato de todas las filas de la tabla. El siguiente ejemplo muestra cómo crear una tabla que contenga una sola celda y aplicar formato de fila.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Formato de Lista

Aspose.Words permite la creación sencilla de listas aplicando formato de lista. DocumentBuilder proporciona la propiedad `DocumentBuilder.ListFormat` que devuelve un objeto `ListFormat`. Este objeto tiene varios métodos para iniciar y finalizar una lista y para aumentar/disminuir la sangría. Hay dos tipos generales de listas en Microsoft Word: con viñetas y numeradas.

- Para iniciar una lista con viñetas, llame a `ListFormat.ApplyBulletDefault`.
- Para iniciar una lista numerada, llame a `ListFormat.ApplyNumberDefault`.

La viñeta o el número y el formato se agregan al párrafo actual y a todos los párrafos adicionales creados con **DocumentBuilder** hasta que se llame a `ListFormat.RemoveNumbers` para detener el formato de la lista con viñetas. En los documentos de Word, las listas pueden constar de hasta nueve niveles. El formato de lista para cada nivel especifica qué viñeta o número se usa, sangría izquierda, espacio entre la viñeta y el texto, etc.

- Para aumentar el nivel de lista del párrafo actual en un nivel, llame a `ListFormat.ListIndent`.
- Para disminuir el nivel de lista del párrafo actual en un nivel, llame a `ListFormat.ListOutdent`.

Los métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel.

{{% alert color="primary" %}}

También puede usar la propiedad `ListFormat.ListLevelNumber` para obtener o establecer el nivel de lista del párrafo. Los niveles de lista están numerados 0 a 8.

{{% /alert %}}

El siguiente ejemplo muestra cómo crear una lista multinivel.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Configuración de la Página y Formato de la Sección

Las propiedades de configuración de página y sección están encapsuladas en el objeto `PageSetup` que devuelve la propiedad `DocumentBuilder.PageSetup`. El objeto contiene todos los atributos de configuración de página de una sección (margen izquierdo, margen inferior, tamaño del papel, etc.) como propiedades. El siguiente ejemplo muestra cómo establecer propiedades como el tamaño de página y la orientación para la sección actual.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Aplicar un Estilo

Algunos objetos de formato, como Font o ParagraphFormat, admiten estilos. Un único estilo integrado o definido por el usuario se representa mediante un objeto `Style` que contiene las propiedades de estilo correspondientes, como el nombre, el estilo base, la fuente y el formato de párrafo del estilo,etc.

Además, un objeto **Style** proporciona la propiedad `Style.StyleIdentifier` que devuelve un identificador de estilo independiente de la configuración regional representado por un valor de enumeración **Style.StyleIdentifier**. El punto es que los nombres de los estilos integrados en Microsoft Word están localizados para diferentes idiomas. Con un identificador de estilo, puede encontrar el estilo correcto independientemente del idioma del documento. Los valores de enumeración corresponden a los estilos integrados de Microsoft Word, como Normal, Encabezado 1, Encabezado 2, etc. A todos los estilos definidos por el usuario se les asigna el **StyleIdentifier.User value**. El siguiente ejemplo muestra cómo aplicar un estilo de párrafo.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Bordes y Sombreado

Los bordes están representados por BorderCollection. Se trata de una colección de objetos de borde a los que se accede por índice o por tipo de borde. El tipo de borde está representado por la enumeración `BorderType`. Algunos valores de la enumeración son aplicables a varios o solo a un elemento de documento. Por ejemplo, `BorderType.Bottom` se aplica a un párrafo o celda de tabla, mientras que `BorderType.DiagonalDown` especifica el borde diagonal solo en una celda de tabla.

Tanto la colección de bordes como cada borde separado tienen atributos similares, como color, estilo de línea, ancho de línea, distancia del texto y sombra opcional. Están representados por propiedades del mismo nombre. Puede lograr diferentes tipos de bordes combinando los valores de las propiedades. Además, los objetos **BorderCollection** y **Border** le permiten restablecer estos valores predeterminados llamando al método `Border.ClearFormatting`. Tenga en cuenta que cuando las propiedades del borde se restablecen a los valores predeterminados, el borde es invisible. La clase `Shading` contiene atributos de sombreado para los elementos del documento. Puede establecer la textura de sombreado deseada y los colores que se aplican al fondo y al primer plano del elemento.

La textura de sombreado se establece con un valor de enumeración `TextureIndex` que permite la aplicación de varios patrones al objeto **Shading**. Por ejemplo, para establecer un color de fondo para un elemento de documento, use el valor `TextureIndex.TextureSolid` y establezca el color de sombreado de primer plano según corresponda. El siguiente ejemplo muestra cómo aplicar bordes y sombreado a un párrafo.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Ajustar a la cuadrícula

Aspose.Words proporciona dos propiedades `ParagraphFormat.SnapToGrid` y `Font.SnapToGrid` para obtener y establecer el ajuste de la propiedad del párrafo a la cuadrícula.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Mover el Cursor

### Detectar la Posición Actual del Cursor

Puede obtener dónde se encuentra actualmente el cursor del constructor en cualquier momento. La propiedad `DocumentBuilder.CurrentNode` devuelve el nodo que está seleccionado actualmente en este generador. El nodo es un hijo directo de un párrafo. Cualquier operación de inserción que realice con `DocumentBuilder` se insertará antes de `DocumentBuilder.CurrentNode`. Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, `DocumentBuilder.CurrentNode` devuelve nulo.

Además, puede usar la propiedad `DocumentBuilder.CurrentParagraph`, que obtiene el párrafo que está seleccionado actualmente en este **DocumentBuilder**. El siguiente ejemplo muestra cómo acceder al nodo actual en un generador de documentos. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Mover a Cualquier Nodo (Párrafos y sus Hijos)

Si tiene un nodo de objeto de documento, que es un párrafo o un elemento secundario directo de un párrafo, puede apuntar el cursor del generador a este nodo. Utilice el método `DocumentBuilder.MoveTo` para realizar esto. El siguiente ejemplo muestra cómo mover una posición del cursor a un nodo especificado. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Ir al Inicio/Fin del documento

Si necesita moverse al principio del documento, llame a `DocumentBuilder.MoveToDocumentStart`. Si necesita desplazarse hasta el final del documento, llame a `DocumentBuilder.MoveToDocumentEnd`. El siguiente ejemplo muestra cómo mover la posición del cursor al principio o al final de un documento. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Mover a una Sección

Si está trabajando con un documento que contiene varias secciones, puede moverse a la sección deseada usando `DocumentBuilder.MoveToSection`. Este método mueve el cursor al principio de una sección especificada y acepta el índice de la sección requerida. Cuando el índice de la sección es mayor o igual que 0, especifica un índice desde el principio del documento, siendo 0 la primera sección. Cuando el índice de la sección es menor que 0, especifica un índice desde el final del documento, siendo -1 la última sección. El siguiente ejemplo muestra cómo mover una posición del cursor a la sección especificada. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Mover a un Encabezado/Pie de página

Cuando necesite colocar algunos datos en un encabezado o pie de página, primero debe moverse allí usando `DocumentBuilder.MoveToHeaderFooter`. El método acepta un valor de enumeración HeaderFooterType que identifica el tipo de encabezado o pie de página al que se debe mover el cursor. Si desea crear encabezados y pies de página que sean diferentes para la primera página, debe establecer la propiedad `PageSetup.DifferentFirstPageHeaderFooter` en **true**. Si desea crear encabezados y pies de página que sean diferentes para las páginas pares e impares, debe establecer `PageSetup.OddAndEvenPagesHeaderFooter` en **true**.

Si necesita volver a la historia principal, use **DocumentBuilder.MoveToSection** para salir del encabezado o pie de página. El siguiente ejemplo crea encabezados y pies de página en un documento usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Pasar a un Párrafo

Use `DocumentBuilder.MoveToParagraph` para mover el cursor al párrafo deseado en la sección actual. Debe pasar dos parámetros a este método: paragraphIndex (el índice del párrafo al que moverse) y characterIndex (el índice del carácter dentro del párrafo).

La navegación se realiza dentro de la historia actual de la sección actual. Es decir, si movió el cursor al encabezado principal de la primera sección, paragraphIndex especifica el índice del párrafo dentro de ese encabezado de esa sección.

Cuando paragraphIndex es mayor o igual que 0, especifica un índice desde el principio de la sección, siendo 0 el primer párrafo. Cuando paragraphIndex es menor que 0, especifica un índice desde el final de la sección, siendo -1 el último párrafo.

Actualmente, el índice de caracteres solo se puede especificar como 0 para ir al principio del párrafo o -1 para ir al final del párrafo. El siguiente ejemplo muestra cómo mover una posición del cursor al párrafo especificado. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Mover a una Celda de Tabla

Utilice `DocumentBuilder.MoveToCell` si necesita mover el cursor a una celda de la tabla en la sección actual. Este método acepta cuatro parámetros:

- tableIndex - el índice de la tabla a la que se moverá.
- rowIndex - el índice de la fila en la tabla.
- columnIndex - el índice de la columna en la tabla.
- characterIndex - el índice del carácter dentro de la celda.

La navegación se realiza dentro de la historia actual de la sección actual. Para los parámetros de índice, cuando el índice es mayor o igual que 0, especifica un índice desde el principio siendo 0 el primer elemento. Cuando el índice es menor que 0, especifica un índice desde el final siendo -1 el último elemento.

Además, tenga en cuenta que characterIndex actualmente solo puede especificar 0 para moverse al principio de la celda o -1 para moverse al final de la celda. El siguiente ejemplo muestra cómo mover una posición del cursor a la celda de la tabla especificada. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Mover a un marcador

Los marcadores se utilizan con frecuencia para marcar lugares particulares del documento donde se van a insertar nuevos elementos. Para desplazarse a un marcador, utilice `DocumentBuilder.MoveToBookmark`. Este método tiene dos sobrecargas. El más simple no acepta nada más que el nombre del marcador donde se moverá el cursor. El siguiente ejemplo muestra cómo mover la posición del cursor a un marcador. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Esta sobrecarga mueve el cursor a una posición justo después del inicio del marcador con el nombre especificado. Otra sobrecarga `DocumentBuilder.MoveToBookmark` mueve el cursor a un marcador con mayor precisión. Acepta dos parámetros booleanos adicionales:

- isStart determina si se mueve el cursor al principio o al final del marcador.
- isAfter determina si se mueve el cursor para que esté después de la posición inicial o final del marcador, o si se mueve el cursor para que esté antes de la posición inicial o final del marcador.

El siguiente ejemplo muestra cómo mover la posición del cursor justo después del final del marcador.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

La comparación de ambos métodos no distingue entre mayúsculas y minúsculas.

Insertar texto nuevo de esta manera no reemplaza el texto existente del marcador. Tenga en cuenta que algunos marcadores del documento están asignados a campos de formulario. Moverse a dicho marcador e insertar texto allí inserta el texto en el código del campo del formulario. Aunque esto no invalidará el campo del formulario, el texto insertado no será visible porque se convierte en parte del código del campo.

## Cómo Convertir entre Unidades de Medida

La mayoría de las propiedades de objeto proporcionadas en la API Aspose.Words que representan alguna medida (ancho / alto, márgenes y varias distancias) aceptan valores en puntos (1 pulgada equivale a 72 puntos). A veces, esto no es conveniente, por lo que existe la clase `ConvertUtil` que proporciona funciones auxiliares para convertir entre varias unidades de medida. Permite convertir pulgadas en puntos, puntos en pulgadas, píxeles en puntos y puntos en píxeles. Cuando los píxeles se convierten en puntos y viceversa, se puede realizar con resoluciones de 96 ppp (puntos por pulgada) o con la resolución de ppp especificada.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
