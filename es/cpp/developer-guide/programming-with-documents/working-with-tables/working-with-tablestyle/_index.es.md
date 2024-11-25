---
title: Cambiar el Estilo de la Tabla en Documentos de Word
second_title: Aspose.Words para C++
articleTitle: Aplicar Estilo de Tabla
linktitle: Aplicar Estilo de Tabla
description: "Formato avanzado de tablas en C++. Cree un estilo de tabla usando C++. Aplicar el estilo de tabla C++."
type: docs
weight: 80
url: /es/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Un estilo de tabla define un conjunto de formatos que se pueden aplicar fácilmente a una tabla. El formato, como los bordes, el sombreado, la alineación y la fuente, se puede configurar en un estilo de tabla y aplicarse a muchas tablas para una apariencia uniforme.

Aspose.Words admite la aplicación de un estilo de tabla a una tabla y también la lectura de propiedades de cualquier estilo de tabla. Los estilos de tabla se conservan durante la carga y el guardado de las siguientes maneras:

- Los estilos de tabla en formatos DOCX y WordML se conservan al cargar y guardar en estos formatos
- Los estilos de tabla se conservan al cargar y guardar en formato DOC (pero no en ningún otro formato)
- Al exportar a otros formatos, renderizar o imprimir, los estilos de tabla se expanden al formato directo en la tabla, por lo que se conserva todo el formato

## Crear un Estilo de Tabla

El usuario puede crear un nuevo estilo y agregarlo a la colección de estilos. El método [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) se usa para crear un nuevo estilo de tabla.

El siguiente ejemplo de código muestra cómo crear un nuevo estilo de tabla definido por el usuario:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Copiar un Estilo de Tabla Existente

Si es necesario, puede copiar un estilo de tabla que ya existe en un determinado documento en su colección de estilos utilizando el método `AddCopy`.

Es importante saber que con esta copia también se copian los estilos vinculados.

El siguiente ejemplo de código muestra cómo importar un estilo de un documento a otro documento:

EJEMPLO

## Aplicar un Estilo de Tabla Existente

Aspose.Words proporciona un [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) heredado de la clase [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** facilita al usuario aplicar diferentes opciones de estilo como sombreado, relleno, sangría, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) y [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), etc.

Además, Aspose.Words proporciona la clase [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) y algunas propiedades de la clase `Table` para especificar con qué estilo de tabla trabajaremos: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), y [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words también proporciona la clase [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) que representa el formato especial aplicado a alguna área de una tabla con un estilo de tabla asignado, y la [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) que representa una colección de **ConditionalStyle** objetos. Esta colección contiene un conjunto permanente de elementos que representan un elemento por cada valor del tipo de enumeración [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). La enumeración **ConditionalStyleType** define todas las áreas de tabla posibles en las que se puede definir el formato condicional en un estilo de tabla.

En este caso, se puede definir el formato condicional para todas las áreas de tabla posibles definidas bajo el tipo de enumeración ConditionalStyleType.

El siguiente ejemplo de código muestra cómo definir el formato condicional para la fila del encabezado de la tabla:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

También puede elegir a qué partes de la tabla aplicar estilos, como primera columna, última columna, filas con bandas. Se enumeran en la enumeración [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) y se aplican a través de la propiedad [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). La enumeración **TableStyleOptions** permite una combinación bit a bit de estas características.

El siguiente ejemplo de código muestra cómo crear una nueva tabla con un estilo de tabla aplicado:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Las siguientes imágenes muestran una representación del **Table Styles** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Tome el formato del Estilo de tabla y Aplíquelo como Formato Directo

Aspose.Words también proporciona el método [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) para tomar el formato que se encuentra en un estilo de tabla y expandirlo a las filas y celdas de la tabla como formato directo. Intente combinar el formato con el estilo de tabla y el estilo de celda.

{{% alert color="primary" %}}

Este método no anulará ningún otro formato que ya se haya aplicado a la tabla a través de un formato de fila o celda.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo expandir el formato de los estilos a las filas y celdas de la tabla como formato directo:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}