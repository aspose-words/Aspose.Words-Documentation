---
title: Comparar documentos en Java
second_title: Aspose.Words para Java
articleTitle: Comparar documentos
linktitle: Comparar documentos
type: docs
description: "Compare dos documentos en cualquier formato compatible y muestre cambios de contenido. Puede aplicar opciones avanzadas al comparar el uso Java."
weight: 60
url: /es/java/compare-documents/
---

La comparación de documentos es un proceso que identifica cambios entre dos documentos y contiene los cambios como revisiones. Este proceso compara los dos documentos, incluyendo versiones de un documento específico, y los cambios entre ambos documentos se mostrarán como revisiones en el primer documento.

El método de comparación se logra comparando palabras a nivel de caracteres o a nivel de palabras. Si una palabra contiene un cambio de al menos un personaje, en el resultado, la diferencia se mostrará como un cambio de toda la palabra, no un personaje. Este proceso de comparación es una tarea habitual en las industrias jurídicas y financieras.

En lugar de buscar manualmente diferencias entre documentos o entre versiones diferentes de ellos, puede utilizar Aspose.Words para comparar documentos y conseguir cambios de contenido en formato, cabecera/pieza, tablas y más.

Este artículo explica cómo comparar documentos y cómo especificar propiedades de comparación avanzadas.

{{% alert color="primary" %}}

**Pruebe en línea**

Puede comparar dos documentos en línea utilizando [Comparación de documentos en línea](https://products.aspose.app/words/comparison) herramienta.

Tenga en cuenta que el método de comparación, descrito a continuación, se utiliza en esta herramienta para asegurar obtener resultados iguales. Así que obtendrá los mismos resultados incluso utilizando la herramienta de comparación en línea o utilizando el método de comparación en Aspose.Words.

{{% /alert %}}

## Limitaciones y formatos de archivo compatibles {#limitations-and-supported-file-formats}

La comparación de documentos es una característica muy compleja. Hay partes variadas de combinación de contenido que necesitan ser analizadas para reconocer todas las diferencias. La razón de esta complejidad es porque Aspose.Words pretende obtener los mismos resultados de comparación que los Microsoft Word algoritmo de comparación.

La limitación general para comparar dos documentos es que no deben tener revisiones antes de llamar al método de comparación ya que esta limitación existe en Microsoft Word.

{{% alert color="primary" %}}

Tenga en cuenta que puede comparar dos documentos dentro del [Formatos de documentos compatibles](/words/es/java/supported-document-formats/). Básicamente, puede comparar objetos de documentos e incluso puede crear esos objetos desde cero sin tener ningún formato específico.

{{% /alert %}}

## Comparar dos documentos {#compare-two-documents}

Cuando compara los documentos, las diferencias de este último documento de la primera aparecen como revisiones a la primera. Cuando modifique un documento, cada edición tendrá su propia revisión después de ejecutar el método de comparación.

Aspose.Words le permite identificar diferencias de documentos utilizando [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) método – esto es similar al Microsoft Word función de comparación de documentos. Le permite comprobar documentos o versiones de documentos para encontrar diferencias y cambios, incluyendo modificaciones de formato tales como cambios de fuentes, cambios de espaciado, la adición de palabras y párrafos.

Como resultado de la comparación, los documentos pueden determinarse como iguales o no iguales. El término "igual" documentos significa que el método de comparación no es capaz de representar cambios como revisiones. Esto significa que tanto el texto como el formato de texto son los mismos. Pero puede haber otras diferencias entre documentos. Por ejemplo, Microsoft Word soporta sólo revisiones de formato para estilos, y no puede representar la inserción / eliminación de estilo. Así que los documentos pueden tener un conjunto diferente de estilos, y los **Compare** método todavía no produce revisiones.

El siguiente ejemplo de código muestra cómo comprobar si dos documentos son iguales o no:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

El siguiente ejemplo de código muestra cómo aplicar simplemente `Compare` método a dos documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Especificar opciones de comparación avanzada {#specify-advanced-comparing-properties}

Hay muchas propiedades diferentes [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) clase que se puede aplicar cuando desea comparar documentos.

Por ejemplo, Aspose.Words le permite ignorar los cambios realizados durante una operación de comparación para ciertos tipos de objetos dentro del documento original. Puede seleccionar la propiedad adecuada para el tipo de objeto, como [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), y otros por establecerlos a "true".

Además, Aspose.Words proporciona el [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) propiedad con la que puede especificar si hay que seguir los cambios por carácter o por palabra.

Otra propiedad común es una opción en la que el documento muestra cambios de comparación. Por ejemplo, el "Comparar documentos dialog box" en Microsoft Word tiene la opción "Mostrar cambios en" – esto también afecta los resultados de comparación. Aspose.Words proporciona el [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) propiedad que sirve a este propósito.

El siguiente ejemplo de código muestra cómo establecer las propiedades de comparación avanzadas:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
