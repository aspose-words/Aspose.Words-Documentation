---
title: Guardar un documento en C++
second_title: Aspose.Words para C++
articleTitle: Guardar un Documento
linktitle: Guardar un Documento
type: docs
description: "Guarde un documento en cualquier formato compatible con C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /es/cpp/save-a-document/
---

La mayoría de las tareas que necesita realizar con Aspose.Words implican guardar un documento. Para guardar un documento Aspose.Words proporciona el método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) de la clase [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). El documento se puede guardar en cualquier formato de guardado compatible con Aspose.Words. Para obtener una lista de todos los formatos de guardado admitidos, consulte la enumeración [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Guardar en un archivo {#save-a-document-to-a-file}

Simplemente use el método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) con un nombre de archivo. Aspose.Words determinará el formato de guardado a partir de la extensión de archivo que especifique.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en un archivo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Guardar en una secuencia {#save-a-document-to-a-stream}

Pase un objeto de secuencia al método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Es necesario especificar el formato de guardado explícitamente al guardar en una secuencia.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en una secuencia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Guardar en PCL {#save-a-document-to-pcl}

Aspose.Words admite guardar un documento en PCL(Lenguaje de comandos de impresora). Aspose.Words puede guardar documentos en formato PCL 6 (PCL 6 Mejorado o PCL XL). La clase `PclSaveOptions` se puede utilizar para especificar opciones adicionales al guardar un documento en formato PCL.

El siguiente ejemplo de código muestra cómo guardar un documento en PCL usando las opciones de guardado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
