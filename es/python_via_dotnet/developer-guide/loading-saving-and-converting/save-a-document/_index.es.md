---
title: Guardar un documento en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Guardar un documento
linktitle: Guardar un documento
type: docs
description: "Guarde un documento en cualquier formato compatible usando Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /es/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

La mayoría de las tareas que necesita realizar con Aspose.Words implican guardar un documento. Para guardar un documento Aspose.Words proporciona el método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) de la clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Existen sobrecargas que permiten guardar un documento en un archivo o secuencia. El documento se puede guardar en cualquier formato compatible con Aspose.Words. Para obtener la lista de todos los formatos de guardado admitidos, consulte la enumeración [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Guardar un documento en un archivo {#save-a-document-to-a-file}

Simplemente use el método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) con un nombre de archivo. Aspose.Words determinará el formato de guardado a partir de la extensión de archivo que especifique.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en un archivo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Guardar un documento en una secuencia {#save-a-document-to-a-stream}

Pase un objeto de flujo al método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Es necesario especificar explícitamente el formato de guardado al guardar en una secuencia.

El siguiente ejemplo de código muestra cómo cargar y guardar un documento en una secuencia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Guardar un documento en PCL {#save-a-document-to-pcl}

Aspose.Words admite guardar un documento en PCL (lenguaje de comandos de impresora). Aspose.Words puede guardar documentos en formato PCL 6 (PCL 6 mejorado o PCL XL). La clase [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) se puede utilizar para especificar opciones adicionales al guardar un documento en formato PCL.

El siguiente ejemplo de código muestra cómo guardar un documento en PCL usando las opciones de guardar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

