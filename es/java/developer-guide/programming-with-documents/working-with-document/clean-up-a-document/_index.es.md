---
title: Limpiar un documento en Java
second_title: Aspose.Words por Java
articleTitle: Limpiar un Documento
linktitle: Limpiar un Documento
description: "Elimine la información no utilizada o duplicada para reducir el tamaño de salida y el tiempo de procesamiento. Elimine estilos no utilizados, estilos integrados no utilizados, estilos duplicados o listas no utilizadas con Java."
type: docs
weight: 30
url: /es/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

A veces, es posible que deba eliminar información no utilizada o duplicada para reducir el tamaño del documento de salida y el tiempo de procesamiento.

Si bien puede encontrar y eliminar datos no utilizados, como estilos o listas, o duplicar información manualmente, será mucho más conveniente hacerlo utilizando las funciones y capacidades proporcionadas por Aspose.Words.

La clase [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) le permite especificar opciones para la limpieza de documentos. Para eliminar estilos duplicados o simplemente estilos o listas no utilizados del documento, puede usar el método [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup).

## Eliminar Información no Utilizada de un Documento

Puede utilizar las propiedades [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) y [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) para detectar y eliminar estilos marcados como "no utilizados".

Puede utilizar la propiedad [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) para detectar y eliminar listas y definiciones de listas marcadas como "no utilizadas".

El siguiente ejemplo de código muestra cómo eliminar solo los estilos no utilizados de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Eliminar Información Duplicada de un Documento

También puede usar la propiedad [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) para sustituir todos los estilos duplicados por el original y eliminar duplicados de un documento.

El siguiente ejemplo de código muestra cómo eliminar estilos duplicados de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
