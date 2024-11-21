---
title: Guardar un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Guardar un documento
linktitle: Guardar un documento
type: docs
description: "Guarde un documento en cualquier formato compatible usando C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /es/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

La mayoría de las tareas que necesita realizar con Aspose.Words implican guardar un documento. Para guardar un documento Aspose.Words proporciona el método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/) de la clase [Document](https://reference.aspose.com/words/es/net/aspose.words/document/). Hay sobrecargas que permiten guardar un documento en un archivo, secuencia u objeto ASP.NET HttpResponse para enviarlo a un navegador cliente. El documento se puede guardar en cualquier formato compatible con Aspose.Words. Para obtener la lista de todos los formatos de guardado admitidos, consulte la enumeración [SaveFormat](https://reference.aspose.com/words/es/net/aspose.words/saveformat/).

## Guardar en un archivo {#save-a-document-to-a-file}

Simplemente use el método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/) con un nombre de archivo. Aspose.Words determinará el formato de guardado a partir de la extensión de archivo que especifique.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en un archivo:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Guardar en una secuencia {#save-a-document-to-a-stream}

Pase un objeto de flujo al método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/). Es necesario especificar explícitamente el formato de guardado al guardar en una secuencia.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en una secuencia:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Enviar un documento a un navegador de cliente {#sending-a-document-to-a-client-browser}

Para enviar un documento a un navegador cliente, utilice una sobrecarga especial que requiere cuatro parámetros: nombre de archivo, formato de guardado, tipo de guardado y un objeto ASP.NET HttpResponse. La forma en que se presentará el documento al usuario está representada por la enumeración [ContentDisposition](https://reference.aspose.com/words/es/net/aspose.words/contentdisposition/), que determina si el documento enviado al navegador proporcionará una opción para abrirse directamente en el navegador o en la aplicación asociada con la extensión del archivo.

El siguiente ejemplo de código muestra cómo enviar un documento al navegador del cliente desde un código ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Esta sobrecarga del método `Save` no está disponible cuando se utiliza la DLL de perfil de cliente .NET. Esta DLL se encuentra en la carpeta **net3.5_ClientProfile**. El perfil de cliente .NET excluye ensamblados como **System.Web**, por lo tanto, **HttpResponse** no está disponible. Esto es enteramente por diseño.

Esto puede manifestarse como un error:

**"Sin sobrecarga, el método 'Guardar' toma '4' parámetros".**

Si necesita utilizar Aspose.Words en una aplicación ASP.NET, se recomienda utilizar la DLL .NET 2.0 donde esté disponible la sobrecarga correcta, como se describe en este artículo.

## Guardar en PCL {#save-a-document-to-pcl}

Aspose.Words admite guardar un documento en PCL (lenguaje de comandos de impresora). Aspose.Words puede guardar documentos en formato PCL 6 (PCL 6 mejorado o PCL XL). La clase `PclSaveOptions` se puede utilizar para especificar opciones adicionales al guardar un documento en formato PCL.

El siguiente ejemplo de código muestra cómo guardar un documento en PCL usando las opciones de guardar:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Ver también

- Información sobre el objeto ASP.NET [Respuesta HTTP](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
