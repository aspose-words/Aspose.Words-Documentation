---
title: Guardar un documento en Java
second_title: Aspose.Words por Java
articleTitle: Guardar un Documento
linktitle: Guardar un Documento
type: docs
description: "Guarde un documento en cualquier formato compatible con Java."
weight: 20
url: /es/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

La mayoría de las tareas que necesita realizar con Aspose.Words implican guardar un documento. Para guardar un documento Aspose.Words proporciona el método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) de la clase [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). El documento se puede guardar en cualquier formato de guardado compatible con Aspose.Words. Para obtener una lista de todos los formatos de guardado admitidos, consulte la enumeración [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Guardar en un archivo {#save-a-document-to-a-file}

Simplemente use el método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) con un nombre de archivo. Aspose.Words determinará el formato de guardado a partir de la extensión de archivo que especifique.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en un archivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Guardar en una secuencia {#save-a-document-to-a-stream}

Pase un objeto de secuencia al método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Es necesario especificar el formato de guardado explícitamente al guardar en una secuencia.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en una secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Guardar en PCL {#save-a-document-to-pcl}

Aspose.Words admite guardar un documento en PCL (Lenguaje de comandos de la impresora). Aspose.Words puede guardar documentos en formato PCL 6 (PCL 6 mejorado o PCL XL). La clase `PclSaveOptions` se puede utilizar para especificar opciones adicionales al guardar un documento en el formato PCL.

El siguiente ejemplo de código muestra cómo guardar un documento en PCL usando las opciones de guardado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
