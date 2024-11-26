---
title: Cómo construir una tabla a partir de DataTable en Java
second_title: Aspose.Words por Java
articleTitle: Construye una tabla a partir de DataTable
linktitle: Construye una tabla a partir de DataTable
description: "Ejemplo de completar una tabla de documentos desde una base de datos externa usando Java."
type: docs
weight: 130
url: /es/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

A menudo, su aplicación extraerá datos de una base de datos y los almacenará en forma de **DataTable**. Es posible que desee insertar fácilmente estos datos en su documento como una nueva tabla y aplicar formato rápidamente a toda la tabla.

{{% alert color="primary" %}}

Tenga en cuenta que la forma preferida de insertar datos de **DataTable** en una tabla de documentos es mediante el uso de [Mail Merge con Regiones](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). La técnica presentada en este artículo solo se sugiere si no puede crear una plantilla adecuada de antemano para fusionar datos, en otras palabras, si requiere que todo suceda mediante programación.

{{% /alert %}}

Usando Aspose.Words, puede recuperar fácilmente datos de una base de datos y almacenarlos como una tabla:

1. Cree un nuevo objeto [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) en su [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Inicie una nueva tabla usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Si queremos insertar los nombres de cada una de las columnas de nuestro **DataTable** como fila de encabezado, itere a través de cada columna de datos y escriba los nombres de las columnas en una fila de la tabla.
1. Iterar a través de cada **DataRow** en el **DataTable**:
   1. Iterar a través de cada objeto en el **DataRow**.
   1. Inserte el objeto en el documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). El método utilizado depende del tipo de objeto que se inserte, por ejemplo, [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) para texto y [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) para una matriz de bytes que representa una imagen.
   1. Al final del procesamiento de la fila de datos, también finaliza la fila creada por [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) usando [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Una vez que se hayan procesado todas las filas de **DataTable**, finalice la tabla llamando a [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Finalmente, podemos establecer el estilo de tabla deseado usando una de las propiedades de tabla apropiadas, como [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier), para aplicar formato automáticamente a toda la tabla.
   Los siguientes datos en nuestro **DataTable** se usan en este ejemplo:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

El siguiente ejemplo de código muestra cómo ejecutar el algoritmo anterior en Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Luego, se puede llamar fácilmente al método usando su **DocumentBuilder** y sus datos.

El siguiente ejemplo de código muestra cómo importar los datos de un `DataTable` e insertarlos en una nueva tabla del documento:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

La tabla que se muestra en la imagen a continuación se produce ejecutando el código anterior.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
