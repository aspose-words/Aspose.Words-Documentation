---
title: Crear o Cargar un documento en Java
second_title: Aspose.Words para Java
articleTitle: Crear o Cargar un documento
linktitle: Crear o Cargar un documento
type: docs
weight: 10
url: /es/java/create-or-load-a-document/
description: "Aspose.Words le permite crear un documento en blanco o cargarlo desde un archivo o flujo utilizando Java."
---

Casi cualquier tarea que desee realizar con Aspose.Words implica cargar un documento. El `Document` la clase representa un documento cargado en memoria. El documento tiene varios constructores sobrecargados que le permiten crear un documento en blanco o cargarlo desde un archivo o flujo. El documento se puede cargar en cualquier formato de carga soportado por Aspose.Words. Para la lista de todos los formatos de carga soportados, vea la [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) enumeración.

## Crear un nuevo documento {#create-a-new-document}

Llamaremos a la [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) constructor sin parámetros para crear un nuevo documento en blanco. Si quieres generar un documento programáticamente, la forma más simple es usar el [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) clase para añadir contenido de documentos.

El siguiente ejemplo de código muestra cómo crear un documento usando el constructor de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta los valores predeterminados:

- Un documento en blanco contiene una sección con parámetros predeterminados, un párrafo vacío, algunos estilos de documentos. En realidad este documento es el mismo que el resultado de la creación del "Nuevo documento" en Microsoft Word.
- El tamaño del documento es [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Cargar un documento

Cargar un documento existente en cualquiera de los [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formatos, pasar el nombre del archivo o la secuencia en uno de los constructores del documento. El formato del documento cargado se determina automáticamente por su extensión.

### Carga de un archivo {#load-from-a-file}

Pase un nombre de archivo como una cadena al constructor de documentos para abrir un documento existente de un archivo.

El siguiente ejemplo de código muestra cómo abrir un documento de un archivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Carga de un arroyo {#load-from-a-stream}

Para abrir un documento de una secuencia, simplemente pasar un objeto de flujo que contiene el documento en el constructor de documentos.

El siguiente ejemplo de código muestra cómo abrir un documento desde una secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
