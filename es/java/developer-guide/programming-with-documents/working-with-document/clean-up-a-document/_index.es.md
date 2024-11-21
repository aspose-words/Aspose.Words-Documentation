---
title: Limpiar un documento en Java
second_title: Aspose.Words para Java
articleTitle: Limpiar un documento
linktitle: Limpiar un documento
description: "Eliminar información no utilizada o duplicada para reducir el tamaño de la salida y el tiempo de procesamiento. Eliminar estilos no utilizados, estilos incorporados no utilizados, estilos duplicados o listas no utilizadas usando Java."
type: docs
weight: 30
url: /es/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que necesite eliminar información no utilizada o duplicada para reducir el tamaño del documento de salida y el tiempo de procesamiento.

Si bien puede encontrar y eliminar datos no utilizados, tales como estilos o listas, o duplicar la información manualmente, será mucho más conveniente hacerlo utilizando características y capacidades proporcionadas por Aspose.Words.

El [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) clase le permite especificar opciones para la limpieza de documentos. Para eliminar estilos duplicados o simplemente estilos o listas no utilizados del documento, puede utilizar el [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) método.

## Eliminar la información no utilizada de un documento

Puedes usar el [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) y [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) propiedades para detectar y eliminar estilos marcados como "no utilizados".

Puedes usar el [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) propiedad para detectar y eliminar listas y definiciones de lista que están marcadas como "no utilizadas".

El siguiente ejemplo de código muestra cómo eliminar sólo estilos no utilizados de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Eliminar la información duplicada de un documento

También puede utilizar el [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) propiedad para sustituir todos los estilos duplicados con el original y eliminar duplicados de un documento.

El siguiente ejemplo de código muestra cómo eliminar estilos duplicados de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
