---
title: Comparar Documentos en Java
second_title: Aspose.Words por Java
articleTitle: Comparar Documentos
linktitle: Comparar Documentos
type: docs
description: "Compare dos documentos en cualquier formato compatible y muestre los cambios de contenido. Puede aplicar opciones avanzadas al comparar usando Java."
weight: 60
url: /es/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

La comparación de documentos es un proceso que identifica los cambios entre dos documentos y contiene los cambios como revisiones. Este proceso compara dos documentos cualesquiera, incluidas las versiones de un documento específico, luego los cambios entre ambos documentos se mostrarán como revisiones en el primer documento.

El método de comparación se logra comparando palabras a nivel de carácter o a nivel de palabra. Si una palabra contiene un cambio de al menos un carácter, en el resultado, la diferencia se mostrará como un cambio de toda la palabra, no de un carácter. Este proceso de comparación es una tarea habitual en las industrias legal y financiera.

En lugar de buscar manualmente diferencias entre documentos o entre diferentes versiones de ellos, puede usar Aspose.Words para comparar documentos y obtener cambios de contenido en el formato, encabezado/pie de página, tablas y más.

En este artículo se explica cómo comparar documentos y cómo especificar propiedades de comparación avanzadas.

{{% alert color="primary" %}}

**Pruébalo en línea**

Puede comparar dos documentos en línea utilizando el [Comparación de documentos en línea](https://products.aspose.app/words/comparison) herramienta.

Tenga en cuenta que el método de comparación, que se describe a continuación, se utiliza en esta herramienta para garantizar la obtención de resultados iguales. Por lo tanto, obtendrá los mismos resultados incluso utilizando la herramienta de comparación en línea o utilizando el método de comparación en Aspose.Words.

{{% /alert %}}

## Limitaciones y Formatos de Archivo Admitidos {#limitations-and-supported-file-formats}

Comparar documentos es una característica muy compleja. Hay varias partes de la combinación de contenido que deben analizarse para reconocer todas las diferencias. La razón de esta complejidad es porque Aspose.Words tiene como objetivo obtener los mismos resultados de comparación que el algoritmo de comparación Microsoft Word.

La limitación general para dos documentos que se comparan es que no deben tener revisiones antes de llamar al método compare, ya que esta limitación existe en Microsoft Word.

{{% alert color="primary" %}}

Tenga en cuenta que puede comparar dos documentos cualesquiera dentro del [formatos de archivo admitidos](/words/java/supported-document-formats/). Básicamente, puedes comparar objetos de documentos e incluso puedes crear esos objetos desde cero sin tener ningún formato específico.

{{% /alert %}}

## Comparar Dos Documentos {#compare-two-documents}

Cuando compara documentos, las diferencias entre el último documento y el primero se muestran como revisiones del primero. Cuando modifica un documento, cada edición tendrá su propia revisión después de ejecutar el método de comparación.

Aspose.Words le permite identificar diferencias en los documentos utilizando el método [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date); esto es similar a la función de comparación de documentos Microsoft Word. Le permite verificar documentos o versiones de documentos para encontrar diferencias y cambios, incluidas modificaciones de formato como cambios de fuente, cambios de espaciado, adición de palabras y párrafos.

Como resultado de la comparación, los documentos pueden determinarse como iguales o no iguales. El término documentos "iguales" significa que el método de comparación no puede representar los cambios como revisiones. Esto significa que tanto el texto del documento como el formato del texto son iguales. Pero puede haber otras diferencias entre documentos. Por ejemplo, Microsoft Word solo admite revisiones de formato para estilos y no puede representar la inserción/eliminación de estilos. Por lo tanto, los documentos pueden tener un conjunto diferente de estilos y el método **Compare** aún no produce revisiones.

El siguiente ejemplo de código muestra cómo verificar si dos documentos son iguales o no:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

El siguiente ejemplo de código muestra cómo aplicar simplemente el método `Compare` a dos documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Especificar Opciones Avanzadas de Comparación {#specify-advanced-comparing-properties}

Hay muchas propiedades diferentes de la clase [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) que puede aplicar cuando desee comparar documentos.

Por ejemplo, Aspose.Words le permite ignorar los cambios realizados durante una operación de comparación para ciertos tipos de objetos dentro del documento original. Puede seleccionar la propiedad adecuada para el tipo de objeto, como [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), y otros al establecerlos en "verdadero".

Además, Aspose.Words proporciona la propiedad [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) con la que puede especificar si desea realizar un seguimiento de los cambios por carácter o por palabra.

Otra propiedad común es elegir en qué documento mostrar los cambios de comparación. Por ejemplo, el " Cuadro de diálogo Comparar documentos "en Microsoft Word tiene la opción "Mostrar cambios en"; esto también afecta los resultados de la comparación – Aspose.Words proporciona la propiedad [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) que sirve para este propósito.

El siguiente ejemplo de código muestra cómo establecer las propiedades de comparación avanzadas:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
