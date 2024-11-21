---
title: Guardar un documento en Java
second_title: Aspose.Words para Java
articleTitle: Guardar un documento
linktitle: Guardar un documento
type: docs
description: "Guardar un documento en cualquier formato compatible Java."
weight: 20
url: /es/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

La mayoría de las tareas que necesita realizar con Aspose.Words implica guardar un documento. Para guardar un documento Aspose.Words proporciona el [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) método del [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase. El documento se puede guardar en cualquier formato guardado apoyado por Aspose.Words. Para la lista de todos los formatos compatibles, vea la [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeración.

## Guardar en un archivo {#save-a-document-to-a-file}

Simplemente utilice el [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) método con nombre de archivo. Aspose.Words determinará el formato guardado de la extensión de archivo que especifique.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento a un archivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Guardar en una corriente {#save-a-document-to-a-stream}

Pasa un objeto de flujo al [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) método. Es necesario especificar el formato guardado explícitamente al guardar un flujo.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento a una secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Guardar en PCL {#save-a-document-to-pcl}

Aspose.Words soporta guardar un documento en PCL (Printer Command Language). Aspose.Words puede guardar documentos en formato PCL 6 (PCL 6 mejorado o PCL XL). El `PclSaveOptions` clase se puede utilizar para especificar opciones adicionales al guardar un documento en el formato PCL.

El siguiente ejemplo de código muestra cómo guardar un documento a PCL utilizando opciones de ahorro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
