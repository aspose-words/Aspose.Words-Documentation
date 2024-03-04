---
title: Trabajar con texto en una tabla
second_title: Aspose.Words para .NET
articleTitle: Trabajar con texto en una tabla
linktitle: Trabajar con texto en una tabla
description: "Reemplazar texto en una tabla en C#. Extraiga texto sin formato de una tabla o celda usando C#."
type: docs
weight: 60
url: /es/net/work-with-text-in-a-table/
---

Como se mencionó en artículos anteriores, una tabla generalmente contiene texto sin formato, aunque se pueden colocar otros contenidos como imágenes o incluso otras tablas en las celdas de la tabla.

La adición de texto u otro contenido a la tabla se realiza utilizando los métodos apropiados de la clase [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) y se describe en el artículo **"Crear una tabla"**. En este artículo, hablaremos sobre cómo trabajar con texto en una tabla ya existente.

## Reemplazar texto en una tabla

La tabla, como cualquier otro nodo en Aspose.Words, tiene acceso al objeto [Range](https://reference.aspose.com/words/es/net/aspose.words/range/). Usando el objeto de rango de tabla, puede reemplazar texto en una tabla.

Actualmente se admite la capacidad de utilizar caracteres especiales al reemplazar, por lo que es posible reemplazar el texto existente con texto de varios párrafos. Para hacer esto, debe utilizar los metacaracteres especiales descritos en el método [Replace](https://reference.aspose.com/words/es/net/aspose.words/range/replace/) correspondiente.

{{% alert color="primary" %}}

Normalmente, el reemplazo de texto debe realizarse a nivel de celda (por celda) o a nivel de párrafo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar todas las instancias de una cadena de texto en las celdas de una tabla completa:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Extraer texto sin formato de una tabla o celda

Con el objeto **Range**, también puede llamar a métodos en todo el rango de la tabla y extraer la tabla como texto sin formato. Para hacer esto, use la propiedad [Text](https://reference.aspose.com/words/es/net/aspose.words/range/text/).

El siguiente ejemplo de código muestra cómo imprimir el rango de texto de una tabla:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

Se utiliza la misma técnica para extraer contenido únicamente de celdas de tabla individuales.

El siguiente ejemplo de código muestra cómo imprimir un rango de texto de elementos de fila y tabla:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Trabajar con texto de tabla alternativo

Las tablas Microsoft Word tienen `table title` y `table description` que proporcionan una representación textual alternativa de la información contenida en la tabla.

En Aspose.Words, también puede agregar un título y una descripción de la tabla utilizando las propiedades [Title](https://reference.aspose.com/words/es/net/aspose.words.tables/table/title/) y [Description](https://reference.aspose.com/words/es/net/aspose.words.tables/table/description/). Estas propiedades son significativas para los documentos DOCX que cumplen con ISO/IEC 29500. Al guardar en formatos anteriores a ISO/IEC 29500, estas propiedades se ignoran.

El siguiente ejemplo de código muestra cómo establecer las propiedades de título y descripción de una tabla:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}