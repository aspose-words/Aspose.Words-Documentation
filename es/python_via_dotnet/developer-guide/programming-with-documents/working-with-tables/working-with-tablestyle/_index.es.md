---
title: Cambiar estilo de tabla en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Aplicar estilo de tabla
linktitle: Aplicar estilo de tabla
description: "Formato avanzado de tablas C#. Crea un estilo de tabla usando Python. Aplicar estilo de tabla Python."
type: docs
weight: 80
url: /es/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Un estilo de tabla define un conjunto de formatos que se pueden aplicar fácilmente a una tabla. Los formatos como bordes, sombreado, alineación y fuente se pueden establecer en un estilo de tabla y aplicarse a muchas tablas para lograr una apariencia consistente.

Aspose.Words admite la aplicación de un estilo de tabla a una tabla y también la lectura de propiedades de cualquier estilo de tabla. Los estilos de tabla se conservan durante la carga y el guardado de las siguientes maneras:

- Los estilos de tabla en formatos DOCX y WordML se conservan al cargar y guardar en estos formatos.
- Los estilos de tabla se conservan al cargar y guardar en formato DOC (pero no en ningún otro formato)
- Al exportar a otros formatos, renderizar o imprimir, los estilos de tabla se expanden al formato directo en la tabla, por lo que se conserva todo el formato.

## Crear un estilo de tabla

El usuario puede crear un nuevo estilo y agregarlo a la colección de estilos. El método [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) se utiliza para crear un nuevo estilo de tabla.

El siguiente ejemplo de código muestra cómo crear un nuevo estilo de tabla definido por el usuario:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Copiar un estilo de tabla existente

Si es necesario, puede copiar un estilo de tabla que ya existe en un documento determinado en su colección de estilos utilizando el método `AddCopy`.

Es importante saber que con esta copia también se copian los estilos vinculados.

El siguiente ejemplo de código muestra cómo importar un estilo de un documento a otro:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Aplicar un estilo de tabla existente

Aspose.Words proporciona un [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) heredado de la clase [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). **TableStyle** facilita al usuario aplicar diferentes opciones de estilo como sombreado, relleno, sangría, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) y [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), etc.

Además, Aspose.Words proporciona la clase [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) y algunas propiedades de la clase `Table` para especificar con qué estilo de tabla trabajaremos: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) y [StyleOptions](https://reference.aspose.com/words/es/net/aspose.words.tables/table/styleoptions/).

Aspose.Words también proporciona la clase [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) que representa un formato especial aplicado a alguna área de una tabla con un estilo de tabla asignado y el [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) que representa una colección de objetos **ConditionalStyle**. Esta colección contiene un conjunto permanente de elementos que representan un elemento para cada valor del tipo de enumeración [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/). La enumeración **ConditionalStyleType** define todas las áreas de tabla posibles en las que se puede definir formato condicional en un estilo de tabla.

En este caso, se puede definir formato condicional para todas las áreas de tabla posibles definidas en el tipo de enumeración ConditionalStyleType.

El siguiente ejemplo de código muestra cómo definir el formato condicional para la fila del encabezado de la tabla:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

También puede elegir a qué partes de la tabla aplicar estilos, como la primera columna, la última columna y las filas con bandas. Se enumeran en la enumeración [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) y se aplican a través de la propiedad [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/). La enumeración **TableStyleOptions** permite una combinación bit a bit de estas características.

El siguiente ejemplo de código muestra cómo crear una nueva tabla con un estilo de tabla aplicado:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Las siguientes imágenes muestran una representación del **Table Styles** en Microsoft Word y sus correspondientes propiedades en Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Trabajar con estilos de tabla

Un estilo de tabla define un conjunto de formatos que se pueden aplicar fácilmente a una tabla. Los formatos como bordes, sombreado, alineación y fuente se pueden establecer en un estilo de tabla y aplicarse a muchas tablas para lograr una apariencia consistente.

Aspose.Words admite la aplicación de un estilo de tabla a una tabla y también la lectura de propiedades de cualquier estilo de tabla. Los estilos de tabla se conservan durante la carga y el guardado de las siguientes maneras:

- Los estilos de tabla en formatos DOCX y WordML se conservan al cargar y guardar en estos formatos.
- Los estilos de tabla se conservan al cargar y guardar en formato DOC (pero no en ningún otro formato).
- Al exportar a otros formatos, renderizar o imprimir, los estilos de tabla se expanden al formato directo en la tabla para conservar todo el formato.

Actualmente, no se pueden crear nuevos estilos de tabla. Sólo puede aplicar a una tabla estilos de tabla integrados o estilos de tabla personalizados que ya existan en el documento.

## Tome el formato del estilo de tabla y aplíquelo como formato directo

Aspose.Words también proporciona el método [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) para tomar el formato que se encuentra en un estilo de tabla y expandirlo a las filas y celdas de la tabla como formato directo. Intente combinar formato con estilo de tabla y estilo de celda.

{{% alert color="primary" %}}

Este método no anulará ningún otro formato ya aplicado a la tabla mediante un formato de fila o celda.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo expandir el formato de estilos a filas y celdas de la tabla como formato directo:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
