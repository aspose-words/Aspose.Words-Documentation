---
title: Serializar y Trabajar con un Documento en una base de datos
second_title: Aspose.Words por Java
articleTitle: Serializar y Trabajar con un Documento en una base de datos
linktitle: Serializar y Trabajar con un Documento en una base de datos
description: "Convierta un documento en una matriz de bytes para trabajar con este documento en una base de datos. Puede almacenar y recuperar un documento desde y hacia la base de datos utilizando Java."
type: docs
weight: 40
url: /es/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Una de las tareas que puede necesitar realizar al trabajar con documentos es almacenar y recuperar objetos **Document** hacia y desde una base de datos. Por ejemplo, esto sería necesario si estuviera implementando cualquier tipo de sistema de administración de contenido. Todas las versiones anteriores de los documentos deben almacenarse en el sistema de base de datos. La capacidad de almacenar documentos en la base de datos también es extremadamente útil cuando su aplicación proporciona un servicio basado en la web.

Aspose.Words proporciona la capacidad de convertir un documento en una matriz de bytes para trabajar posteriormente con este documento en una base de datos.

## Convertir un Documento en Matriz de Bytes

Para almacenar un documento en una base de datos o para preparar un documento para su transmisión a través de la web, a menudo es necesario serializar el documento para obtener una matriz de bytes.

Para serializar un objeto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) en Aspose.Words:

1. Guárdelo en un **MemoryStream** usando la sobrecarga del método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) de la clase **Document**.
1. Llame al método **ToArray**, que devuelve una matriz de bytes que representa el documento en forma de bytes.

Los pasos anteriores se pueden revertir para volver a cargar los bytes en un objeto **Document**.

{{% alert color="primary" %}}

El formato de guardado seleccionado es importante para garantizar que se conserve la máxima fidelidad al guardar y volver a cargar en el objeto **Document**. Por esta razón, se sugiere utilizar una serie de formatos de archivo OOXML.

{{% /alert %}}

El siguiente ejemplo muestra cómo serializar un objeto **Document** para obtener una matriz de bytes y, a continuación, cómo deserializar la matriz de bytes para obtener un objeto **Document** nuevamente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Almacenar, Leer y Eliminar un Documento en una base de datos

En esta sección se muestra cómo guardar un documento en una base de datos y luego cargarlo nuevamente en un objeto `Document` para trabajar con él. Para simplificar, el nombre del archivo es la clave utilizada para almacenar y recuperar documentos de la base de datos. La base de datos contiene dos columnas. La primera columna "FileName" se almacena como una cadena y se usa para identificar documentos. La segunda columna "FileContent " se almacena como un objeto `BLOB` que almacena el objeto de documento en forma de bytes.

El siguiente ejemplo de código muestra cómo configurar una conexión a una base de datos y ejecutar comandos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

En este ejemplo, usamos la base de datos MySQL para almacenar un documento Aspose.Words.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo guardar un documento en la base de datos, luego leer el mismo documento nuevamente y finalmente eliminar el registro que contiene el documento de la base de datos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Guardar un documento en una base de datos

Para guardar un documento en una base de datos, conviértalo en una matriz de bytes, como se describe al principio de este artículo. Luego, guarde esta matriz de bytes en un campo de base de datos.

El siguiente ejemplo de código muestra cómo guardar un documento en la base de datos especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Especifique commandString, que es una expresión SQL que hace todo el trabajo:

- Para guardar un documento en la base de datos, se usa el comando "INSERT INTO" y se especifica una tabla junto con los valores de dos campos de registro: FileName y FileContent. Para evitar parámetros adicionales, el nombre del archivo se toma del propio objeto **Document**. Al valor del campo `FileContent` se le asignan bytes del flujo de memoria, que contiene una representación binaria del documento almacenado.
- La línea de código restante ejecuta el comando que almacena el documento Aspose.Words en la base de datos.

### Recuperar un documento de una base de datos

Para recuperar un documento de la base de datos, seleccione el registro que contiene los datos del documento como una matriz de bytes. Luego cargue la matriz de bytes del registro en **MemoryStream** y cree un objeto **Document** que cargará el documento desde **MemoryStream**.

El siguiente ejemplo de código muestra cómo recuperar y devolver un documento de la base de datos especificada utilizando el nombre de archivo como clave para recuperar este documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

El comando SQL "SELECT * FROM " se usa para buscar el registro apropiado según el nombre del archivo.

{{% /alert %}}

### Eliminar un documento de una base de datos

Para eliminar un documento de la base de datos, use el comando SQL apropiado sin ninguna manipulación en el objeto **Document**.

El siguiente ejemplo de código muestra cómo eliminar un documento de la base de datos, utilizando el nombre de archivo para recuperar el registro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
