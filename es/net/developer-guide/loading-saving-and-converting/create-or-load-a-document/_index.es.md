---
title: Crear o cargar un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Crear o cargar un documento
linktitle: Crear o cargar un documento
type: docs
url: /es/net/create-or-load-a-document/
description: "Cree un documento en blanco o cárguelo desde un archivo o secuencia usando C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Casi cualquier tarea que desee realizar con Aspose.Words implica cargar un documento. La clase `Document` representa un documento cargado en la memoria. El documento tiene varios constructores sobrecargados que le permiten crear un documento en blanco o cargarlo desde un archivo o secuencia. El documento se puede cargar en cualquier formato de carga compatible con Aspose.Words. Para obtener la lista de todos los formatos de carga admitidos, consulte la enumeración [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## Crear un nuevo documento {#create-a-new-document}

Llamaremos al constructor [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) sin parámetros para crear un nuevo documento en blanco. Si desea generar un documento mediante programación, la forma más sencilla es utilizar la clase [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) para agregar el contenido del documento.

El siguiente ejemplo de código muestra cómo crear un documento utilizando el generador de documentos:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Tenga en cuenta los valores predeterminados:

- Un documento en blanco contiene una sección con parámetros predeterminados, un párrafo vacío y algunos estilos de documento. En realidad, este documento es el mismo que el resultado de crear el "Nuevo documento" en Microsoft Word.
- El tamaño del papel del documento es [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Cargar un documento {#load-a-document}

Para cargar un documento existente en cualquiera de los formatos [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/), pase el nombre del archivo o la secuencia a uno de los constructores de documentos. El formato del documento cargado está determinado automáticamente por su extensión.

### Cargar desde un archivo {#load-from-a-file}

Pase un nombre de archivo como cadena al constructor de documentos para abrir un documento existente desde un archivo.

El siguiente ejemplo de código muestra cómo abrir un documento desde un archivo:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Cargar desde una secuencia {#load-from-a-stream}

Para abrir un documento desde una secuencia, simplemente pase un objeto de secuencia que contenga el documento al constructor de documentos.

El siguiente ejemplo de código muestra cómo abrir un documento desde una secuencia:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
