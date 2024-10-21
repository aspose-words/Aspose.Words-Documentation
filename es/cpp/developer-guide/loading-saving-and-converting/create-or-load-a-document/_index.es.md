---
title: Crear o cargar un documento en C++
second_title: Aspose.Words para C++
articleTitle: Crear o Cargar un Documento
linktitle: Crear o Cargar un Documento
type: docs
description: "Cree un documento en blanco o cárguelo desde un archivo o secuencia usando C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /es/cpp/create-or-load-a-document/
---

Casi cualquier tarea que desee realizar con Aspose.Words implica cargar un documento. La clase `Document` representa un documento cargado en la memoria. El documento tiene varios constructores sobrecargados que le permiten crear un documento en blanco o cargarlo desde un archivo o secuencia. El documento se puede cargar en cualquier formato de carga compatible con Aspose.Words. Para obtener una lista de todos los formatos de carga admitidos, consulte la enumeración [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Crear un nuevo Documento {#create-a-new-document}

Llamaremos al constructor [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) sin parámetros para crear un nuevo documento en blanco. Si desea generar un documento mediante programación, la forma más sencilla es utilizar la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) para agregar el contenido del documento.

El siguiente ejemplo de código muestra cómo crear un documento utilizando el generador de documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Tenga en cuenta los valores predeterminados:

- Un documento en blanco contiene una sección con parámetros predeterminados, un párrafo vacío, algunos estilos de documento. En realidad, este documento es el mismo resultado de crear el" Nuevo documento " en Microsoft Word.
- El tamaño del papel del documento es [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Cargar un Documento

Para cargar un documento existente en cualquiera de los formatos `LoadFormat`, pase el nombre del archivo o la secuencia a uno de los constructores de documentos. El formato del documento cargado se determina automáticamente por su extensión.

### Cargar desde un archivo {#load-from-a-file}

Pase un nombre de archivo como una cadena al constructor del documento para abrir un documento existente desde un archivo.

El siguiente ejemplo de código muestra cómo abrir un documento desde un archivo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Cargar desde una secuencia {#load-from-a-stream}

Para abrir un documento desde una secuencia, simplemente pase un objeto de secuencia que contenga el documento al constructor del documento.

El siguiente ejemplo de código muestra cómo abrir un documento desde una secuencia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
