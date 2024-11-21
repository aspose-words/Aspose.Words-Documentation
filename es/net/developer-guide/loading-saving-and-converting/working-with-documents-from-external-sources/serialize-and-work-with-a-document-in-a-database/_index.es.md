---
title: Serializar documento en una base de datos
second_title: Aspose.Words para .NET
articleTitle: Serializar y trabajar con un documento en una base de datos
linktitle: Serializar y trabajar con un documento en una base de datos
description: "Convierta un documento en una matriz de bytes para trabajar con este documento en una base de datos usando C#. Puede almacenar y recuperar un documento hacia y desde la base de datos."
type: docs
weight: 10
url: /es/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Una de las tareas que quizás deba realizar cuando trabaja con documentos es almacenar y recuperar objetos **Document** hacia y desde una base de datos. Por ejemplo, esto sería necesario si estuvieras implementando cualquier tipo de sistema de gestión de contenidos. Todas las versiones anteriores de los documentos deben almacenarse en el sistema de base de datos. La capacidad de almacenar documentos en la base de datos también es extremadamente útil cuando su aplicación proporciona un servicio basado en web.

Aspose.Words ofrece la posibilidad de convertir un documento en una matriz de bytes para trabajar posteriormente con este documento en una base de datos.

## Convertir un documento a una matriz de bytes

Para almacenar un documento en una base de datos o preparar un documento para su transmisión a través de la web, a menudo es necesario serializar el documento para obtener una matriz de bytes.

Para serializar un objeto [Document](https://reference.aspose.com/words/es/net/aspose.words/document/) en Aspose.Words:

1. Guárdelo en un **MemoryStream** usando la sobrecarga del método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/) de la clase **Document**.
1. Llame al método **ToArray**, que devuelve una matriz de bytes que representa el documento en forma de bytes.

Los pasos anteriores se pueden revertir para volver a cargar los bytes en un objeto **Document**.

{{% alert color="primary" %}}

El formato de guardado seleccionado es importante para garantizar que se conserve la máxima fidelidad al guardar y volver a cargar en el objeto **Document**. Por este motivo, se sugiere utilizar una serie de formatos de archivo OOXML.

{{% /alert %}}

El siguiente ejemplo muestra cómo serializar un objeto **Document** para obtener una matriz de bytes y luego cómo deserializar la matriz de bytes para obtener un objeto **Document** nuevamente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Almacenar, leer y eliminar un documento en una base de datos

Esta sección muestra cómo guardar un documento en una base de datos y luego volver a cargarlo en un objeto `Document` para trabajar con él. Para simplificar, el nombre del archivo es la clave utilizada para almacenar y recuperar documentos de la base de datos. La base de datos contiene dos columnas. La primera columna "Nombre de archivo" se almacena como una cadena y se utiliza para identificar documentos. La segunda columna "FileContent" se almacena como un objeto `BLOB` que almacena el objeto del documento en forma de bytes.

El siguiente ejemplo de código muestra cómo configurar una conexión a una base de datos y ejecutar comandos:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

En este ejemplo, utilizamos la base de datos Microsoft Access .mdb para almacenar un documento Aspose.Words.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo guardar un documento en la base de datos, luego leer el mismo documento nuevamente y finalmente eliminar el registro que contiene el documento de la base de datos:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Guardar un documento en una base de datos

Para guardar un documento en una base de datos, conviértalo en una matriz de bytes, como se describe al principio de este artículo. Luego, guarde esta matriz de bytes en un campo de base de datos.

El siguiente ejemplo de código muestra cómo guardar un documento en la base de datos especificada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Especifique commandString, que es una expresión SQL que hace todo el trabajo:

- Para guardar un documento en la base de datos, se utiliza el comando "INSERT INTO" y se especifica una tabla junto con los valores de dos campos de registro: Nombre de archivo y Contenido de archivo. Para evitar parámetros adicionales, el nombre del archivo se toma del propio objeto **Document**. Al valor del campo `FileContent` se le asignan bytes del flujo de memoria, que contiene una representación binaria del documento almacenado.
- La línea de código restante ejecuta el comando que almacena el documento Aspose.Words en la base de datos.

### Recuperar un documento de una base de datos

Para recuperar un documento de la base de datos, seleccione el registro que contiene los datos del documento como una matriz de bytes. Luego cargue la matriz de bytes del registro en **MemoryStream** y cree un objeto **Document** que cargará el documento desde **MemoryStream**.

El siguiente ejemplo de código muestra cómo recuperar y devolver un documento de la base de datos especificada utilizando el nombre del archivo como clave para recuperar este documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

El comando SQL "SELECT * FROM" se utiliza para buscar el registro apropiado según el nombre del archivo.

{{% /alert %}}

### Eliminar un documento de una base de datos

Para eliminar un documento de la base de datos, utilice el comando SQL apropiado sin ninguna manipulación en el objeto **Document**.

El siguiente ejemplo de código muestra cómo eliminar un documento de la base de datos, utilizando el nombre del archivo para recuperar el registro:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
