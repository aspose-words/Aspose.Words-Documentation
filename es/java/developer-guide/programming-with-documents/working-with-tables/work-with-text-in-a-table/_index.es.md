---
title: Trabajar con Texto en una tabla
second_title: Aspose.Words por Java
articleTitle: Trabajar con Texto en una tabla
linktitle: Trabajar con Texto en una tabla
description: "Reemplace el texto en una tabla en Java. Extraiga texto sin formato de la Tabla o Celda usando Java."
type: docs
weight: 60
url: /es/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Como se mencionó en artículos anteriores, una tabla generalmente contiene texto sin formato, aunque se puede colocar otro contenido, como imágenes o incluso otras tablas, en las celdas de la tabla..

Agregar texto u otro contenido a la tabla se lleva a cabo utilizando los métodos apropiados de la clase [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) y se describe en el artículo **"Create a Table"**. En este artículo, hablaremos sobre cómo trabajar con texto en una tabla ya existente.

## Reemplazar texto en una tabla

La tabla, como cualquier otro nodo en Aspose.Words, tiene acceso al objeto [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). Con el objeto rango de tabla, puede reemplazar texto en una tabla.

Actualmente se admite la capacidad de usar caracteres especiales al reemplazar, por lo que es posible reemplazar el texto existente con texto de varios párrafos. Para hacer esto, debe usar los metacaracteres especiales descritos en el método [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) correspondiente.

{{% alert color="primary" %}}

Normalmente, el reemplazo de texto debe realizarse a nivel de celda (por celda) o a nivel de párrafo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar todas las instancias de una cadena de texto en las celdas de una tabla completa:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extraer Texto sin formato de una Tabla

Usando el objeto **Range**, también puede llamar a métodos en todo el rango de la tabla y extraer la tabla como texto sin formato. Para hacer esto, use la propiedad [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

El siguiente ejemplo de código muestra cómo imprimir el rango de texto de una tabla:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

La misma técnica se usa para extraer contenido solo de celdas de tabla individuales.

El siguiente ejemplo de código muestra cómo imprimir un rango de texto de elementos de fila y tabla:

{{% /alert %}}

El siguiente ejemplo de código muestra cómo imprimir el rango de texto de los elementos de fila y tabla.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Trabajar con Texto de Tabla Alternativo

Las tablas Microsoft Word tienen `table title` y `table description` que proporcionan una representación textual alternativa de la información contenida en la tabla.

En Aspose.Words, también puede agregar un título y una descripción de la tabla utilizando las propiedades [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) y [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). Estas propiedades son significativas para DOCX documentos conformes con ISO/IEC 29500. Al guardar en formatos anteriores a ISO/IEC 29500, se ignoran estas propiedades.

El siguiente ejemplo de código muestra cómo establecer las propiedades de título y descripción de una tabla:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
