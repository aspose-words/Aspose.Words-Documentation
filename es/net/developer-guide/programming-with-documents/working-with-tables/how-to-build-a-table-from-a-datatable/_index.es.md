---
title: Cómo construir una tabla a partir de un DataTable en C#
second_title: Aspose.Words para .NET
articleTitle: Construir una tabla a partir de un DataTable
linktitle: Construir una tabla a partir de un DataTable
description: "Ejemplo de llenado de una tabla de documentos desde una base de datos externa usando C#."
type: docs
weight: 120
url: /es/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

A menudo, su aplicación extraerá datos de una base de datos y los almacenará en forma de **DataTable**. Puede insertar fácilmente estos datos en su documento como una nueva tabla y aplicar formato rápidamente a toda la tabla.

{{% alert color="primary" %}}

Tenga en cuenta que la forma preferida de insertar datos de un **DataTable** en una tabla de documentos es mediante [Mail Merge con regiones](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). La técnica presentada en este artículo solo se sugiere si no puede crear una plantilla adecuada de antemano para fusionar datos; en otras palabras, si necesita que todo suceda mediante programación.

{{% /alert %}}

Con Aspose.Words, puede recuperar fácilmente datos de una base de datos y almacenarlos como una tabla:

1. Cree un nuevo objeto **DocumentBuilder** en su **Document**.
1. Inicie una nueva tabla usando **DocumentBuilder**.
1. Si queremos insertar los nombres de cada una de las columnas de nuestro **DataTable** como una fila de encabezado, repita cada columna de datos y escriba los nombres de las columnas en una fila de la tabla.
1. Repita cada **DataRow** en el **DataTable**:
  1. Repita cada objeto en **DataRow**.
  1. Inserte el objeto en el documento usando **DocumentBuilder**. El método utilizado depende del tipo de objeto que se inserta, por ejemplo, **DocumentBuilder.Writeln** para texto y **DocumentBuilder.InsertImage** para una matriz de bytes que representa una imagen.
  1. Al final del procesamiento del **DataRow**, también finalice la fila que está creando el **DocumentBuilder** mediante **DocumentBuilder.EndRow**.
1. Una vez que se hayan procesado todas las filas del **DataTable**, finalice la tabla llamando a **DocumentBuilder.EndTable**.
1. Finalmente, podemos configurar el estilo de tabla deseado usando una de las propiedades de tabla apropiadas, como **Table.StyleIdentifier**, para aplicar formato automáticamente a toda la tabla.

El método **ImportTableFromDataTable** acepta un objeto **DocumentBuilder**, el **DataTable** que contiene los datos y una bandera que especifica si el encabezado de columna del **DataTable** está incluido en la parte superior de la tabla. Este método crea una tabla a partir de estos parámetros utilizando la posición y el formato actuales del constructor. Proporciona un método para importar datos desde `DataTable` e insertarlos en una nueva tabla usando DocumentBuilder.

En este ejemplo se utilizan los siguientes datos de nuestro **DataTable**:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

El siguiente ejemplo de código muestra cómo ejecutar el algoritmo anterior en Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Luego, el método se puede invocar fácilmente utilizando su **DocumentBuilder** y sus datos.

El siguiente ejemplo de código muestra cómo importar los datos de un `DataTable` e insertarlos en una nueva tabla del documento:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
