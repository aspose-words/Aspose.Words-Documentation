---
title: Trabajar con estilos de mesa en Java
second_title: Aspose.Words para Java
articleTitle: Apply Table Style
linktitle: Apply Table Style
description: "Formato avanzado de mesa Java. Crear un estilo de mesa Java. Introducción al formato avanzado de mesa, estilos de mesa utilizando Java."
type: docs
weight: 80
url: /es/java/working-with-tablestyle/
---

Un estilo de tabla define un conjunto de formato que se puede aplicar fácilmente a una tabla. Formato como bordes, afeitado, alineación y fuente se puede configurar en un estilo de tabla y aplicar a muchas tablas para una apariencia consistente.

Aspose.Words soporta aplicar un estilo de mesa a una mesa y también leer propiedades de cualquier estilo de mesa. Los estilos de mesa se conservan durante la carga y el ahorro de las siguientes maneras:

- Estilos de mesa en formatos DOCX y WordML se conservan al cargar y guardar estos formatos
- Los estilos de mesa se conservan al cargar y guardar en formato DOC (pero no en cualquier otro formato)
- Al exportar a otros formatos, renderizado o impresión, los estilos de tabla se expanden a formato directo en la tabla, por lo que se conserva todo formato

## Crear un estilo de mesa

El usuario puede crear un nuevo estilo y añadirlo a la colección de estilo. El [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) método se utiliza para crear un nuevo estilo de mesa.

El siguiente ejemplo de código muestra cómo crear un nuevo estilo de tabla definido por el usuario:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Copiar un estilo de mesa existente

Si es necesario, puede copiar un estilo de tabla que ya existe en un determinado documento en su colección de estilo utilizando el `AddCopy` método.

Es importante saber que con esta copia, también se copian los estilos vinculados.

El siguiente ejemplo de código muestra cómo importar un estilo de un documento a otro documento:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Aplicar un estilo de mesa existente

Aspose.Words proporciona a [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) heredado de [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) clase. **TableStyle** facilita que el usuario aplique diferentes opciones de estilo como afeitado, relleno, indentación, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) y [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), etc.

Además, Aspose.Words proporciona el [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) clase y algunas propiedades de la `Table` clase para especificar con qué estilo de mesa trabajaremos: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), y [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words también proporciona [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) clase que representa un formato especial aplicado a algún área de una tabla con un estilo de tabla asignado, y el [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) que representa una colección de **ConditionalStyle** objetos. Esta colección contiene un conjunto permanente de artículos que representan un elemento para cada valor del [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) Tipo de enumeración. El **ConditionalStyleType** La enumeración define todas las áreas de tabla posibles a las que el formato condicional puede definirse en un estilo de tabla.

En este caso, el formato condicional se puede definir para todo el área de mesa posible definida bajo el tipo de enumeración CondiciónalStyleType.

El siguiente ejemplo de código muestra cómo definir el formato condicional para la fila de encabezado de la tabla:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

También puede elegir qué piezas de mesa para aplicar estilos, como primera columna, última columna, filas de banda. Están listados en el [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) enumeration and are applied through the [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) propiedad. El **TableStyleOptions** La enumeración permite una combinación bitwise de estas características.

El siguiente ejemplo de código muestra cómo crear una nueva tabla con un estilo de tabla aplicado:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Las imágenes de abajo muestran una representación de la **Table Styles** dentro Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Tomar Formato de Estilo de Tabla y aplicarlo como Formato Directo

Aspose.Words también proporciona el [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) método para tomar formato encontrado en un estilo de mesa y lo expande en las filas y células de la tabla como formato directo. Trate de combinar formato con estilo de mesa y estilo celular.

{{% alert color="primary" %}}

Este método no anulará ningún otro formato ya aplicado a la tabla a través de una fila o formato celular.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo ampliar el formato de estilos a filas de mesa y células como formato directo:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}