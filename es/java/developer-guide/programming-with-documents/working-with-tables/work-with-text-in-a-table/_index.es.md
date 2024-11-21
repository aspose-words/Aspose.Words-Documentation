---
title: Trabajar con texto en una tabla
second_title: Aspose.Words para Java
articleTitle: Trabajar con texto en una tabla
linktitle: Trabajar con texto en una tabla
description: "Sustitúyase texto en una tabla Java. Texto largo de la placa de la tabla o la célula Java."
type: docs
weight: 60
url: /es/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Como se mencionó en artículos anteriores, una tabla generalmente contiene texto plano, aunque otros contenidos como imágenes o incluso otras tablas se pueden colocar en las celdas de mesa.

La adición de texto u otro contenido a la tabla se lleva a cabo utilizando los métodos apropiados [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) clase y se describe en la **"Crea una tabla"** artículo. En este artículo hablaremos sobre cómo trabajar con texto en una tabla ya existente.

## Reemplazar texto en una tabla

La mesa, como cualquier otro nodo. Aspose.Words, tiene acceso al [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objeto. Usando el objeto del rango de tablas, puede reemplazar el texto en una tabla.

La capacidad de utilizar caracteres especiales cuando se reemplaza actualmente es compatible, por lo que es posible sustituir el texto existente por texto multipárrafo. Para ello, es necesario utilizar los metacaractores especiales descritos en los correspondientes [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) método.

{{% alert color="primary" %}}

Por lo general, el reemplazo de texto debe hacerse a nivel celular (por célula) o a nivel de párrafo.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar todas las instancias de una cadena de texto en las celdas de una tabla completa:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Texto largo de una tabla

Usando el **Range** objeto, también puede llamar métodos sobre todo el rango de tabla y extraer la tabla como texto plano. Para hacer esto, utilice el [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) propiedad

El siguiente ejemplo de código muestra cómo imprimir el rango de texto de una tabla:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

La misma técnica se utiliza para extraer contenido de células individuales de mesa solamente.

El siguiente ejemplo de código muestra cómo imprimir un rango de texto de elementos de fila y tabla:

{{% /alert %}}

El siguiente ejemplo de código muestra cómo imprimir el rango de texto de elementos de fila y tabla.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Trabajar con el texto alternativo de la tabla

Microsoft Word las tablas tienen `table title` y `table description` que proporcionen una representación textual alternativa de la información contenida en el cuadro.

In Aspose.Words, también puede añadir un título de tabla y una descripción usando el [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) y [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) propiedades. Estas propiedades son significativas para documentos DOCX conformes a la ISO/IEC 29500. Cuando se ahorra en formatos anteriores ISO/IEC 29500, estas propiedades son ignoradas.

El siguiente ejemplo de código muestra cómo establecer las propiedades de título y descripción de una tabla:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
