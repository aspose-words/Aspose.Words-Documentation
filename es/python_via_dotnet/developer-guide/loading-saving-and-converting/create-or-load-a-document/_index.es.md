---
title: Crear o cargar un documento en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Crear o cargar un documento
linktitle: Crear o cargar un documento
type: docs
url: /es/python-net/create-or-load-a-document/
description: "Cree un documento en blanco o cárguelo desde un archivo o secuencia usando Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Casi cualquier tarea que desee realizar con Aspose.Words implica cargar un documento. La clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) representa un documento cargado en la memoria. El documento tiene varios constructores sobrecargados que le permiten crear un documento en blanco o cargarlo desde un archivo o secuencia. El documento se puede cargar en cualquier formato de carga compatible con Aspose.Words. Para obtener la lista de todos los formatos de carga admitidos, consulte la enumeración [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Crear un nuevo documento

Llamaremos al constructor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sin parámetros para crear un nuevo documento en blanco. Si desea generar un documento mediante programación, la forma más sencilla es utilizar la clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para agregar el contenido del documento.

El siguiente ejemplo de código muestra cómo crear un documento utilizando el generador de documentos:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Tenga en cuenta los valores predeterminados:

- Un documento en blanco contiene una sección con parámetros predeterminados, un párrafo vacío y algunos estilos de documento. En realidad, este documento es el mismo que el resultado de crear el "Nuevo documento" en Microsoft Word.
- El tamaño del papel del documento es [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Cargar un documento

Para cargar un documento existente en cualquiera de los formatos [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), pase el nombre del archivo o la secuencia a uno de los constructores [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). El formato del documento cargado está determinado automáticamente por su extensión.

### Cargar desde un archivo

Pase un nombre de archivo como cadena al constructor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) para abrir un documento existente desde un archivo.

El siguiente ejemplo de código muestra cómo abrir un documento desde un archivo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Cargar desde una secuencia

Para abrir un documento desde una secuencia, simplemente pase un objeto de secuencia que contenga el documento al constructor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

El siguiente ejemplo de código muestra cómo abrir un documento desde una secuencia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
