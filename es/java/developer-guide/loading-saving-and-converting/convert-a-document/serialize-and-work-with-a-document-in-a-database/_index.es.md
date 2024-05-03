---
title: Serializar y trabajar con un documento en una base de datos
second_title: Aspose.Words para Java
articleTitle: Serializar y trabajar con un documento en una base de datos
linktitle: Serializar y trabajar con un documento en una base de datos
description: "Convertir un documento en una matriz de byte para trabajar con este documento en una base de datos. Puede almacenar y recuperar un documento a y desde la base de datos utilizando Java."
type: docs
weight: 40
url: /es/java/serialize-and-work-with-a-document-in-a-database/
---

Una de las tareas que puede necesitar hacer cuando trabajar con documentos es almacenar y recuperar **Document** objetos a y desde una base de datos. Por ejemplo, esto sería necesario si estuviera implementando cualquier tipo de sistema de gestión de contenidos. Todas las versiones anteriores de los documentos deben almacenarse en el sistema de bases de datos. La capacidad de almacenar documentos en la base de datos también es extremadamente útil cuando su aplicación proporciona un servicio basado en la web.

Aspose.Words proporciona la capacidad de convertir un documento en una matriz de byte para trabajos posteriores con este documento en una base de datos.

## Convertir un documento en Byte Array

Para almacenar un documento en una base de datos o para preparar un documento para la transmisión a través de la web, a menudo es necesario serializar el documento para obtener una matriz de byte.

Para serializar a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto en Aspose.Words:

1. Guárdalo a un **MemoryStream** usando el [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) sobrecarga del método **Document** clase.
1. Llama a la **ToArray** método, que devuelve una serie de bytes que representan el documento en forma byte.

Los pasos arriba entonces se pueden revertir para cargar los bytes de nuevo en un **Document** objeto.

{{% alert color="primary" %}}

El formato de ahorro seleccionado es importante para asegurar que la fidelidad más alta se mantenga al guardar y recargar en el **Document** objeto. Por esta razón, se sugiere utilizar una serie de formatos de archivo OOXML.

{{% /alert %}}

El ejemplo a continuación muestra cómo serializar un **Document** objeto para obtener una matriz de byte, y luego cómo deserializar la matriz de byte para obtener un **Document** objeto de nuevo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Almacenar, leer y eliminar un documento en una base de datos

Esta sección muestra cómo guardar un documento en una base de datos y luego cargarlo de nuevo en un `Document` objeto para trabajar con él. Para la simplicidad, el nombre de archivo es la clave utilizada para almacenar y recoger documentos de la base de datos. La base de datos contiene dos columnas. La primera columna "FileName" se almacena como una cuerda y se utiliza para identificar documentos. La segunda columna "FileContent" se almacena como `BLOB` objeto que almacena el objeto de documento en forma de byte.

El siguiente ejemplo de código muestra cómo establecer una conexión a una base de datos y ejecutar comandos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

En este ejemplo, utilizamos la base de datos MySQL para almacenar una Aspose.Words documento.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo guardar un documento en la base de datos, luego leer el mismo documento de nuevo, y finalmente eliminar el registro que contiene el documento de la base de datos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Guardar un documento en una base de datos

Para guardar un documento en una base de datos convertir este documento a una serie de bytes, como se describe al comienzo de este artículo. Entonces, guarda esta matriz de byte en un campo de base de datos.

El siguiente ejemplo de código muestra cómo guardar un documento en la base de datos especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Especifique comandoString, que es una expresión SQL que hace todo el trabajo:

- Para guardar un documento en la base de datos, se utiliza el comando "INSERT INTO" y una tabla especificada junto con los valores de dos campos de registro: FileName y FileContent. Para evitar parámetros adicionales, el nombre de archivo se toma del **Document** objeto mismo. El `FileContent` valor de campo se asignan bytes del flujo de memoria, que contiene una representación binaria del documento almacenado.
- La línea restante de código ejecuta el comando que almacena el Aspose.Words documento en la base de datos.

### Recuperar un documento de una base de datos

Para recuperar un documento de la base de datos, seleccione el registro que contiene los datos del documento como un conjunto de bytes. Luego carga el array byte desde el registro en **MemoryStream** y crear un **Document** objeto que cargará el documento del **MemoryStream**.

El siguiente ejemplo de código muestra cómo recuperar y devolver un documento de la base de datos especificada utilizando el nombre de archivo como clave para buscar este documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

El comando SQL "SELECT * DESDE" se utiliza para buscar el registro apropiado basado en el nombre del archivo.

{{% /alert %}}

### Eliminar un documento de una base de datos

Para eliminar un documento de la base de datos, utilice el comando SQL apropiado sin ninguna manipulación en la base **Document** objeto.

El siguiente ejemplo de código muestra cómo eliminar un documento de la base de datos, utilizando el nombre del archivo para obtener el registro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
