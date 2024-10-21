---
title: Trabajar con Texto en una tabla
second_title: Aspose.Words para C++
articleTitle: Trabajar con Texto en una tabla
linktitle: Trabajar con Texto en una tabla
description: "Reemplazar texto en una tabla en C++. Extraiga texto sin formato de una tabla o celda usando C++."
type: docs
weight: 60
url: /es/cpp/work-with-text-in-a-table/
---

Como se mencionó en artículos anteriores, una tabla generalmente contiene texto sin formato, aunque se puede colocar otro contenido, como imágenes o incluso otras tablas, en las celdas de la tabla..

Agregar texto u otro contenido a la tabla se lleva a cabo utilizando los métodos apropiados de la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) y se describe en el artículo **"Crear una tabla"**. En este artículo, hablaremos sobre cómo trabajar con texto en una tabla ya existente.

## Reemplazar texto en una tabla

La tabla, como cualquier otro nodo en Aspose.Words, tiene acceso al objeto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). Con el objeto rango de tabla, puede reemplazar texto en una tabla.

Actualmente se admite la capacidad de usar caracteres especiales al reemplazar, por lo que es posible reemplazar el texto existente con texto de varios párrafos. Para hacer esto, debe usar los metacaracteres especiales descritos en el método [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) correspondiente.

{{% alert color="primary" %}}

Normalmente, el reemplazo de texto debe realizarse a nivel de celda (por celda) o a nivel de párrafo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar todas las instancias de una cadena de texto en las celdas de una tabla completa:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Extraer Texto sin formato de una Tabla o Celda

Usando el objeto **Range**, también puede llamar a métodos en todo el rango de la tabla y extraer la tabla como texto sin formato. Para hacer esto, use la propiedad [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

El siguiente ejemplo de código muestra cómo imprimir el rango de texto de una tabla:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

La misma técnica se usa para extraer contenido solo de celdas de tabla individuales.

El siguiente ejemplo de código muestra cómo imprimir un rango de texto de elementos de fila y tabla:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Trabajar con Texto de Tabla Alternativo

Las tablas de Microsoft Word tienen `table title` y `table description` que proporcionan una representación textual alternativa de la información contenida en la tabla.

En Aspose.Words, también puede agregar un título y una descripción de la tabla utilizando las propiedades [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) y [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Estas propiedades son significativas para DOCX documentos conformes con ISO/IEC 29500. Al guardar en formatos anteriores a ISO/IEC 29500, se ignoran estas propiedades.

El siguiente ejemplo de código muestra cómo establecer las propiedades de título y descripción de una tabla:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}