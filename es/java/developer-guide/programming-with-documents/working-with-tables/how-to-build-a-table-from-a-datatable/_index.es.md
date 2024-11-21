---
title: Cómo construir una tabla de una `DataTable` dentro Java
second_title: Aspose.Words para Java
articleTitle: Construir una tabla de una `DataTable`
linktitle: Construir una tabla de una `DataTable`
description: "Ejemplo de la tabla de documentos de llenado de bases de datos externas Java."
type: docs
weight: 130
url: /es/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

A menudo su aplicación extraerá datos de una base de datos y la almacenará en forma de una **DataTable**. Es posible que desee insertar fácilmente estos datos en su documento como una nueva tabla y aplicar rápidamente formato a toda la tabla.

{{% alert color="primary" %}}

Tenga en cuenta que la forma preferida de insertar datos de un **DataTable** en una tabla de documentos [Mail Merge con Regiones](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). La técnica presentada en este artículo sólo se sugiere si usted no puede crear una plantilla adecuada de antemano para combinar datos con, en otras palabras, si usted requiere que todo suceda programáticamente.

{{% /alert %}}

Uso Aspose.Words, puede recuperar fácilmente datos de una base de datos y almacenarlo como una tabla:

1. Crear un nuevo [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) objeto en su [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Iniciar una nueva tabla usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Si queremos insertar los nombres de cada una de las columnas de nuestras **DataTable** como una fila de cabecera, luego iterate a través de cada columna de datos y escriba los nombres de columna en una fila en la tabla.
1. A través de cada uno **DataRow** en el **DataTable**:
   1. Itear a través de cada objeto en el **DataRow**.
   1. Insertar el objeto en el documento utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). El método utilizado depende del tipo de objeto que se inserta por ejemplo [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) para texto y [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) para una matriz byte que representa una imagen.
   1. Al final del procesamiento de la fila de datos también termina la fila que está siendo creada por el [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) utilizando [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Una vez todas las filas de los **DataTable** han sido procesados terminar la tabla llamando [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Por último, podemos establecer el estilo de mesa deseado utilizando una de las propiedades de mesa apropiadas, como [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) para aplicar automáticamente el formato a toda la tabla.
   Los siguientes datos en nuestros **DataTable** se utiliza en este ejemplo:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

El siguiente ejemplo de código muestra cómo ejecutar el algoritmo anterior en Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

El método se puede llamar fácilmente usando su **DocumentBuilder** y datos.

El siguiente ejemplo de código muestra cómo importar los datos de un `DataTable` e insertarlo en un nuevo cuadro del documento:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

La tabla que se muestra en la imagen siguiente se produce ejecutando el código anterior.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
