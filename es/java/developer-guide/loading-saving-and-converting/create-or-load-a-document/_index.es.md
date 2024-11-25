---
title: Crear o cargar un documento en Java
second_title: Aspose.Words por Java
articleTitle: Crear o Cargar un Documento
linktitle: Crear o Cargar un Documento
type: docs
weight: 10
url: /es/java/create-or-load-a-document/
description: "Aspose.Words le permite crear un documento en blanco o cargarlo desde un archivo o secuencia usando Java."
timestamp: 2024-01-27-14-07-04
---

Casi cualquier tarea que desee realizar con Aspose.Words implica cargar un documento. La clase `Document` representa un documento cargado en la memoria. El documento tiene varios constructores sobrecargados que le permiten crear un documento en blanco o cargarlo desde un archivo o secuencia. El documento se puede cargar en cualquier formato de carga compatible con Aspose.Words. Para obtener una lista de todos los formatos de carga admitidos, consulte la enumeración [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## Crear un nuevo Documento {#create-a-new-document}

Llamaremos al constructor [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sin parámetros para crear un nuevo documento en blanco. Si desea generar un documento mediante programación, la forma más sencilla es utilizar la clase [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) para agregar el contenido del documento.

El siguiente ejemplo de código muestra cómo crear un documento utilizando el generador de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta los valores predeterminados:

- Un documento en blanco contiene una sección con parámetros predeterminados, un párrafo vacío, algunos estilos de documento. En realidad, este documento es el mismo que el resultado de crear el" Nuevo documento " en Microsoft Word.
- El tamaño del papel del documento es [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Cargar un Documento

Para cargar un documento existente en cualquiera de los formatos [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), pase el nombre del archivo o la secuencia a uno de los constructores de documentos. El formato del documento cargado se determina automáticamente por su extensión.

### Cargar desde un archivo {#load-from-a-file}

Pase un nombre de archivo como una cadena al constructor del documento para abrir un documento existente desde un archivo.

El siguiente ejemplo de código muestra cómo abrir un documento desde un archivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Cargar desde una secuencia {#load-from-a-stream}

Para abrir un documento desde una secuencia, simplemente pase un objeto de secuencia que contenga el documento al constructor del documento.

El siguiente ejemplo de código muestra cómo abrir un documento desde una secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
